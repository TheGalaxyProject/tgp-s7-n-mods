.class Lcom/android/server/am/MARsPolicyManager$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->invokePMGetPackageSizeInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsPolicyManager;

    .prologue
    .line 1796
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 10
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1799
    if-eqz p2, :cond_1

    .line 1800
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v4, v6

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    add-long/2addr v4, v6

    .line 1801
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 1800
    add-long/2addr v4, v6

    .line 1801
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 1800
    add-long/2addr v4, v6

    .line 1801
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 1800
    add-long/2addr v4, v6

    .line 1802
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 1800
    add-long/2addr v4, v6

    .line 1802
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 1800
    add-long v2, v4, v6

    .line 1803
    .local v2, "totalPkgSize":J
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->-get5(Lcom/android/server/am/MARsPolicyManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1804
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->-get11(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1805
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->-get11(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1806
    .local v0, "prevPkgSize":J
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->-get10(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    sub-long v8, v2, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    .end local v0    # "prevPkgSize":J
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$2;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager;->-get11(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/Map;

    move-result-object v4

    iget-object v6, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1798
    .end local v2    # "totalPkgSize":J
    :cond_1
    return-void

    .line 1803
    .restart local v2    # "totalPkgSize":J
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
