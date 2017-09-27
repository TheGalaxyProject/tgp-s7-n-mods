.class Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallAppProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/UninstallAppProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallAppProgress;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallAppProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/UninstallAppProgress;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-static {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->-get4(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 305
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 306
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object v1, p0, Lcom/android/packageinstaller/UninstallAppProgress$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/UninstallAppProgress;

    invoke-static {v1}, Lcom/android/packageinstaller/UninstallAppProgress;->-get4(Lcom/android/packageinstaller/UninstallAppProgress;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 303
    return-void
.end method
