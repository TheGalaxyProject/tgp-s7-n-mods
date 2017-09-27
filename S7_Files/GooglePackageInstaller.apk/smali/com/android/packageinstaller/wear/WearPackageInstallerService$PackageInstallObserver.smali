.class Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "WearPackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/packageinstaller/wear/WearPackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field private mApplicationPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mStartId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;


# direct methods
.method private constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/wear/WearPackageInstallerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p4, "startId"    # I
    .param p5, "applicationPackageName"    # Ljava/lang/String;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mContext:Landroid/content/Context;

    .line 569
    iput-object p3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 570
    iput p4, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mStartId:I

    .line 571
    iput-object p5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mApplicationPackageName:Ljava/lang/String;

    .line 567
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/wear/WearPackageInstallerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p4, "startId"    # I
    .param p5, "applicationPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;-><init>(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 577
    if-gez p2, :cond_0

    .line 578
    :try_start_0
    const-string/jumbo v2, "WearPkgInstallerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package install failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mApplicationPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 579
    const-string/jumbo v4, ", returnCode "

    .line 578
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mApplicationPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/packageinstaller/wear/WearPackageUtil;->removeFromPermStore(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v4, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mStartId:I

    invoke-static {v2, v3, v4}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap0(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    .line 581
    return-void

    .line 584
    :cond_0
    :try_start_1
    const-string/jumbo v2, "WearPkgInstallerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " was installed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/packageinstaller/wear/WearPackageUtil;->getTemporaryFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 588
    .local v1, "tempFile":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 594
    :cond_1
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.GMS_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, "gmsInstalledIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    .end local v0    # "gmsInstalledIntent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v4, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mStartId:I

    invoke-static {v2, v3, v4}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap0(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    .line 574
    return-void

    .line 599
    .end local v1    # "tempFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 600
    iget-object v3, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->this$0:Lcom/android/packageinstaller/wear/WearPackageInstallerService;

    iget-object v4, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget v5, p0, Lcom/android/packageinstaller/wear/WearPackageInstallerService$PackageInstallObserver;->mStartId:I

    invoke-static {v3, v4, v5}, Lcom/android/packageinstaller/wear/WearPackageInstallerService;->-wrap0(Lcom/android/packageinstaller/wear/WearPackageInstallerService;Landroid/os/PowerManager$WakeLock;I)V

    .line 599
    throw v2
.end method
