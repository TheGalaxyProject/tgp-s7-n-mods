.class Lcom/android/packageinstaller/PackageInstallerActivity$9;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/PackageInstallerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/PackageInstallerActivity;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$9;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$9;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(I)V

    .line 310
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$9;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->-wrap2(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    .line 308
    return-void
.end method
