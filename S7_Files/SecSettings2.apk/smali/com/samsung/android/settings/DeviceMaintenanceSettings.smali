.class public Lcom/samsung/android/settings/DeviceMaintenanceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DeviceMaintenanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;-><init>()V

    .line 73
    sput-object v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 84
    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->addPreferencesFromResource(I)V

    .line 42
    return-void
.end method
