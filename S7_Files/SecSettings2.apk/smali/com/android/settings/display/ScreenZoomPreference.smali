.class public Lcom/android/settings/display/ScreenZoomPreference;
.super Landroid/preference/PreferenceGroup;
.source "ScreenZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 40
    const v4, 0x101008e

    invoke-direct {p0, p1, p2, v4}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getFragment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const-string/jumbo v4, "com.android.settings.display.ScreenZoomSettings"

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setFragment(Ljava/lang/String;)V

    .line 47
    :cond_0
    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 48
    .local v2, "density":Lcom/android/settingslib/display/DisplayDensityUtils;
    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v1

    .line 49
    .local v1, "defaultIndex":I
    if-gez v1, :cond_2

    .line 53
    invoke-virtual {p0, v5}, Lcom/android/settings/display/ScreenZoomPreference;->setEnabled(Z)V

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenZoomPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "entries":[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    .line 57
    .local v0, "currentIndex":I
    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/settings/display/ScreenZoomPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method
