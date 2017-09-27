.class public Lcom/android/server/execute/SemExecuteManagerService;
.super Lcom/samsung/android/app/ISemExecuteManager$Stub;
.source "SemExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;,
        Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;,
        Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemExecuteManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSemExecutableInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/execute/SemExecuteManagerService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/execute/SemExecuteManagerService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/execute/SemExecuteManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/execute/SemExecuteManagerService;->updateSemExecutableInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/ISemExecuteManager$Stub;-><init>()V

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/execute/SemExecuteManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 64
    iget-object v1, p0, Lcom/android/server/execute/SemExecuteManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/execute/SemExecuteManagerService;Lcom/android/server/execute/SemExecuteManagerService$BootCompletedReceiver;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/android/server/execute/SemExecuteManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;-><init>(Lcom/android/server/execute/SemExecuteManagerService;Lcom/android/server/execute/SemExecuteManagerService$UserReceiver;)V

    .line 66
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v1, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;-><init>(Lcom/android/server/execute/SemExecuteManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/android/server/execute/SemExecuteManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 60
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 117
    return-void
.end method

.method private declared-synchronized updateSemExecutableInfo()V
    .locals 5

    .prologue
    monitor-enter p0

    .line 82
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/android/server/execute/SemExecuteManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 84
    iget-object v3, p0, Lcom/android/server/execute/SemExecuteManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/SemExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/SemExecutableInfo;

    .line 86
    .local v0, "info":Lcom/samsung/android/app/SemExecutableInfo;
    iget-object v3, p0, Lcom/android/server/execute/SemExecuteManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "info":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v1    # "info$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "info$iterator":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    .line 81
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "SemExecuteManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableInfo;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/execute/SemExecuteManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/SemExecutableInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExecutableInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/execute/SemExecuteManagerService;->mSemExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
