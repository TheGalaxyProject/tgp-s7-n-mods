.class public Lcom/android/server/vr/GearVrManagerExternal;
.super Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;,
        Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final MESSAGE_DEVICE_EVENT_CHANGED:I = 0x1

.field private static final MESSAGE_DEVICE_EVENT_CHANGED_FOR_FACTORY:I = 0x2

.field private static final MESSAGE_START_VR_HOME:I = 0x3

.field private static final MESSAGE_START_WAIT_ACTIVITY:I = 0x4

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final MESSAGE_VR_MODE_CHANGED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GearVrManagerExternal"


# instance fields
.field private connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mContext:Landroid/content/Context;

.field private final mGearVrHandler:Landroid/os/Handler;

.field private final mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

.field private final mLock:Ljava/lang/Object;

.field private mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/vr/GearVrManagerExternal;)Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/vr/GearVrManagerExternal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/GearVrManagerExternal;I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/vr/GearVrManagerExternal;->handleDeviceEventChangedForFactory(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/GearVrManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gearVrManagerService"    # Lcom/android/server/vr/GearVrManagerService;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrManagerExternalService$Stub;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 115
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    .line 116
    new-instance v0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;-><init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    .line 117
    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    .line 114
    return-void
.end method

.method private connect()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 151
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->ensureNotOnThread()V

    .line 155
    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrManagerService:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v7}, Lcom/android/server/vr/GearVrManagerService;->isVrServiceAvailable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 156
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "VrService unavailable."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void

    .line 160
    :cond_0
    new-instance v6, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-direct {v6, p0, v10}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;-><init>(Lcom/android/server/vr/GearVrManagerExternal;Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)V

    .line 162
    .local v6, "vrRecord":Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 165
    .local v2, "ident":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v8, "android"

    const-string/jumbo v9, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 166
    .local v5, "result":I
    if-nez v5, :cond_1

    .line 167
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v7, "com.samsung.android.hmt.vrsvc"

    const-string/jumbo v8, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect() bindService"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v7, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v9, 0x4000001

    invoke-virtual {v7, v4, v6, v9, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    iget-boolean v7, v6, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    if-nez v7, :cond_2

    .line 181
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect() Unable to bind VRSystemService"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-object v10, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 150
    :goto_1
    return-void

    .line 174
    :cond_1
    :try_start_1
    const-string/jumbo v7, "GearVrManagerExternal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "connect() check signatures failed. result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    .end local v5    # "result":I
    :catchall_0
    move-exception v7

    .line 177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw v7

    .line 184
    .restart local v5    # "result":I
    :cond_2
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect() Take iGearVrManagerExternalService... start"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-object v6, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 187
    :try_start_2
    iget-object v7, v6, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v8, 0x2710

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/vr/IGearVrManagerExternalService;

    invoke-static {v6, v7}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-set0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    .line 188
    invoke-static {v6}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 189
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect() Take iGearVrManagerExternalService... ok!"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 192
    :try_start_3
    invoke-static {v6}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "The VRConnection died unexpectedly."

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 202
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect() Take iGearVrManagerExternalService... InterruptedException!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V

    goto :goto_1

    .line 198
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :try_start_5
    const-string/jumbo v7, "GearVrManagerExternal"

    const-string/jumbo v8, "connect() iGearVrManagerExternalService is null!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private disconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 212
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v1, :cond_0

    .line 213
    const-string/jumbo v1, "GearVrManagerExternal"

    const-string/jumbo v2, "disconnect() already stopped."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void

    .line 217
    :cond_0
    const-string/jumbo v1, "GearVrManagerExternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect() mBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    const-string/jumbo v3, " mConnected="

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mConnected:Z

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    const-string/jumbo v3, " mVRRecord="

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    const-string/jumbo v3, " iGearVrManagerExternalService="

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v3}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 226
    const-string/jumbo v1, "GearVrManagerExternal"

    const-string/jumbo v2, "disconnect() unlinkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 228
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-set0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;Lcom/samsung/android/vr/IGearVrManagerExternalService;)Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    iget-boolean v1, v1, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->mBound:Z

    if-eqz v1, :cond_2

    .line 234
    const-string/jumbo v1, "GearVrManagerExternal"

    const-string/jumbo v2, "disconnect() unbindService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 236
    iput-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    .line 210
    :cond_2
    return-void

    .line 230
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method

.method private ensureNotOnThread()V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 242
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 243
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "calling this from your fg thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    return-void
.end method

