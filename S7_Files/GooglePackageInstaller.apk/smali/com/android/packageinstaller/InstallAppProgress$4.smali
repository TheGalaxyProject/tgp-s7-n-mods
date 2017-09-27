.class Lcom/android/packageinstaller/InstallAppProgress$4;
.super Ljava/lang/Object;
.source "InstallAppProgress.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/InstallAppProgress;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/InstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/InstallAppProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/InstallAppProgress;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$4;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 237
    const-string/jumbo v0, "InstallAppProgress"

    const-string/jumbo v1, "Canceling installation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/packageinstaller/InstallAppProgress$4;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v0}, Lcom/android/packageinstaller/InstallAppProgress;->-wrap1(Lcom/android/packageinstaller/InstallAppProgress;)V

    .line 236
    return-void
.end method
