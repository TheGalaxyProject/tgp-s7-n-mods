.class public Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceActivityFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/InstrumentedPreferenceActivity;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/InstrumentedPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    return v0

    .line 78
    :cond_0
    const v0, 0x186a1

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PreferenceActivity;

    invoke-static {v0, p0}, Lcom/android/settings/PreferenceActivity;->-set0(Lcom/android/settings/PreferenceActivity;Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;)Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;

    .line 61
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/PreferenceActivity$PreferenceActivityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PreferenceActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/PreferenceActivity;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
