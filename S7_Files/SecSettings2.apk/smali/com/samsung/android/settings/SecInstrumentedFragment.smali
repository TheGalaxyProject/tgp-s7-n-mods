.class public abstract Lcom/samsung/android/settings/SecInstrumentedFragment;
.super Landroid/preference/PreferenceFragment;
.source "SecInstrumentedFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->getMetricsCategory()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 48
    return-void
.end method
