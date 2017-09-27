.class public Lcom/samsung/android/settings/GeneralDeviceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "GeneralDeviceSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GeneralDeviceSettings$1;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$2;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$3;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$4;,
        Lcom/samsung/android/settings/GeneralDeviceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mBatterySettingsPref:Landroid/preference/PreferenceScreen;

.field mContext:Landroid/content/Context;

.field private mDiagnosticInfo:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMemorySettingsPref:Landroid/preference/PreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mStorageSettingsPref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GeneralDeviceSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GeneralDeviceSettings;Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$2;-><init>()V

    .line 376
    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 387
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/GeneralDeviceSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GeneralDeviceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 112
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$1;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 526
    new-instance v0, Lcom/samsung/android/settings/GeneralDeviceSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$4;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 59
    return-void
.end method

.method private setDiagnostic(Z)V
    .locals 5
    .param p1, "v"    # Z

    .prologue
    .line 514
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    .line 515
    .local v2, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 516
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v1, "i2":Landroid/content/Intent;
    const-string/jumbo v3, "diagnostic_info_changed"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 513
    return-void

    .line 514
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "i2":Landroid/content/Intent;
    .end local v2    # "value":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "value":I
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    new-instance v4, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 235
    .local v1, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$AccountSettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 238
    const v4, 0x7f0b1146

    iput v4, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 240
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-nez v4, :cond_0

    .line 241
    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 242
    .local v2, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "menu"

    const-string/jumbo v5, "backup"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 246
    const v4, 0x7f0b0a96

    iput v4, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 249
    .end local v2    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_0
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 250
    .local v3, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iput-object v0, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 253
    const v4, 0x7f0b17a3

    iput v4, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 255
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 256
    if-eqz v2, :cond_1

    .line 257
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 259
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 261
    iget-object v4, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 263
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v3    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "sSalesCode":Ljava/lang/String;
    const v7, 0x7f080078

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->addPreferencesFromResource(I)V

    .line 134
    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 138
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 139
    const-string/jumbo v7, "battery_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    .line 140
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 141
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mBatterySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 142
    const-string/jumbo v7, "storage_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    .line 143
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mStorageSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 145
    const-string/jumbo v7, "memory_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    .line 146
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 147
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mMemorySettingsPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 154
    :goto_0
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    .line 155
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_0

    .line 156
    iget-object v9, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 157
    const-string/jumbo v10, "samsung_errorlog_agree"

    .line 156
    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v9, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mDiagnosticInfo:Landroid/preference/SwitchPreference;

    new-instance v9, Lcom/samsung/android/settings/GeneralDeviceSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GeneralDeviceSettings$5;-><init>(Lcom/samsung/android/settings/GeneralDeviceSettings;)V

    invoke-virtual {v7, v9}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_1

    .line 176
    const-string/jumbo v7, "reset_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 178
    :cond_1
    const/4 v0, 0x0

    .line 179
    .local v0, "c":Landroid/content/Context;
    const/4 v4, 0x0

    .line 180
    .local v4, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 182
    .local v1, "collectionString":Ljava/lang/String;
    const-string/jumbo v6, "com.sec.android.app.setupwizard"

    .line 183
    .local v6, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 186
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v6, v9}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v9, "diagnostic_terms_vzw"

    const-string/jumbo v10, "string"

    invoke-virtual {v4, v9, v10, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    .end local v0    # "c":Landroid/content/Context;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 198
    const-string/jumbo v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 197
    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 199
    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isGuestUser(Landroid/content/Context;)Z

    move-result v7

    .line 197
    if-eqz v7, :cond_5

    .line 200
    :cond_4
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 203
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 204
    :cond_6
    const-string/jumbo v7, "device_info_contact_us"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 208
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v9, "CscFeature_Common_SupportSamsungAdId"

    invoke-virtual {v7, v9, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    .line 209
    const-string/jumbo v7, "samsung_ad_id"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 213
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAMSUNG_MARKETING_INFO"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 214
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Common_ConfigMarketInfoVariation"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Disable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 213
    if-nez v7, :cond_9

    .line 215
    iget-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v7

    .line 213
    if-eqz v7, :cond_a

    .line 216
    :cond_9
    const-string/jumbo v7, "marketing_information"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 219
    :cond_a
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "device_info_contact_us"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    .line 220
    const-string/jumbo v7, "samsung_ad_id"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "marketing_information"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_b

    .line 221
    const-string/jumbo v7, "support"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 225
    :cond_b
    new-instance v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 125
    return-void

    .line 149
    .end local v1    # "collectionString":Ljava/lang/String;
    .end local v6    # "vzwPackageName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v7, "battery_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v7, "storage_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v7, "memory_settings"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move v7, v8

    .line 156
    goto/16 :goto_1

    .line 191
    .restart local v1    # "collectionString":Ljava/lang/String;
    .restart local v6    # "vzwPackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 192
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "GeneralDeviceSettings"

    const-string/jumbo v9, "error getting resource"

    invoke-static {v7, v9, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 188
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 189
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "GeneralDeviceSettings"

    const-string/jumbo v9, "error getting activity of create package context"

    invoke-static {v7, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    const-string/jumbo v7, "device_info_report_diagnostics_info"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/GeneralDeviceSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "GeneralManagement"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 299
    const-string/jumbo v8, "memory_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 298
    if-eqz v8, :cond_5

    .line 301
    :cond_0
    const-string/jumbo v8, "GeneralDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is clicked"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 303
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v7

    .line 304
    .local v7, "smartManagerPkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 306
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 307
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "battery_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 308
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_BATTERY"

    .line 314
    .local v0, "action":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 317
    .local v6, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_4

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 318
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    .line 348
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    .line 309
    .local v0, "action":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "storage_settings"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 310
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_STORAGE"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 312
    .local v0, "action":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "com.samsung.android.sm.ACTION_RAM"

    .local v0, "action":Ljava/lang/String;
    goto :goto_0

    .line 320
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string/jumbo v8, "GeneralDeviceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start sm not available : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "smartManagerPkgName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "device_info_contact_us"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 326
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Contact us is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 329
    .restart local v3    # "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1002f9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Activity Not Found"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 335
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v8, "marketing_information"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 337
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information is clicked"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 340
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v8, "com.osp.app.signin"

    .line 341
    const-string/jumbo v9, "com.osp.app.signin.ReceiveMarketingActivity"

    .line 340
    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 343
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "GeneralDeviceSettings"

    const-string/jumbo v9, "Marketing information launch error"

    invoke-static {v8, v9, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.settings.DIAGNOSTIC_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GeneralDeviceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "GeneralManagement"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method public showReportDiagnosticinfoDialog()V
    .locals 13

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "c":Landroid/content/Context;
    const/4 v7, 0x0

    .line 467
    .local v7, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, ""

    .line 468
    .local v1, "collectionString":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    .line 470
    .local v8, "sales_code":Ljava/lang/String;
    const-string/jumbo v10, "VZW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 472
    .local v6, "isVZW":Z
    :goto_0
    const-string/jumbo v9, "com.sec.android.app.setupwizard"

    .line 473
    .local v9, "vzwPackageName":Ljava/lang/String;
    const-string/jumbo v4, "com.sec.android.app.SecSetupWizard"

    .line 476
    .local v4, "globalPackageName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 477
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 479
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 480
    const/4 v11, 0x2

    .line 479
    invoke-virtual {v10, v9, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 481
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 482
    const-string/jumbo v11, "diagnostic_terms_vzw"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 481
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 503
    .end local v0    # "c":Landroid/content/Context;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 504
    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error log collection disclaimer is null"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/GeneralDeviceSettings;->setDiagnostic(Z)V

    .line 464
    :goto_2
    return-void

    .line 470
    .end local v4    # "globalPackageName":Ljava/lang/String;
    .end local v6    # "isVZW":Z
    .end local v9    # "vzwPackageName":Ljava/lang/String;
    .local v0, "c":Landroid/content/Context;
    .local v7, "resources":Landroid/content/res/Resources;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isVZW":Z
    goto :goto_0

    .line 484
    .restart local v4    # "globalPackageName":Ljava/lang/String;
    .restart local v9    # "vzwPackageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 486
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/samsung/android/settings/GeneralDeviceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    .line 487
    const/4 v11, 0x2

    .line 486
    invoke-virtual {v10, v4, v11}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 489
    .local v0, "c":Landroid/content/Context;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v10

    .line 490
    const-string/jumbo v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 489
    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 492
    const-string/jumbo v11, "error_log_collection_k_serviceinfo"

    const-string/jumbo v12, "string"

    invoke-virtual {v7, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 491
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 499
    .end local v0    # "c":Landroid/content/Context;
    .end local v7    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 500
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting Resource"

    invoke-static {v10, v11, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 497
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v2

    .line 498
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "GeneralDeviceSettings"

    const-string/jumbo v11, "error getting activity of create package context"

    invoke-static {v10, v11, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 507
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v11, "com.samsung.settings.ReportDiagnosticinfo"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 508
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/GeneralDeviceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
