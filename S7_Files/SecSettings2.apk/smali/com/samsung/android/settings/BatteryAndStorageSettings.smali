.class public Lcom/samsung/android/settings/BatteryAndStorageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryAndStorageSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/BatteryAndStorageSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBatterySettings:Landroid/support/v7/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mStorageSettings:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/samsung/android/settings/BatteryAndStorageSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/BatteryAndStorageSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 71
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/settings/BatteryAndStorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->mContext:Landroid/content/Context;

    .line 34
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/BatteryAndStorageSettings;->addPreferencesFromResource(I)V

    .line 36
    const-string/jumbo v0, "battery_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/BatteryAndStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->mBatterySettings:Landroid/support/v7/preference/Preference;

    .line 37
    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/BatteryAndStorageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->mStorageSettings:Landroid/support/v7/preference/Preference;

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 64
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 59
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/settings/BatteryAndStorageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 47
    .local v0, "easy_mode":Z
    iget-object v1, p0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->mBatterySettings:Landroid/support/v7/preference/Preference;

    const-string/jumbo v2, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/samsung/android/settings/BatteryAndStorageSettings;->mBatterySettings:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 43
    :cond_0
    return-void
.end method