.method private getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Too many requests. connectionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 147
    return-object v4

    .line 125
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :try_start_2
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get0(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v1, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->connect()V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 136
    return-object v4

    .line 129
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2

    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 144
    :catchall_1
    move-exception v1

    .line 145
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 144
    throw v1

    .line 139
    :cond_4
    :try_start_6
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 145
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->connectionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 139
    return-object v1
.end method

.method private handleDeviceEventChangedForFactory(I)V
    .locals 7
    .param p1, "event"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x20000000

    const/4 v4, 0x0

    .line 453
    const-string/jumbo v1, "GearVrManagerExternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDeviceEventChangedForFactory  event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 456
    const-string/jumbo v1, "com.samsung.intent.action.HMT_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 458
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 452
    return-void

    .line 459
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 460
    const-string/jumbo v1, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 463
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 464
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 467
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 468
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    const-string/jumbo v1, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 471
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 472
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    const-string/jumbo v1, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 475
    :cond_5
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    .line 476
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 477
    const-string/jumbo v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 478
    :cond_6
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_7

    .line 479
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    const-string/jumbo v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 481
    :cond_7
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_0

    .line 482
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 483
    const-string/jumbo v1, "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I
    .locals 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cpu"    # I
    .param p4, "gpu"    # I
    .param p5, "pid"    # I

    .prologue
    const/4 v2, 0x0

    .line 309
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 310
    aput v2, v7, v2

    .line 313
    .local v7, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v0

    .line 314
    .local v0, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 315
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;III)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 320
    :cond_0
    return-object v7

    .line 317
    .end local v0    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v6

    .line 318
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    if-nez v1, :cond_0

    .line 546
    const-string/jumbo v1, "mVRRecord: null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    :goto_0
    return-void

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVRRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-virtual {v2}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get1(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 551
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 552
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 553
    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mVRRecord:Lcom/android/server/vr/GearVrManagerExternal$VRRecord;

    invoke-static {v1}, Lcom/android/server/vr/GearVrManagerExternal$VRRecord;->-get1(Lcom/android/server/vr/GearVrManagerExternal$VRRecord;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mVRRecord.mBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v1, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 407
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 408
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 409
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :cond_0
    return-void

    .line 411
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 412
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 418
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 419
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 420
    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->enforceCallingSelfPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    return-void

    .line 422
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 423
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPowerLevelState()I
    .locals 4

    .prologue
    .line 379
    const/4 v1, -0x1

    .line 382
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    .line 383
    .local v2, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v2, :cond_0

    .line 384
    invoke-interface {v2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->getPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :cond_0
    return v1

    .line 386
    .end local v2    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    .line 353
    .local v2, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v2, :cond_0

    .line 355
    invoke-interface {v2, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 360
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 357
    .end local v2    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 358
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public handleDeviceEventChanged(I)V
    .locals 7
    .param p1, "event"    # I

    .prologue
    const/4 v6, 0x0

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 434
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_1

    .line 435
    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->notifyDeviceEventChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    .line 444
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 431
    :cond_0
    :goto_1
    return-void

    .line 437
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 439
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 440
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 445
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_2
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_3

    .line 446
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 447
    :cond_3
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public handleStartVrHome()V
    .locals 3

    .prologue
    .line 509
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 510
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 511
    invoke-interface {v1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->startVrHome()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    return-void

    .line 513
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 514
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public handleStartWaitActivity(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 524
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 525
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 526
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->startWaitActivity(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    return-void

    .line 528
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public handleVrMode(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 494
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 495
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 496
    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setVrMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :cond_0
    return-void

    .line 498
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    return-void
.end method

.method public releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    .line 327
    .local v2, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v2, :cond_0

    .line 328
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 333
    .end local v1    # "result":Z
    :cond_0
    return v1

    .line 330
    .end local v2    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 331
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public retrieveEnableFrequencyLevels()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 364
    const/4 v3, 0x1

    new-array v1, v3, [I

    .line 365
    aput v4, v1, v4

    .line 368
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v2

    .line 369
    .local v2, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v2, :cond_0

    .line 370
    invoke-interface {v2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->retrieveEnableFrequencyLevels()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 375
    :cond_0
    return-object v1

    .line 372
    .end local v2    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setRelayMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 535
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 536
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 537
    invoke-interface {v1, p1}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setRelayMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    return-void

    .line 539
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 540
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 340
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 342
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    return-void

    .line 344
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "priority"    # I

    .prologue
    .line 395
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerExternal;->getService()Lcom/samsung/android/vr/IGearVrManagerExternalService;

    move-result-object v1

    .line 396
    .local v1, "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    if-eqz v1, :cond_0

    .line 397
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/vr/IGearVrManagerExternalService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 399
    .end local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 402
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/vr/IGearVrManagerExternalService;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setVrMode(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v2, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 488
    return-void

    :cond_0
    move v0, v1

    .line 489
    goto :goto_0
.end method

.method public startVrHome()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 503
    return-void
.end method

.method public startWaitActivity(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/vr/GearVrManagerExternal;->mGearVrHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    return-void
.end method
