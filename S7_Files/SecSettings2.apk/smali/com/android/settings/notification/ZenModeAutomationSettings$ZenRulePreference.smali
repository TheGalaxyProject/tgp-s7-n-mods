.class Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;
.super Landroid/preference/Preference;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZenRulePreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference$1;
    }
.end annotation


# instance fields
.field final appExists:Z

.field private final mDeleteListener:Landroid/view/View$OnClickListener;

.field final mId:Ljava/lang/String;

.field final mName:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p3, "ruleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    .line 283
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 333
    new-instance v10, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference$1;

    invoke-direct {v10, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference$1;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;)V

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    .line 285
    invoke-interface/range {p3 .. p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AutomaticZenRule;

    .line 286
    .local v6, "rule":Landroid/app/AutomaticZenRule;
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mName:Ljava/lang/CharSequence;

    .line 287
    invoke-interface/range {p3 .. p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

    .line 290
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v10

    .line 289
    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v4

    .line 291
    .local v4, "isSchedule":Z
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v3

    .line 292
    .local v3, "isEvent":Z
    if-nez v4, :cond_0

    move v5, v3

    .line 295
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-get0(Lcom/android/settings/notification/ZenModeAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 296
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v9, Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;

    invoke-direct {v9, p1, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/preference/Preference;)V

    .line 297
    .local v9, "task":Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/pm/ApplicationInfo;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 298
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-get0(Lcom/android/settings/notification/ZenModeAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {p1, v6, v5, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap2(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->appExists:Z

    .line 306
    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setPersistent(Z)V

    .line 309
    if-eqz v4, :cond_1

    const-string/jumbo v0, "android.settings.ZEN_MODE_SCHEDULE_RULE_SETTINGS"

    .line 311
    .local v0, "action":Ljava/lang/String;
    :goto_1
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-get1(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/utils/ZenServiceListing;

    move-result-object v10

    invoke-virtual {v6}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/utils/ZenServiceListing;->findService(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    .line 312
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v7

    .line 313
    .local v7, "settingsActivity":Landroid/content/ComponentName;
    iget-object v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mId:Ljava/lang/String;

    invoke-static {p1, v0, v7, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings;->-wrap1(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setIntent(Landroid/content/Intent;)V

    .line 314
    if-nez v7, :cond_3

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setSelectable(Z)V

    .line 316
    const v10, 0x7f040376

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setWidgetLayoutResource(I)V

    .line 282
    return-void

    .line 292
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "settingsActivity":Landroid/content/ComponentName;
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    .end local v9    # "task":Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;
    :cond_0
    const/4 v5, 0x1

    .local v5, "isSystemRule":Z
    goto :goto_0

    .line 299
    .end local v5    # "isSystemRule":Z
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const v10, 0x7f02019f

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->setIcon(I)V

    .line 301
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->appExists:Z

    .line 302
    return-void

    .line 310
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "task":Lcom/android/settings/notification/ZenModeAutomationSettings$LoadIconTask;
    :cond_1
    if-eqz v3, :cond_2

    const-string/jumbo v0, "android.settings.ZEN_MODE_EVENT_RULE_SETTINGS"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, ""

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .line 314
    .restart local v7    # "settingsActivity":Landroid/content/ComponentName;
    .restart local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 321
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 323
    const v2, 0x7f110846

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->mDeleteListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRulePreference;->this$0:Lcom/android/settings/notification/ZenModeAutomationSettings;

    invoke-virtual {v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 329
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 330
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 320
    return-void
.end method
