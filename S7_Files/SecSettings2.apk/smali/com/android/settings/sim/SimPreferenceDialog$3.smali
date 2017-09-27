.class Lcom/android/settings/sim/SimPreferenceDialog$3;
.super Ljava/lang/Object;
.source "SimPreferenceDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/sim/SimPreferenceDialog;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$3;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$3;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-virtual {v0}, Lcom/android/settings/sim/SimPreferenceDialog;->finish()V

    .line 176
    return-void
.end method
