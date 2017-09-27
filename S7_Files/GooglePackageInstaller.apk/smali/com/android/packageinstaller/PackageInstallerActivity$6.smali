.class Lcom/android/packageinstaller/PackageInstallerActivity$6;
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
    .line 273
    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$6;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$6;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 279
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$6;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 274
    return-void
.end method
