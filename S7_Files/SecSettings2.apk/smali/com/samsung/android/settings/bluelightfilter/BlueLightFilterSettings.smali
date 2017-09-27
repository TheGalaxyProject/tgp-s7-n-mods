.class public Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "BlueLightFilterSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;
.implements Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;,
        Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sBlueLightFilterOnOff:I

.field private static sBlueLightFilterSchedule:I


# instance fields
.field private mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

.field private mBlueLightFilterDesc:Landroid/preference/Preference;

.field private mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

.field private mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

.field private mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

.field private mBlueLightFilterTimeType:I

.field private mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

.field private mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

.field private mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLocationOn:Z

.field private final mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    .line 527
    new-instance v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$1;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 61
    return-void
.end method

.method private showLocationOnDialog()V
    .locals 4

    .prologue
    .line 395
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    const/4 v2, 0x1

    .line 395
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 397
    const v2, 0x7f0b0591

    .line 395
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 398
    new-instance v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$2;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    const v3, 0x7f0b1540

    .line 395
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 413
    new-instance v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$3;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    const v3, 0x7f0b0592

    .line 395
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 420
    new-instance v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$4;-><init>(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;)V

    .line 395
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 435
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 394
    return-void
.end method

.method private updatePreferenceStatus()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter_type"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 440
    .local v0, "blueLightFilterType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter_scheduled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 442
    .local v1, "isBlueLightFilterScheduled":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 445
    if-ne v0, v2, :cond_1

    .line 446
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 438
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateScheduledStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_type"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 463
    .local v0, "blueLightFilterType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_scheduled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 464
    .local v1, "isBlueLightFilterScheduled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "location_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    .line 465
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v5, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "blue_light_filter_scheduled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    :cond_0
    return-void

    .line 463
    .end local v1    # "isBlueLightFilterScheduled":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterScheduled":Z
    goto :goto_0

    :cond_2
    move v2, v3

    .line 464
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 102
    const/16 v0, 0x2e

    return v0
.end method

