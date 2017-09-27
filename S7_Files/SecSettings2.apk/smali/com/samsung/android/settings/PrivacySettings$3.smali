.class Lcom/samsung/android/settings/PrivacySettings$3;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/PrivacySettings;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 492
    const-string/jumbo v2, "PrivacySettings"

    const-string/jumbo v3, "onPreferenceCha"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    instance-of v2, p1, Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v2, :cond_0

    .line 494
    return v4

    .line 496
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 497
    .local v0, "nextValue":Z
    const/4 v1, 0x0

    .line 498
    .local v1, "result":Z
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 499
    if-nez v0, :cond_1

    .line 502
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-wrap5(Lcom/samsung/android/settings/PrivacySettings;)V

    .line 503
    return v4

    .line 504
    :cond_1
    if-eqz v0, :cond_2

    .line 505
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2, v4}, Lcom/samsung/android/settings/PrivacySettings;->-wrap4(Lcom/samsung/android/settings/PrivacySettings;Z)V

    .line 506
    iget-object v2, p0, Lcom/samsung/android/settings/PrivacySettings$3;->this$0:Lcom/samsung/android/settings/PrivacySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/PrivacySettings;->-get2(Lcom/samsung/android/settings/PrivacySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    .line 507
    return v4

    .line 510
    :cond_2
    return v1
.end method
