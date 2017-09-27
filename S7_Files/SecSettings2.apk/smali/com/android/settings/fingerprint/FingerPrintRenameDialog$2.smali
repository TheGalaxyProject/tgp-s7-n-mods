.class Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;
.super Landroid/text/InputFilter$LengthFilter;
.source "FingerPrintRenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .param p2, "$anonymous0"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 169
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    .local v1, "rst":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->-get1(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 173
    .local v0, "mContext":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->-get3(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->-get1(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d014e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 176
    .end local v0    # "mContext":Landroid/content/Context;
    :cond_0
    return-object v1
.end method
