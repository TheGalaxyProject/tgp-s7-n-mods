.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenZoomSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    .line 102
    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mCurrentIndex:I

    aget v0, v1, v2

    .line 89
    .local v0, "densityDpi":I
    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {v3}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    .line 87
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {v3, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    goto :goto_0
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "origConfig"    # Landroid/content/res/Configuration;
    .param p2, "index"    # I

    .prologue
    .line 78
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 79
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget v1, v1, p2

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 80
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0x153

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v3, 0x7f040255

    iput v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mActivityLayoutResId:I

    .line 51
    const v3, 0x7f040256

    .line 52
    const v4, 0x7f040257

    .line 53
    const v5, 0x7f040259

    .line 51
    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mPreviewSampleResIds:[I

    .line 55
    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "density":Lcom/android/settingslib/display/DisplayDensityUtils;
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v2

    .line 58
    .local v2, "initialIndex":I
    if-gez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 63
    .local v1, "densityDpi":I
    new-array v3, v7, [I

    aput v1, v3, v6

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 64
    new-array v3, v7, [Ljava/lang/String;

    sget v4, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    .line 65
    iput v6, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    .line 66
    iput v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 45
    .end local v1    # "densityDpi":I
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 69
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mEntries:[Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/android/settings/display/ScreenZoomSettings;->mInitialIndex:I

    .line 71
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v3

    iput v3, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0
.end method
