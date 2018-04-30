.class Lcom/android/packageinstaller/InstallAppProgress$3;
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

    iput-object p1, p0, Lcom/android/packageinstaller/InstallAppProgress$3;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$3;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v1, v0}, Lcom/android/packageinstaller/InstallAppProgress;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/packageinstaller/InstallAppProgress$3;->this$0:Lcom/android/packageinstaller/InstallAppProgress;

    invoke-static {v1}, Lcom/android/packageinstaller/InstallAppProgress;->-wrap1(Lcom/android/packageinstaller/InstallAppProgress;)V

    return-void
.end method
