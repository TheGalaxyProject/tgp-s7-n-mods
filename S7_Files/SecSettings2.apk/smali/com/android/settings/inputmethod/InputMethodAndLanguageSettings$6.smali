.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
    .param p2, "val$activity"    # Landroid/app/Activity;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 429
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-get2(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 431
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->val$activity:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap8(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/content/Context;)V

    .line 432
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    const-string/jumbo v5, "textservices"

    invoke-static {v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/TextServicesManager;

    .line 433
    .local v3, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 435
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v1, :cond_0

    .line 436
    const-string/jumbo v4, "com.sec.android.inputmethod"

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 437
    .local v0, "isSamsungSpellChecker":Z
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    const-string/jumbo v5, "spellcheckers_settings"

    invoke-virtual {v4, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 438
    .local v2, "spellCheckerInKnox":Landroid/preference/Preference;
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 439
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-static {v4}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 428
    .end local v0    # "isSamsungSpellChecker":Z
    .end local v1    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v2    # "spellCheckerInKnox":Landroid/preference/Preference;
    .end local v3    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    return-void
.end method
