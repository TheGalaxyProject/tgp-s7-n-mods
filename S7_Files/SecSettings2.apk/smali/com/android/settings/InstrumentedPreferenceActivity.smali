.class public abstract Lcom/android/settings/InstrumentedPreferenceActivity;
.super Lcom/android/settings/PreferenceActivity;
.source "InstrumentedPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/settings/PreferenceActivity;->onPause()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings/PreferenceActivity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 41
    return-void
.end method
