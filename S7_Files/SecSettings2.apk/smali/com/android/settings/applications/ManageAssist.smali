.class public Lcom/android/settings/applications/ManageAssist;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageAssist;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11
    .param p1, "newAssitPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 209
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 210
    .local v5, "selected":I
    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    .line 212
    .local v0, "appLabel":Ljava/lang/CharSequence;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1a39

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "title":Ljava/lang/String;
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1a3a

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Lcom/android/settings/applications/ManageAssist$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/applications/ManageAssist$2;-><init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    .line 222
    .local v4, "onAgree":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 226
    const v8, 0x7f0b1a3b

    .line 223
    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 227
    const v8, 0x7f0b1a3c

    const/4 v9, 0x0

    .line 223
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 229
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 203
    .local v1, "currentAssist":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    .line 204
    .local v0, "activeService":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    .line 205
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateUi()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/ManageAssist$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageAssist$1;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1
    .param p1, "assistPackage"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 232
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    .line 177
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5}, Lcom/android/settings/voice/VoiceInputListPreference;->refreshVoiceInputs()I

    move-result v0

    .line 179
    .local v0, "availableCount":I
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    .line 180
    .local v1, "currentAssist":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    move v2, v3

    .line 181
    .local v2, "hasAssistant":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 189
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_3

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 197
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "assist_screenshot_enabled"

    .line 197
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    return-void

    .end local v2    # "hasAssistant":Z
    :cond_1
    move v2, v4

    .line 180
    goto :goto_0

    .line 185
    .restart local v2    # "hasAssistant":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2

    :cond_4
    move v3, v4

    .line 197
    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0xc9

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->addPreferencesFromResource(I)V

    .line 81
    const-string/jumbo v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 84
    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    .line 85
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    const-string/jumbo v4, "assist_structure_enabled"

    .line 85
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    const-string/jumbo v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 77
    return-void

    :cond_0
    move v0, v2

    .line 85
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_structure_enabled"

    .line 125
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    .line 124
    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->postUpdateUi()V

    .line 127
    return v3

    .line 129
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_screenshot_enabled"

    .line 131
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    .line 130
    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    return v3

    .line 134
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10010b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    move-object v1, p2

    .line 136
    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "newAssitPackage":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 138
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 137
    if-eqz v3, :cond_5

    .line 139
    :cond_4
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    .line 140
    return v2

    .line 143
    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "currentPackage":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 147
    :goto_0
    return v2

    .line 145
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v1    # "newAssitPackage":Ljava/lang/String;
    :cond_7
    return v2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 104
    const-string/jumbo v5, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 105
    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    .line 106
    new-array v7, v3, [Ljava/lang/String;

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 103
    invoke-static {v2, v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "isChangeAllowed":I
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/applications/DefaultAssistPreference;->setEnabled(Z)V

    .line 111
    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setEnabled(Z)V

    .line 97
    return-void

    :cond_0
    move v2, v4

    .line 110
    goto :goto_0

    :cond_1
    move v3, v4

    .line 111
    goto :goto_1
.end method
