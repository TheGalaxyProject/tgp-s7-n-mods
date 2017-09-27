.class public Lcom/android/settings/notification/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAutomationSettings$1;,
        Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;,
        Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/ZenModeAutomationSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/utils/ZenServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "settingsAction"    # Ljava/lang/String;
    .param p2, "configurationActivity"    # Landroid/content/ComponentName;
    .param p3, "ruleId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;
    .param p2, "isSystemRule"    # Z
    .param p3, "providerLabel"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "ruleName"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/notification/ZenModeAutomationSettings;Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 0
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 255
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;-><init>()V

    .line 254
    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;
    .param p2, "isSystemRule"    # Z
    .param p3, "providerLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "mode":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const v3, 0x7f0b19ac

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "ruleState":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .end local v1    # "ruleState":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 193
    :cond_0
    const v2, 0x7f0b19dc

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ruleState":Ljava/lang/String;
    goto :goto_0

    .line 197
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 198
    aput-object p3, v2, v4

    aput-object v1, v2, v5

    .line 197
    const v3, 0x7f0b19ad

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "zenMode"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 215
    :pswitch_0
    const v0, 0x7f0b1958

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 217
    :pswitch_1
    const v0, 0x7f0b1957

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :pswitch_2
    const v0, 0x7f0b1959

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    .line 203
    .local v0, "c":Lcom/android/settings/utils/ManagedServiceSettings$Config;
    const-string/jumbo v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 204
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 205
    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->secondarySetting:Ljava/lang/String;

    .line 206
    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 207
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 208
    const-string/jumbo v1, "condition provider"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 209
    return-object v0
.end method

.method public static getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleInfo;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v5, 0x0

    .line 226
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    :cond_0
    return-object v5

    .line 227
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "android.service.zen.automatic.ruleType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "ruleType":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 229
    .local v0, "configurationActivity":Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    :cond_2
    return-object v5

    .line 229
    :cond_3
    if-eqz v0, :cond_2

    .line 230
    new-instance v1, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v1}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    .line 231
    .local v1, "ri":Lcom/android/settings/notification/ZenRuleInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    .line 232
    const-string/jumbo v3, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 233
    iput-object v2, v1, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    .line 234
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    .line 236
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    .line 238
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "android.service.zen.automatic.ruleInstanceLimit"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 237
    iput v3, v1, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    .line 239
    return-object v1
.end method

.method private getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "settingsAction"    # Ljava/lang/String;
    .param p2, "configurationActivity"    # Landroid/content/ComponentName;
    .param p3, "ruleId"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 142
    const/high16 v2, 0x4000000

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "android.service.notification.extra.RULE_ID"

    .line 141
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 145
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v3, 0x0

    .line 245
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    .line 247
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "configurationActivity":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 249
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 251
    :cond_2
    return-object v3
.end method

.method private showAddRuleDialog()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings$2;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/settings/utils/ZenServiceListing;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$2;->show()V

    .line 93
    return-void
.end method

.method private showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "ruleName"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f0b1999

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 127
    const v1, 0x7f0b1105

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/android/settings/notification/ZenModeAutomationSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings$4;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;)V

    .line 128
    const v2, 0x7f0b199a

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 124
    return-void
.end method

.method private showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 3
    .param p1, "ri"    # Lcom/android/settings/notification/ZenRuleInfo;

    .prologue
    .line 109
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings$3;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/settings/notification/ZenRuleInfo;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$3;->show()V

    .line 108
    return-void
.end method

.method private sortedRules()[Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mRules:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mRules:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 155
    .local v0, "rt":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    sget-object v1, Lcom/android/settings/notification/ZenModeAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 156
    return-object v0
.end method

.method private updateControls()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 161
    .local v2, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 162
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object v4

    .line 163
    .local v4, "sortedRules":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v4, v5

    .line 164
    .local v3, "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    new-instance v1, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, p0, v8, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V

    .line 165
    .local v1, "pref":Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;
    iget-boolean v8, v1, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->appExists:Z

    if-eqz v8, :cond_0

    .line 166
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "pref":Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;
    .end local v3    # "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_1
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "p":Landroid/preference/Preference;
    const v5, 0x7f020169

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 171
    const v5, 0x7f0b1996

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 172
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 173
    new-instance v5, Lcom/android/settings/notification/ZenModeAutomationSettings$5;

    invoke-direct {v5, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$5;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 159
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0x8e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->addPreferencesFromResource(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V

    .line 85
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V

    .line 80
    return-void
.end method
