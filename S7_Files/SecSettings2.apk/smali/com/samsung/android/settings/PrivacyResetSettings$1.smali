.class Lcom/samsung/android/settings/PrivacyResetSettings$1;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/PrivacyResetSettings;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$1;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 186
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$1;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get1(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-ne p1, v4, :cond_2

    .line 187
    const-string/jumbo v4, "PrivacyResetSettings"

    const-string/jumbo v5, "Collect Diagnostics Preference triggered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 190
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get0()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    const-string/jumbo v4, "com.tmobile.pr.mytmobile"

    .line 192
    const-string/jumbo v5, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    .line 191
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v0, "cn":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$1;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 193
    .local v0, "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cn":Landroid/content/ComponentName;
    const-string/jumbo v4, "com.carrieriq.tmobile.IQToggle"

    .line 194
    const-string/jumbo v5, "com.carrieriq.tmobile.IQToggle.ui"

    .line 193
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .local v0, "cn":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$1;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get4(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_0

    .line 202
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v3, "mIntent":Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$1;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 205
    :catch_1
    move-exception v1

    .line 206
    .restart local v1    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
