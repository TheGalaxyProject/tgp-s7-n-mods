.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

.field final synthetic val$errMsgId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    .param p2, "val$errMsgId"    # I

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x3

    .line 479
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 481
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->val$errMsgId:I

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    .line 482
    .local v1, "wasTimeout":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 483
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 485
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 478
    return-void

    .line 481
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "wasTimeout":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "wasTimeout":Z
    goto :goto_0

    .line 484
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method
