.class Lcom/android/settings/LegalSettings$2;
.super Ljava/lang/Object;
.source "LegalSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LegalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LegalSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/LegalSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/LegalSettings;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "OpenSourceLicences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "license"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string/jumbo v1, "GoogleLegal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "terms"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 338
    :cond_2
    const-string/jumbo v1, "SystemWebViewLicences"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 339
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "webview_license"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 341
    :cond_3
    const-string/jumbo v1, "SamsungLegal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "samsung_legal"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 343
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 344
    :cond_4
    const-string/jumbo v1, "SafteyInformation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    const-string/jumbo v2, "safetyinfomation"

    invoke-virtual {v1, v2}, Lcom/android/settings/LegalSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-virtual {v2}, Lcom/android/settings/LegalSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/LegalSettings$2;->this$0:Lcom/android/settings/LegalSettings;

    invoke-static {v1}, Lcom/android/settings/LegalSettings;->-get0(Lcom/android/settings/LegalSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
