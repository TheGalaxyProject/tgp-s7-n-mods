.class Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;
.super Ljava/lang/Object;
.source "DebugPageActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->addEtcItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 331
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 332
    const-string/jumbo v2, "com.android.settings.action.EXTRA_SETTINGS"

    .line 333
    iget-object v3, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v3}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 334
    const-class v4, Lcom/android/systemui/tuner/TunerActivity;

    .line 332
    const/4 v5, 0x0

    .line 331
    invoke-direct {v1, v2, v5, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v2, 0x1

    return v2

    .line 337
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref$5;->this$1:Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;

    invoke-virtual {v2}, Lcom/android/systemui/recents/DebugPageActivity$DebugPagePref;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "SystemUI Tuner is not supported."

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 340
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 342
    return v6
.end method
