.class public Lcom/android/server/TcpOptimizerLogger;
.super Ljava/lang/Object;
.source "TcpOptimizerLogger.java"


# static fields
.field private static sInstance:Lcom/android/server/TcpOptimizerLogger;


# instance fields
.field mIsShowingGlobalLog:Z

.field mIsUsed:Z

.field private mTcpOptimizerLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    .line 17
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsShowingGlobalLog:Z

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    .line 12
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/TcpOptimizerLogger;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/TcpOptimizerLogger;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/server/TcpOptimizerLogger;

    invoke-direct {v0}, Lcom/android/server/TcpOptimizerLogger;-><init>()V

    sput-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;

    .line 24
    :cond_0
    sget-object v0, Lcom/android/server/TcpOptimizerLogger;->sInstance:Lcom/android/server/TcpOptimizerLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public add(Lcom/android/server/TcpStats;)V
    .locals 2
    .param p1, "stat"    # Lcom/android/server/TcpStats;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    invoke-virtual {p1}, Lcom/android/server/TcpStats;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public dumpTcpStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsShowingGlobalLog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/TcpOptimizerLogger;->mIsUsed:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 38
    const-string/jumbo v0, "TcpOptimizer Log:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "time - pid\tprocName\taddr\tsid\tstate\terrno\tmark\tscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/TcpOptimizerLogger;->mTcpOptimizerLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 34
    :cond_0
    return-void
.end method
