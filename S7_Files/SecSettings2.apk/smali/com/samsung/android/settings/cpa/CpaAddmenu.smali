.class public Lcom/samsung/android/settings/cpa/CpaAddmenu;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "CpaAddmenu.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAddAPN:Landroid/preference/PreferenceScreen;

.field private mAddCPA:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xc

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 79
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->finish()V

    .line 77
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->addPreferencesFromResource(I)V

    .line 55
    const-string/jumbo v1, "add_apn"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddAPN:Landroid/preference/PreferenceScreen;

    .line 56
    const-string/jumbo v1, "add_cpa"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddCPA:Landroid/preference/PreferenceScreen;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "kddi_cpa_added"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 58
    .local v0, "isAddedCPA":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddCPA:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 52
    return-void

    .line 57
    .end local v0    # "isAddedCPA":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isAddedCPA":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 58
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v7, 0x7e

    const/4 v6, 0x1

    .line 63
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddAPN:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "CpaAddmenu"

    const-string/jumbo v3, "addNewApn"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->startActivityForResult(Landroid/content/Intent;I)V

    .line 73
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v6

    .line 67
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/cpa/CpaAddmenu;->mAddCPA:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "5"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "url":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.settings.cpa.CpaAdvancedSettings"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0, v7}, Lcom/samsung/android/settings/cpa/CpaAddmenu;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
