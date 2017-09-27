.class public Lcom/android/settings/notification/ConfigureNotificationSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

.field private mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

.field private mLockscreenSelectedValue:I

.field private mLockscreenSelectedValueProfile:I

.field private mNotificationPulse:Landroid/preference/TwoStatePreference;

.field private mProfileChallengeUserId:I

.field private mSecure:Z

.field private mSecureProfile:Z

.field private final mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/notification/ConfigureNotificationSettings;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/notification/ConfigureNotificationSettings;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/notification/ConfigureNotificationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/ConfigureNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    .line 47
    return-void
.end method

.method private getLockscreenAllowPrivateNotifications(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    .line 337
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 333
    const-string/jumbo v2, "lock_screen_show_notifications"

    .line 332
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initLockscreenNotifications()V
    .locals 11

    .prologue
    const v10, 0x7f0b1963

    const v9, 0x7f0b1962

    const v8, 0x7f0b1961

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 152
    const-string/jumbo v7, "lock_screen_notifications"

    .line 151
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationLockscreenPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 153
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v6, :cond_0

    .line 154
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/16 v6, 0xc

    .line 168
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 171
    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v6, :cond_1

    .line 172
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v6, 0x4

    .line 177
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 181
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 182
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x40

    .line 181
    invoke-static {v7, v9, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 184
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 185
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 186
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotifications()V

    .line 187
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 188
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$2;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initLockscreenNotificationsForProfile()V
    .locals 12

    .prologue
    const v11, 0x7f0b1968

    const v9, 0x7f0b1967

    const v8, 0x7f0b1966

    const/4 v10, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 215
    const-string/jumbo v7, "lock_screen_notifications_profile"

    .line 214
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/notification/NotificationLockscreenPreference;

    iput-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 216
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v6, :cond_0

    .line 217
    const-string/jumbo v6, "ConfigNotiSettings"

    const-string/jumbo v7, "Preference not found: lock_screen_notifications_profile"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 220
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setUserId(I)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v11}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "summaryShowEntry":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "summaryShowEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/16 v6, 0xc

    .line 232
    invoke-direct {p0, v3, v4, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 235
    iget-boolean v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v6, :cond_1

    .line 236
    invoke-virtual {p0, v9}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "summaryHideEntry":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "summaryHideEntryValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/4 v6, 0x4

    .line 242
    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/notification/ConfigureNotificationSettings;->setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 246
    .end local v1    # "summaryHideEntry":Ljava/lang/String;
    .end local v2    # "summaryHideEntryValue":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    .line 247
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 248
    iget v8, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 247
    const/16 v9, 0x40

    .line 246
    invoke-static {v7, v9, v8}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setRemoteInputRestricted(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 250
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 251
    iget-object v7, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 253
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setRemoteInputCheckBoxEnabled(Z)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updateLockscreenNotificationsForProfile()V

    .line 255
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationLockscreenPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 256
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    new-instance v7, Lcom/android/settings/notification/ConfigureNotificationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$3;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v6, v7}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    :goto_0
    return-void

    .line 279
    :cond_2
    iget-object v6, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v6, v10}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private initPulse()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "notification_pulse"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    .line 115
    iput-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "ConfigNotiSettings"

    const-string/jumbo v1, "Preference not found: notification_pulse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 122
    const v1, 0x1120043

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->updatePulse()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/ConfigureNotificationSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ConfigureNotificationSettings$1;-><init>(Lcom/android/settings/notification/ConfigureNotificationSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private setRestrictedIfNotificationFeaturesDisabled(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "keyguardNotificationFeatures"    # I

    .prologue
    .line 286
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 285
    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 287
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 289
    .local v1, "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->addRestrictedItem(Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 291
    .end local v1    # "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    :cond_0
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 292
    invoke-static {v3, p3, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 294
    .local v2, "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v2, :cond_1

    .line 295
    new-instance v1, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    invoke-direct {v1, p1, p2, v2}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 296
    .restart local v1    # "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/notification/NotificationLockscreenPreference;->addRestrictedItem(Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;)V

    .line 284
    .end local v1    # "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    .end local v2    # "profileAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_1
    return-void
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 302
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v2, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 306
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    if-eqz v2, :cond_1

    .line 307
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 308
    :goto_0
    if-nez v1, :cond_2

    const v2, 0x7f0b1963

    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    .line 311
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreen:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setValue(Ljava/lang/String;)V

    .line 301
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 309
    .end local v0    # "allowPrivate":Z
    :cond_2
    if-eqz v0, :cond_3

    const v2, 0x7f0b1961

    goto :goto_1

    .line 310
    :cond_3
    const v2, 0x7f0b1962

    goto :goto_1
.end method

.method private updateLockscreenNotificationsForProfile()V
    .locals 4

    .prologue
    .line 315
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    const/16 v3, -0x2710

    if-ne v2, v3, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    if-nez v2, :cond_1

    .line 319
    return-void

    .line 321
    :cond_1
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenNotificationsEnabled(I)Z

    move-result v1

    .line 322
    .local v1, "enabled":Z
    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    if-eqz v2, :cond_2

    .line 323
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-direct {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getLockscreenAllowPrivateNotifications(I)Z

    move-result v0

    .line 324
    :goto_0
    if-nez v1, :cond_3

    .line 325
    const v2, 0x7f0b1968

    .line 324
    :goto_1
    iput v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    .line 328
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenProfile:Lcom/android/settings/notification/NotificationLockscreenPreference;

    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mLockscreenSelectedValueProfile:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/NotificationLockscreenPreference;->setValue(Ljava/lang/String;)V

    .line 314
    return-void

    .line 322
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowPrivate":Z
    goto :goto_0

    .line 326
    .end local v0    # "allowPrivate":Z
    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f0b1966

    goto :goto_1

    .line 327
    :cond_4
    const v2, 0x7f0b1967

    goto :goto_1
.end method

.method private updatePulse()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    if-nez v2, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mNotificationPulse:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 144
    const-string/jumbo v4, "notification_light_pulse"

    .line 143
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_1
    return-void

    .line 143
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "ConfigNotiSettings"

    const-string/jumbo v2, "notification_light_pulse not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x151

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/16 v5, -0x2710

    .line 75
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    .line 78
    iget-object v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 77
    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    .line 80
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "utils":Lcom/android/internal/widget/LockPatternUtils;
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 84
    .local v0, "isUnified":Z
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 85
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    if-eq v3, v5, :cond_0

    .line 86
    iget v3, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecure:Z

    .line 85
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSecureProfile:Z

    .line 88
    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initPulse()V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotifications()V

    .line 93
    iget v2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mProfileChallengeUserId:I

    if-eq v2, v5, :cond_1

    .line 94
    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ConfigureNotificationSettings;->addPreferencesFromResource(I)V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->initLockscreenNotificationsForProfile()V

    .line 74
    :cond_1
    return-void

    .line 82
    .end local v0    # "isUnified":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "isUnified":Z
    goto :goto_0

    .line 86
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings;->mSettingsObserver:Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ConfigureNotificationSettings$SettingsObserver;->register(Z)V

    .line 101
    return-void
.end method
