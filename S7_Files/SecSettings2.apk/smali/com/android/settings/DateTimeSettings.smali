.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$1;,
        Lcom/android/settings/DateTimeSettings$2;,
        Lcom/android/settings/DateTimeSettings$3;,
        Lcom/android/settings/DateTimeSettings$SettingsObserver;,
        Lcom/android/settings/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static resources:Landroid/content/res/Resources;


# instance fields
.field private category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

.field private mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

.field private mDatePref:Landroid/support/v7/preference/Preference;

.field private mDualclock:Landroid/support/v7/preference/PreferenceScreen;

.field private mDummyDate:Ljava/util/Calendar;

.field private mFirstId:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondId:I

.field private mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

.field private mTime24Pref:Landroid/support/v7/preference/Preference;

.field private mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

.field private mTimePref:Landroid/support/v7/preference/Preference;

.field private mTimeZone:Landroid/support/v7/preference/Preference;

.field private mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

.field private mTzHidden1:Z

.field private mTzHidden2:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/DateTimeSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 935
    new-instance v0, Lcom/android/settings/DateTimeSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$2;-><init>()V

    .line 934
    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1015
    new-instance v0, Lcom/android/settings/DateTimeSettings$3;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$3;-><init>()V

    .line 1014
    sput-object v0, Lcom/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 138
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 141
    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    .line 730
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettings$1;-><init>(Lcom/android/settings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    return-void
.end method

.method private applyEDMDateTimeChangePolicy()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 307
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "firstRun"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 308
    .local v7, "isFirstRun":Z
    const-string/jumbo v8, "device_policy"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 311
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v7, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    const-string/jumbo v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 316
    .local v1, "autoEnabled":Z
    const-string/jumbo v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 318
    .local v2, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 319
    const-string/jumbo v11, "content://com.sec.knox.provider/DateTimePolicy"

    const-string/jumbo v12, "isDateTimeChangeEnalbed"

    .line 318
    invoke-static {v8, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 320
    .local v6, "isDateTimeChangeEnabled":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 321
    if-ne v6, v10, :cond_3

    const/4 v3, 0x1

    .line 322
    .local v3, "dateTimeChangeEnabled":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 331
    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 332
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 334
    .local v0, "activePhone":I
    const/4 v8, 0x4

    if-lt v0, v8, :cond_5

    .line 335
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 336
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 337
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 338
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 339
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 305
    .end local v0    # "activePhone":I
    :cond_1
    :goto_1
    return-void

    .line 320
    .end local v3    # "dateTimeChangeEnabled":Z
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "dateTimeChangeEnabled":Z
    goto :goto_0

    .line 321
    .end local v3    # "dateTimeChangeEnabled":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dateTimeChangeEnabled":Z
    goto :goto_0

    .line 323
    :cond_4
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 324
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 325
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 326
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, v9}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 327
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 341
    .restart local v0    # "activePhone":I
    :cond_5
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_6

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 342
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_7

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 343
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 344
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, v10}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 345
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v8, v10

    .line 341
    goto :goto_2

    :cond_7
    move v8, v10

    .line 342
    goto :goto_3

    :cond_8
    move v9, v10

    .line 343
    goto :goto_4

    .line 347
    .end local v0    # "activePhone":I
    :cond_9
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v8

    if-nez v8, :cond_1

    .line 348
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_a

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 349
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_b

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 350
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_c

    :goto_7
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 351
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, v10}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 352
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_a
    move v8, v10

    .line 348
    goto :goto_5

    :cond_b
    move v8, v10

    .line 349
    goto :goto_6

    :cond_c
    move v9, v10

    .line 350
    goto :goto_7
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 520
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 521
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 522
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 523
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 524
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 525
    const/16 v1, 0x7f4

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 526
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 518
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 623
    :catch_0
    move-exception v0

    .line 624
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

    .line 689
    const v3, 0x7f08012e

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 691
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 695
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 697
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 698
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 699
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 706
    :cond_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timezone"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 707
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 708
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object p0

    .line 720
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 727
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :goto_2
    return-object p0

    .line 703
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 721
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 722
    .local v1, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v3, "DateTimeSettings"

    const-string/jumbo v4, "Ill-formatted timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 713
    .end local v1    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :cond_4
    :goto_3
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 714
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 723
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    .line 724
    .local v0, "ioe":Ljava/io/IOException;
    const-string/jumbo v3, "DateTimeSettings"

    const-string/jumbo v4, "Unable to read timezones.xml file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 717
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
    .locals 10
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "includeName"    # Z

    .prologue
    const/4 v3, 0x1

    .line 656
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 659
    .local v5, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "ZZZZ"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, "gmtFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 661
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "gmtString":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 665
    .local v0, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 666
    .local v4, "l":Ljava/util/Locale;
    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v8

    if-ne v8, v3, :cond_0

    .line 668
    .local v3, "isRtl":Z
    :goto_0
    if-eqz v3, :cond_1

    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 667
    :goto_1
    invoke-virtual {v0, v2, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    .line 670
    if-nez p1, :cond_2

    .line 671
    return-object v2

    .line 666
    .end local v3    # "isRtl":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 668
    .restart local v3    # "isRtl":Z
    :cond_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_1

    .line 675
    :cond_2
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "zzzz"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 676
    .local v6, "zoneNameFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 677
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 679
    .local v7, "zoneNameString":Ljava/lang/String;
    const-string/jumbo v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 680
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    invoke-static {v8, v9}, Lcom/android/settings/DateTimeSettings;->getTimeZoneName(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    .line 683
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private initUI()V
    .locals 14

    .prologue
    const v13, 0x7f0b0871

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    .line 186
    .local v6, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v6, :cond_0

    .line 187
    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 189
    :cond_0
    const v8, 0x7f080051

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 192
    const-string/jumbo v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 193
    .local v1, "autoTimeEnabled":Z
    const-string/jumbo v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 195
    .local v2, "autoTimeZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eq v1, v2, :cond_1

    .line 196
    move v2, v1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "auto_time_zone"

    if-eqz v1, :cond_8

    move v8, v9

    .line 197
    :goto_0
    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    :cond_1
    const-string/jumbo v8, "auto_time"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 203
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 205
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 208
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "firstRun"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 210
    .local v4, "isFirstRun":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 214
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v8, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 215
    const-string/jumbo v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    .line 216
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v4, :cond_9

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimeZonePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 221
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v11, 0x7f0b1125

    invoke-virtual {v8, v11}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 222
    const-string/jumbo v8, "phone_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "auto_time_zone"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    const/4 v2, 0x0

    .line 230
    .end local v2    # "autoTimeZoneEnabled":Z
    :goto_1
    const-string/jumbo v8, "time"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    .line 231
    const-string/jumbo v8, "24 hour"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    .line 232
    const-string/jumbo v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    .line 233
    const-string/jumbo v8, "date"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    .line 235
    const-string/jumbo v8, "dualclock_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/PreferenceScreen;

    .line 244
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-nez v8, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 248
    :cond_3
    const-string/jumbo v8, "oversea"

    const-string/jumbo v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 249
    .local v5, "isRoamingArea":Z
    if-nez v5, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0af2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 250
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "sText":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v10}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 260
    .end local v7    # "sText":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_4

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 264
    :cond_4
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_b

    move v8, v10

    :goto_3
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 265
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_c

    move v8, v10

    :goto_4
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 266
    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_d

    move v8, v10

    :goto_5
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 268
    const-string/jumbo v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 269
    if-eqz v1, :cond_5

    .line 270
    const-string/jumbo v8, "date"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 271
    const-string/jumbo v8, "time"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 273
    const-string/jumbo v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    .line 276
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 284
    const-string/jumbo v8, "category_international_roaming_time_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    .line 285
    const-string/jumbo v8, "time_zone_recommend"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    .line 286
    const-string/jumbo v8, "time_display_scheme_setting"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    .line 288
    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 289
    if-eqz v4, :cond_6

    .line 290
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v8, :cond_6

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 295
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndAvail()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 301
    :cond_7
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->refresRoaming()V

    .line 183
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

    .line 226
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "isFirstRun":Z
    :cond_9
    const-string/jumbo v8, "wifi_only_category"

    invoke-virtual {p0, v8}, Lcom/android/settings/DateTimeSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 255
    .end local v2    # "autoTimeZoneEnabled":Z
    .restart local v5    # "isRoamingArea":Z
    :cond_a
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    .line 256
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mDualclock:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_b
    move v8, v9

    .line 264
    goto/16 :goto_3

    :cond_c
    move v8, v9

    .line 265
    goto/16 :goto_4

    :cond_d
    move v8, v9

    .line 266
    goto/16 :goto_5

    .line 296
    :cond_e
    iput-boolean v9, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 297
    iget-object v8, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    .line 298
    const-string/jumbo v8, "SettingsPreference"

    const-string/jumbo v9, "Not in roaming state"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 616
    const-string/jumbo v2, "time_12_24"

    .line 617
    if-eqz p1, :cond_0

    const-string/jumbo v0, "24"

    .line 615
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 614
    return-void

    .line 617
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
    .line 629
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 631
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 632
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 633
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 634
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 636
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 637
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 628
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

    .line 642
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 644
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 645
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 646
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 647
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 648
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide v6, 0x1160d1b4800L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 650
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 651
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 641
    :cond_0
    return-void
.end method

.method private showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V
    .locals 2
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "preferenceGroup"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p3, "isShow"    # Z

    .prologue
    .line 750
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 751
    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 752
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 754
    :cond_1
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method private timeUpdated(Z)V
    .locals 2
    .param p1, "is24Hour"    # Z

    .prologue
    .line 603
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "timeChanged":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
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
    .line 891
    const-string/jumbo v0, "0"

    .line 892
    .local v0, "current_slot":Ljava/lang/String;
    const-string/jumbo v1, "gsm.sim.selectnetwork"

    const-string/jumbo v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    const-string/jumbo v0, "0"

    .line 900
    :goto_0
    return-object v0

    .line 894
    :cond_0
    const-string/jumbo v1, "gsm.sim.selectnetwork"

    const-string/jumbo v2, "CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    const-string/jumbo v0, "1"

    goto :goto_0

    .line 897
    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public isDataRoaming()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 829
    const-string/jumbo v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "simState":Ljava/lang/String;
    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1

    .line 833
    :cond_0
    return v4
.end method

.method public isDataRoamingSecondary()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 838
    const-string/jumbo v1, "gsm.sim.state"

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v3, "UNKNOWN"

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "simState2":Ljava/lang/String;
    const-string/jumbo v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1

    .line 842
    :cond_0
    return v4
.end method

.method public isSlot1CdmaActive()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 882
    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    iget v5, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v6, "9"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 883
    .local v1, "cdmaCardStatus":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 884
    .local v0, "cdmaActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 885
    .local v2, "isSlotSwitched":Z
    const-string/jumbo v4, "SettingsPreference"

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

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v3

    .line 883
    .end local v0    # "cdmaActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "cdmaActive":Z
    goto :goto_0

    .line 887
    .restart local v2    # "isSlotSwitched":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public isSlot1GsmActive()Z
    .locals 6

    .prologue
    .line 863
    const/16 v1, 0x9

    .line 864
    .local v1, "gsmCardStatus":I
    const-string/jumbo v3, "gsm.sim.currentcardstatus"

    iget v4, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v5, "9"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 866
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 867
    .local v2, "isSlotSwitched":Z
    const-string/jumbo v3, "SettingsPreference"

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

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    if-eqz v0, :cond_1

    .end local v2    # "isSlotSwitched":Z
    :goto_1
    return v2

    .line 865
    .end local v0    # "gsmActive":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "gsmActive":Z
    goto :goto_0

    .line 869
    .restart local v2    # "isSlotSwitched":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSlot2GsmActive()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 873
    const-string/jumbo v4, "gsm.sim.currentcardstatus"

    iget v5, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v6, "9"

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 874
    .local v1, "gsmCardStatus":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 875
    .local v0, "gsmActive":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getSlotSelectionInformation()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 876
    .local v2, "isSlotSwitched":Z
    const-string/jumbo v4, "SettingsPreference"

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

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    if-eqz v0, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v3

    .line 874
    .end local v0    # "gsmActive":Z
    .end local v2    # "isSlotSwitched":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "gsmActive":Z
    goto :goto_0

    .line 878
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
    .line 599
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 598
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettings;->resources:Landroid/content/res/Resources;

    .line 180
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 173
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 19
    .param p1, "id"    # I

    .prologue
    .line 478
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 479
    .local v11, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 514
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 481
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 482
    .local v13, "mCalendar":Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 483
    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v13, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 484
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    .line 485
    .local v16, "minDate":J
    invoke-virtual {v13}, Ljava/util/Calendar;->clear()V

    .line 486
    const/16 v4, 0x7f4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    invoke-virtual {v13, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 487
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 488
    .local v14, "maxDate":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    .line 489
    .local v12, "currentTimezone":Ljava/util/TimeZone;
    const-string/jumbo v4, "America/Sao_Paulo"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 490
    .local v10, "brasilia":Ljava/util/TimeZone;
    const-string/jumbo v4, "America/Santiago"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    .line 492
    .local v18, "santiago":Ljava/util/TimeZone;
    invoke-virtual {v12, v10}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    :cond_0
    const-wide/32 v4, 0x36ee80

    sub-long v16, v16, v4

    .line 495
    :cond_1
    new-instance v2, Lcom/samsung/android/app/SemDatePickerDialog;

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 498
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 499
    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 500
    const/4 v4, 0x5

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v4, p0

    .line 495
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    .line 501
    .local v2, "d":Lcom/samsung/android/app/SemDatePickerDialog;
    invoke-virtual {v2}, Lcom/samsung/android/app/SemDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 502
    return-object v2

    .line 504
    .end local v2    # "d":Lcom/samsung/android/app/SemDatePickerDialog;
    .end local v10    # "brasilia":Ljava/util/TimeZone;
    .end local v12    # "currentTimezone":Ljava/util/TimeZone;
    .end local v13    # "mCalendar":Ljava/util/Calendar;
    .end local v14    # "maxDate":J
    .end local v16    # "minDate":J
    .end local v18    # "santiago":Ljava/util/TimeZone;
    :pswitch_1
    new-instance v3, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 508
    const/16 v5, 0xb

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 509
    const/16 v5, 0xc

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    .line 506
    const v5, 0x7f0f0298

    move-object/from16 v6, p0

    .line 504
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;ILcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 511
    .local v3, "t":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v3}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 512
    return-object v3

    .line 479
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
    .line 418
    const-string/jumbo v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    return-void

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 424
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 425
    invoke-static {v0, p2, p3, p4}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 416
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 389
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 393
    const-string/jumbo v1, "auto_time"

    .line 392
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    const/4 v3, 0x0

    .line 392
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 388
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 451
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "auto_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 453
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 454
    .local v0, "autoEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "auto_time"

    .line 455
    if-eqz v0, :cond_3

    move v3, v4

    .line 454
    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "auto_time_zone"

    if-eqz v0, :cond_4

    move v3, v4

    .line 457
    :goto_1
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->initUI()V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1002dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v0, :cond_1

    const/16 v5, 0x3e8

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v6, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 473
    .end local v0    # "autoEnabled":Z
    :cond_2
    :goto_2
    return v4

    .restart local v0    # "autoEnabled":Z
    :cond_3
    move v3, v5

    .line 455
    goto :goto_0

    :cond_4
    move v3, v5

    .line 458
    goto :goto_1

    .line 462
    .end local v0    # "autoEnabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v3, "auto_zone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 463
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 465
    .local v1, "autoZoneEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "auto_time_zone"

    if-eqz v1, :cond_6

    move v3, v4

    .line 464
    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_7

    :goto_4
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 468
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    goto :goto_2

    :cond_6
    move v3, v5

    .line 465
    goto :goto_3

    :cond_7
    move v5, v4

    .line 466
    goto :goto_4

    .line 470
    .end local v1    # "autoZoneEnabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v3, "24 hour"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 471
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v3, :cond_1

    .line 558
    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 559
    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 588
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3

    .line 561
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v3, :cond_2

    .line 563
    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 564
    invoke-virtual {p0, v5}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 566
    :cond_2
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    if-ne p1, v3, :cond_4

    .line 567
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 568
    .local v2, "is24Hour":Z
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->set24Hour(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 570
    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->timeUpdated(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f1002e2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v2, :cond_3

    const/16 v3, 0x3e8

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 574
    .end local v2    # "is24Hour":Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 575
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 576
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 578
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.app.irsettings"

    .line 579
    const-string/jumbo v5, "com.sec.android.app.irsettings.TimeZoneRecommend"

    .line 578
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 585
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->showTimeDisplaySchemeDialog()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 360
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 362
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 374
    new-instance v1, Lcom/android/settings/DateTimeSettings$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/DateTimeSettings$SettingsObserver;-><init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 377
    const-string/jumbo v2, "auto_time"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings;->mSettingsObserver:Lcom/android/settings/DateTimeSettings$SettingsObserver;

    const/4 v4, 0x0

    .line 376
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->refresRoaming()V

    .line 359
    return-void
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 433
    const-string/jumbo v1, "auto_time"

    invoke-direct {p0, v1}, Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 439
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 440
    invoke-static {v0, p2, p3}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 431
    :cond_1
    return-void
.end method

.method public refresRoaming()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 904
    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 905
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneRcmndBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 907
    iput-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    .line 908
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZoneRecommend:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->timeZoneDisplaySchemeBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    iput-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 918
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    .line 919
    const-string/jumbo v0, "SettingsPreference"

    const-string/jumbo v1, "remove TimeDisplayScheme menu in GMT +8:00"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden1:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 924
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 903
    :cond_3
    :goto_1
    return-void

    .line 913
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->mTzHidden2:Z

    .line 914
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeDisplayScheme:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/DateTimeSettings;->showPreference(Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/PreferenceGroup;Z)V

    .line 915
    const-string/jumbo v0, "SettingsPreference"

    const-string/jumbo v1, "remove TimeDisplayScheme menu not in roaming"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 928
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 929
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings;->category_international_roaming:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method showTimeDisplaySchemeDialog()V
    .locals 3

    .prologue
    .line 592
    const v1, 0x7f0b0ab9

    invoke-static {v1}, Lcom/samsung/android/settings/TimeDisplaySchemeSettings;->newInstance(I)Lcom/samsung/android/settings/TimeDisplaySchemeSettings;

    move-result-object v0

    .line 593
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public timeZoneDisplaySchemeBlocked()Z
    .locals 6

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 848
    .local v1, "tzBlocked":Z
    const/4 v0, 0x0

    .line 849
    .local v0, "offset":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 850
    .local v2, "zone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v0, v3, 0x3e8

    .line 851
    const-string/jumbo v3, "SettingsPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeZoneDisplaySchemeBlocked time zone offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 854
    const/4 v1, 0x1

    .line 859
    :goto_0
    return v1

    .line 856
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public timeZoneRcmndAvail()Z
    .locals 14

    .prologue
    .line 769
    const/4 v1, 0x0

    .line 770
    .local v1, "chinaArea":Z
    const-string/jumbo v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mFirstId:I

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "opNumCdma":Ljava/lang/String;
    const-string/jumbo v11, "gsm.operator.numeric"

    iget v12, p0, Lcom/android/settings/DateTimeSettings;->mSecondId:I

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 772
    .local v5, "opNumGsm":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 773
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1GsmActive()Z

    move-result v9

    .line 774
    .local v9, "slot1GsmActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v10

    .line 776
    .local v10, "slot2GsmActive":Z
    const/4 v4, 0x0

    .local v4, "opNumCdmaInt":I
    const/4 v6, 0x0

    .line 778
    .local v6, "opNumGsmInt":I
    const/4 v8, 0x1

    .line 781
    .local v8, "serviceState":I
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 783
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 784
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 790
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    .line 791
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 793
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x5

    if-lt v11, v12, :cond_2

    .line 794
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 796
    :cond_2
    const/16 v11, 0x1cc

    if-eq v4, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v4, v11, :cond_5

    .line 797
    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 800
    :cond_4
    const-string/jumbo v11, "SettingsPreference"

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

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string/jumbo v11, "SettingsPreference"

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

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    const/16 v12, 0x64

    if-lt v11, v12, :cond_6

    .line 804
    const/4 v11, 0x1

    return v11

    .line 786
    :catch_0
    move-exception v2

    .line 787
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 796
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5
    const/16 v11, 0x1cc

    if-eq v6, v11, :cond_3

    const/16 v11, 0x1c7

    if-ne v6, v11, :cond_4

    goto :goto_1

    .line 807
    :cond_6
    if-nez v0, :cond_8

    if-nez v9, :cond_7

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isDataRoamingSecondary()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 808
    :cond_7
    const/4 v11, 0x1

    return v11

    .line 810
    :cond_8
    const/4 v11, 0x0

    return v11
.end method

.method public timeZoneRcmndBlocked()Z
    .locals 6

    .prologue
    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, "timezoneRcmndBlocked":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot1CdmaActive()Z

    move-result v0

    .line 817
    .local v0, "cdmaActive":Z
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->isSlot2GsmActive()Z

    move-result v1

    .line 818
    .local v1, "gsm2Active":Z
    const-string/jumbo v3, "SettingsPreference"

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

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string/jumbo v3, "SettingsPreference"

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

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_2

    .line 822
    :cond_1
    const/4 v2, 0x1

    .line 825
    :cond_2
    return v2
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 398
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 399
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 404
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/support/v7/preference/Preference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTimeZone:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/settings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mTime24Pref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V

    .line 397
    return-void
.end method