.method public getStringFromMills(J)Ljava/lang/String;
    .locals 5
    .param p1, "mills"    # J

    .prologue
    .line 375
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x5a0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 376
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 377
    .local v0, "c":Ljava/util/Calendar;
    long-to-int v2, p1

    div-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 378
    long-to-int v2, p1

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .end local v0    # "c":Ljava/util/Calendar;
    .local v1, "time":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 381
    .end local v1    # "time":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "time":Ljava/lang/String;
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v8, 0x7f080030

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    .line 122
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    const-string/jumbo v8, "blue_light_filter_turn_on_now"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    .line 123
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string/jumbo v8, "blue_light_filter_seekbar"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    .line 127
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "blue_light_filter_opacity"

    const/4 v11, 0x5

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    .line 128
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v8, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    .line 130
    const-string/jumbo v8, "blue_light_filter_desc"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterDesc:Landroid/preference/Preference;

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateScheduledStatus()V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_type"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "blueLightFilterType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_scheduled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v2, 0x1

    .line 137
    .local v2, "isBlueLightFilterScheduled":Z
    :goto_1
    const-string/jumbo v8, "blue_light_filter_turn_on_as_scheduled"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    .line 138
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const-string/jumbo v8, "blue_light_filter_auto_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    .line 142
    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    const/4 v8, 0x2

    if-ne v0, v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 143
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V

    .line 145
    const-string/jumbo v8, "blue_light_filter_user_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    .line 146
    iget-object v9, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v9, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 147
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference$OnClickListener;)V

    .line 149
    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    .line 150
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "blue_light_filter_on_time"

    const-wide/16 v12, 0x474

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 153
    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_on_time"

    const-wide/16 v10, 0x474

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 155
    .local v6, "onTime":J
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "blue_light_filter_off_time"

    const-wide/16 v10, 0x1a4

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 156
    .local v4, "offTime":J
    cmp-long v8, v6, v4

    if-ltz v8, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0589

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "summary":Ljava/lang/String;
    :goto_4
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 160
    if-nez v2, :cond_0

    .line 161
    const-string/jumbo v8, "blue_light_filter_auto_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    .line 162
    const-string/jumbo v8, "blue_light_filter_user_schedule"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    .line 166
    :cond_0
    const/4 v8, 0x1

    if-eq v0, v8, :cond_1

    .line 167
    const-string/jumbo v8, "blue_light_filter_on_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v8, "blue_light_filter_off_time"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removePreference(Ljava/lang/String;)V

    .line 172
    :cond_1
    new-instance v8, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 113
    return-void

    .line 120
    .end local v0    # "blueLightFilterType":I
    .end local v1    # "isBlueLightFilterOn":Z
    .end local v2    # "isBlueLightFilterScheduled":Z
    .end local v3    # "summary":Ljava/lang/String;
    .end local v4    # "offTime":J
    .end local v6    # "onTime":J
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto/16 :goto_0

    .line 135
    .restart local v0    # "blueLightFilterType":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isBlueLightFilterScheduled":Z
    goto/16 :goto_1

    .line 142
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 146
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 156
    .restart local v4    # "offTime":J
    .restart local v6    # "onTime":J
    :cond_6
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 303
    .local v7, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 305
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_on_time"

    const-wide/16 v4, 0x474

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 306
    .local v8, "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x5a0

    cmp-long v2, v8, v2

    if-gez v2, :cond_0

    .line 307
    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 308
    long-to-int v2, v8

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 312
    :goto_0
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 315
    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 316
    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    .line 312
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 318
    .local v0, "t":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 319
    return-object v0

    .line 310
    .end local v0    # "t":Lcom/samsung/android/app/SemTimePickerDialog;
    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 321
    .end local v8    # "time":J
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_off_time"

    const-wide/16 v4, 0x1a4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 322
    .restart local v8    # "time":J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x5a0

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    .line 323
    long-to-int v2, v8

    div-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xb

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 324
    long-to-int v2, v8

    rem-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v7, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 328
    :goto_1
    new-instance v1, Lcom/samsung/android/app/SemTimePickerDialog;

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 331
    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 332
    const/16 v3, 0xc

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    .line 328
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 334
    .local v1, "t2":Lcom/samsung/android/app/SemTimePickerDialog;
    invoke-virtual {v1}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 335
    return-object v1

    .line 326
    .end local v1    # "t2":Lcom/samsung/android/app/SemTimePickerDialog;
    :cond_1
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->setListening(Z)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BlueLightFilter"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 215
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 211
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 255
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 256
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "blue_light_filter"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    .line 258
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0b058f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 260
    :cond_0
    return v3

    :cond_1
    move v2, v4

    .line 256
    goto :goto_0

    .line 262
    .end local v1    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 263
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "blue_light_filter_type"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "selectedType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "location_mode"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v4, v3

    :cond_3
    iput-boolean v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    .line 267
    if-ne v0, v6, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    .line 276
    .end local v0    # "selectedType":I
    :goto_1
    return v3

    .line 270
    .restart local v0    # "selectedType":I
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->onClick()V

    goto :goto_1

    .line 273
    .end local v0    # "selectedType":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "blue_light_filter_scheduled"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    goto :goto_1

    .line 278
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    .line 242
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removeDialog(I)V

    .line 243
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showDialog(I)V

    .line 249
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iput v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    .line 246
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->removeDialog(I)V

    .line 247
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showDialog(I)V

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V
    .locals 5
    .param p1, "selected"    # Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100174

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterSchedule:I

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "detail":I
    iget-object v3, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    .line 358
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mIsLocationOn:Z

    if-nez v1, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->showLocationOnDialog()V

    .line 363
    :goto_1
    const/4 v0, 0x1

    .line 368
    :cond_0
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateRadioButtonStatus(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V

    .line 369
    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterSchedule:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 352
    return-void

    :cond_1
    move v1, v2

    .line 356
    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "blue_light_filter_type"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 366
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 177
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 179
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings$SettingsObserver;->setListening(Z)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updateScheduledStatus()V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->updatePreferenceStatus()V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    .line 185
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnNow:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 188
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    if-eqz v4, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter_opacity"

    const/4 v8, 0x5

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, "nValue":I
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setProgress(I)V

    .line 191
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterSeekBar:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSeekBarPreference;->setEnabled(Z)V

    .line 193
    .end local v3    # "nValue":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter_type"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, "blueLightFilterType":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "blue_light_filter_scheduled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    .line 196
    .local v2, "isBlueLightFilterScheduled":Z
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 197
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTurnOnAsScheduled:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-eqz v4, :cond_3

    .line 200
    iget-object v7, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v0, v9, :cond_7

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 202
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-eqz v4, :cond_4

    .line 203
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne v0, v5, :cond_8

    :goto_3
    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 207
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "BlueLightFilter"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 176
    return-void

    .line 184
    .end local v0    # "blueLightFilterType":I
    .end local v1    # "isBlueLightFilterOn":Z
    .end local v2    # "isBlueLightFilterScheduled":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto :goto_0

    .line 194
    .restart local v0    # "blueLightFilterType":I
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "isBlueLightFilterScheduled":Z
    goto :goto_1

    :cond_7
    move v4, v6

    .line 200
    goto :goto_2

    :cond_8
    move v5, v6

    .line 203
    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 220
    const-string/jumbo v1, "BlueLightFilterSettings"

    const-string/jumbo v2, "onStart()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 225
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStart()V

    .line 219
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 230
    const-string/jumbo v1, "BlueLightFilterSettings"

    const-string/jumbo v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 235
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 229
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100172

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterOnOff:I

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->sBlueLightFilterOnOff:I

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 388
    return-void

    :cond_1
    move v0, v1

    .line 389
    goto :goto_0
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/widget/SemTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v10, 0x0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 282
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 283
    mul-int/lit8 v6, p2, 0x3c

    add-int/2addr v6, p3

    int-to-long v4, v6

    .line 285
    .local v4, "time":J
    iget v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterTimeType:I

    if-nez v6, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_on_time"

    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 287
    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOnTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    .end local v4    # "time":J
    :cond_0
    :goto_0
    return-void

    .line 290
    .restart local v4    # "time":J
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_off_time"

    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "blue_light_filter_on_time"

    const-wide/16 v8, 0x474

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 292
    .local v2, "onTime":J
    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f0b0589

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "summary":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterOffTime:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 292
    .end local v1    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->getStringFromMills(J)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "summary":Ljava/lang/String;
    goto :goto_1
.end method

.method public updateRadioButtonStatus(Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;)V
    .locals 3
    .param p1, "selected"    # Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterAutoSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterSettings;->mBlueLightFilterUserSchedule:Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluelightfilter/BlueLightFilterRadioButtonPreference;->setChecked(Z)V

    goto :goto_0
.end method
