.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog$1;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog$1;->this$1:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "paramInt"    # I

    .prologue
    .line 306
    iget-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog$1;->this$1:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    .line 307
    .local v0, "activity":Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    .line 305
    return-void
.end method
