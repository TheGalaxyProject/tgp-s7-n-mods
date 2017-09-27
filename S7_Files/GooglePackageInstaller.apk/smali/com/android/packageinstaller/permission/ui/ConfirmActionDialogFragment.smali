.class public final Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConfirmActionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$OnActionConfirmedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;
    .locals 3
    .param p0, "message"    # Ljava/lang/CharSequence;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "MESSAGE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 38
    const-string/jumbo v2, "ACTION"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;

    invoke-direct {v1}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    const v1, 0x7f0d0142

    const/4 v2, 0x0

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment$1;-><init>(Lcom/android/packageinstaller/permission/ui/ConfirmActionDialogFragment;)V

    .line 49
    const v2, 0x7f0d017a

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
