.class Lcom/android/settings/fingerprint/FingerprintSettings$9;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;->showHuntipForFingerprintIdentification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

.field final synthetic val$mListView:Landroid/widget/ListView;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/widget/ListView;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintSettings;
    .param p2, "val$mListView"    # Landroid/widget/ListView;
    .param p3, "val$view"    # Landroid/view/View;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->val$mListView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->val$mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_huntip"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->val$mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$9;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 951
    :cond_0
    return-void
.end method
