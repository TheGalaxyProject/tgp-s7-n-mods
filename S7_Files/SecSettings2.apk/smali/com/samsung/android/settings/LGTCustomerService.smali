.class public Lcom/samsung/android/settings/LGTCustomerService;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LGTCustomerService.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAdditionalService:Landroid/preference/Preference;

.field private mCustomerService:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTCustomerService;->finish()V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTCustomerService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/LGTCustomerService;->mContext:Landroid/content/Context;

    .line 75
    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTCustomerService;->addPreferencesFromResource(I)V

    .line 76
    const-string/jumbo v0, "button_customer_service"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTCustomerService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTCustomerService;->mCustomerService:Landroid/preference/Preference;

    .line 77
    const-string/jumbo v0, "button_auto_dialing"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/LGTCustomerService;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/LGTCustomerService;->mAdditionalService:Landroid/preference/Preference;

    .line 78
    sget-object v0, Lcom/samsung/android/settings/LGTCustomerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/LGTCustomerService;->mCustomerService:Landroid/preference/Preference;

    const v1, 0x7f0b111e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/LGTCustomerService;->mCustomerService:Landroid/preference/Preference;

    const v1, 0x7f0b0e8d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/LGTCustomerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 90
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "key":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "GlobalRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const-string/jumbo v3, "button_customer_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    sget-object v3, Lcom/samsung/android/settings/LGTCustomerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    .line 106
    const-string/jumbo v4, "tel"

    const-string/jumbo v5, "+82234167010"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 105
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/settings/LGTCustomerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const-string/jumbo v3, "RADDialOption"

    const-string/jumbo v4, "korea"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_1
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/LGTCustomerService;->startActivity(Landroid/content/Intent;)V

    .line 127
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 112
    :cond_3
    const-string/jumbo v3, "button_add_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    const-string/jumbo v4, "http://m.roaming.uplus.co.kr"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 114
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/LGTCustomerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const-string/jumbo v3, "button_easy_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/LGTCustomerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.pineone.easyRoamingService"

    .line 118
    const/4 v5, 0x1

    .line 117
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.pineone.easyRoamingService"

    const-string/jumbo v4, "com.pineone.easyRoamingService.LaunchActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/LGTCustomerService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    const-string/jumbo v4, "http://store.uplus.co.kr"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 124
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/LGTCustomerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 85
    return-void
.end method
