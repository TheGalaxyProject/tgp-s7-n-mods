.class Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePackageDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iput-boolean p2, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iput-boolean v4, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    const-string/jumbo v0, "DeviceStorageMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " Clear succeeded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v2, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mClearingCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-boolean v2, v2, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Forcing memory check"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method
