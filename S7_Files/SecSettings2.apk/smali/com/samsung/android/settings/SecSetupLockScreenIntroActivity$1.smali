.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v5}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->isResumed()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    .line 203
    return-void

    .line 206
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->-get0(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;)Landroid/widget/RadioGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 207
    .local v0, "checkedID":I
    packed-switch v0, :pswitch_data_0

    .line 197
    .end local v0    # "checkedID":I
    :goto_0
    return-void

    .line 209
    .restart local v0    # "checkedID":I
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v4, "localIntent3":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "lock_screen_iris"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v5, "from_setupwizard"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v6, 0x2735

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    .end local v0    # "checkedID":I
    .end local v4    # "localIntent3":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v0    # "checkedID":I
    :pswitch_1
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v3, "localIntent2":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v5, "previousStage"

    const-string/jumbo v6, "google_setupwizard_fingerprint"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v5, "from_setupwizard"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v6, 0x2735

    invoke-virtual {v5, v3, v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 227
    .end local v3    # "localIntent2":Landroid/content/Intent;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings.SETUP_LOCK_SCREEN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "localIntent1":Landroid/content/Intent;
    const-string/jumbo v5, "com.android.settings"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v5, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/16 v6, 0x2735

    invoke-virtual {v5, v2, v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->startFirstRunActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 232
    .end local v2    # "localIntent1":Landroid/content/Intent;
    :pswitch_3
    const v5, 0x7f0b08a9

    invoke-static {v5}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->newInstance(I)Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    move-result-object v5

    .line 233
    iget-object v6, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$1;->this$0:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    invoke-virtual {v6}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string/jumbo v7, "dialog"

    .line 232
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x7f11063c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
