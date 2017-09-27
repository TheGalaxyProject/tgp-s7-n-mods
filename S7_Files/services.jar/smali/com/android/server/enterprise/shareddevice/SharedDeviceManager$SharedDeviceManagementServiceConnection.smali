.class Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDeviceManagementServiceConnection"
.end annotation


# instance fields
.field private mIsConnected:Z

.field private mSharedDeviceManagementService:Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)V

    return-void
.end method


# virtual methods
.method public getSharedDeviceManagementService()Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mSharedDeviceManagementService:Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-static {p2}, Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mSharedDeviceManagementService:Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-static {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->-get0(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-static {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->-get0(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 183
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->-set0(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 178
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mSharedDeviceManagementService:Lcom/samsung/android/knox/shareddevice/ISharedDeviceManagementService;

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    .line 188
    return-void
.end method
