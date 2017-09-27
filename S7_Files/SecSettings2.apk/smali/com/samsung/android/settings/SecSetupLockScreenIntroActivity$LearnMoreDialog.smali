.class public Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;
.super Landroid/app/DialogFragment;
.source "SecSetupLockScreenIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LearnMoreDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;
    .locals 3
    .param p0, "paramInt"    # I

    .prologue
    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "localBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    new-instance v1, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;-><init>()V

    .line 270
    .local v1, "localLearnMoreDialog":Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;->setArguments(Landroid/os/Bundle;)V

    .line 271
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 276
    .local v1, "localBundle":Landroid/os/Bundle;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 277
    const-string/jumbo v3, "messageRes"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 276
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 279
    new-instance v3, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog$1;-><init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$LearnMoreDialog;)V

    .line 278
    const v4, 0x7f0b08aa

    .line 276
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 284
    .local v0, "localAlertDialog":Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    .line 285
    return-object v0
.end method
