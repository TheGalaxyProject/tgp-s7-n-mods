.class Lcom/android/packageinstaller/PackageInstallerActivity$3;
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

    iput-object p1, p0, Lcom/android/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "PackageInstaller"

    const-string/jumbo v1, "Launching settings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity$3;->this$0:Lcom/android/packageinstaller/PackageInstallerActivity;

    invoke-static {v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->-wrap3(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    return-void
.end method
