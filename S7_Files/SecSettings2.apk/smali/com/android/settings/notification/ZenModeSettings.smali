.class public Lcom/android/settings/notification/ZenModeSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeSettings.java"


# instance fields
.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPrioritySettings:Landroid/preference/Preference;

.field private mVisualSettings:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "condition"    # Z
    .param p3, "resId"    # I

    .prologue
    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 129
    const v2, 0x7f0b154c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    return-object p1
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 2
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "categoryType"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    iget v1, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEffectSuppressed(I)Z
    .locals 2
    .param p1, "effect"    # I

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateControls()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updatePrioritySettingsSummary()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateVisualSettingsSummary()V

    .line 76
    return-void
.end method

.method private updatePrioritySettingsSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b19be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    .line 84
    const v2, 0x7f0b19bf

    .line 83
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    .line 86
    const v2, 0x7f0b19c0

    .line 85
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez v1, :cond_2

    .line 89
    const v1, 0x7f0b19b8

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v1, :cond_3

    .line 96
    const v1, 0x7f0b19c1

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    return-void

    .line 91
    :cond_2
    const v1, 0x7f0b19b9

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_3
    const v1, 0x7f0b19c2

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_4
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/android/settings/notification/ZenModeSettings;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const v1, 0x7f0b19c3

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/notification/ZenModeSettings;->appendLowercase(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateVisualSettingsSummary()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 107
    const v1, 0x7f0b19d4

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    .line 108
    if-eqz v1, :cond_1

    .line 110
    const v1, 0x7f0b19d7

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .line 111
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    const v1, 0x7f0b19d5

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeSettings;->isEffectSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const v1, 0x7f0b19d6

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 137
    const v0, 0x7f0b1898

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x4c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v1, 0x7f080163

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeSettings;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 47
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string/jumbo v1, "priority_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPrioritySettings:Landroid/preference/Preference;

    .line 48
    const-string/jumbo v1, "visual_interruptions_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mVisualSettings:Landroid/preference/Preference;

    .line 49
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 53
    :cond_0
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 66
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeSettings;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettings;->updateControls()V

    .line 71
    return-void
.end method
