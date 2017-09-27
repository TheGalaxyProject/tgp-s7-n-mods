.class public Lcom/samsung/android/settings/WarrantyInfoFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "WarrantyInfoFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->addPreferencesFromResource(I)V

    .line 38
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 47
    const-string/jumbo v1, "general_terms"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 61
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 51
    :cond_1
    const-string/jumbo v1, "warranty_exceptions"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Option"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v1, "product_warranty"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/WarrantyInfoFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ServiceInfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "Option"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/WarrantyInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
