.class final Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;
.super Landroid/os/Handler;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;


# direct methods
.method public constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap1(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$ServiceHandler;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap2(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
