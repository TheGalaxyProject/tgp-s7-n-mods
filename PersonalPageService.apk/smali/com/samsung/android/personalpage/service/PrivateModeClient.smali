.class public Lcom/samsung/android/personalpage/service/PrivateModeClient;
.super Ljava/lang/Object;
.source "PrivateModeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/PrivateModeClient$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateModeClient"


# instance fields
.field private mClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private mIsDeliveredMount:Z

.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mRemoteClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/privatemode/IPrivateModeClient;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

.field private mSrcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field private time:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/personalpage/service/PrivateModeClient;)Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mService:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/personalpage/service/PrivateModeClient;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Lcom/samsung/android/privatemode/IPrivateModeClient;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/personalpage/service/PrivateModeClient$1;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeClient;)V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mIsDeliveredMount:Z

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mSrcList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mService:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iput p3, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mPid:I

    invoke-interface {p2}, Lcom/samsung/android/privatemode/IPrivateModeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string/jumbo v1, "package_name"

    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mPackageName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->register(Lcom/samsung/android/privatemode/IPrivateModeClient;)Z

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->time:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    :cond_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getPathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mSrcList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onEvent(I)V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/privatemode/IPrivateModeClient;

    const-string/jumbo v4, "PrivateModeClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Calling IPrivateModeClient: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v8, :cond_1

    :try_start_1
    iget-boolean v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mIsDeliveredMount:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v1, p1, v4}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mIsDeliveredMount:Z

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, p1, v4}, Lcom/samsung/android/privatemode/IPrivateModeClient;->onStateChange(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v4, "PrivateModeClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Calling IPrivateModeClient failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void
.end method

.method public register(Lcom/samsung/android/privatemode/IPrivateModeClient;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFilepathList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mSrcList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClientRecord { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Landroid/os/IBinder;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mToken:Landroid/os/IBinder;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mRemoteClients:Landroid/os/RemoteCallbackList;

    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeClient;->mClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
