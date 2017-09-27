.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;
.super Ljava/lang/Object;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_1

    .line 289
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 296
    const-string/jumbo v3, "input_method"

    .line 295
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 297
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->-get1(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 298
    const/4 v3, 0x2

    .line 297
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "FpstFingerPrintRenameDialog"

    const-string/jumbo v3, "Caught Exception showInputMethod"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
