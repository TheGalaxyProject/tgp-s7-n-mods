.class Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private mStartId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput p3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mStartId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;ILcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 4

    if-ltz p2, :cond_0

    :try_start_0
    const-string/jumbo v0, "WearPkgInstallerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was uninstalled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mStartId:I

    invoke-static {v0, v1, v2}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap0(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "WearPkgInstallerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package uninstall failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", returnCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageDeleteObserver;->mStartId:I

    invoke-static {v1, v2, v3}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap0(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    throw v0
.end method
