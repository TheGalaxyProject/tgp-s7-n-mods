.class Lcom/android/server/power/PowerManagerService$ScaleFactorLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleFactorLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 5168
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5170
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binder:Landroid/os/IBinder;

    .line 5172
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5168
    :goto_0
    return-void

    .line 5173
    :catch_0
    move-exception v0

    .line 5174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 5179
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get35(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5180
    :try_start_0
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v2, "ScaleFactorLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set28(Lcom/android/server/power/PowerManagerService;F)F

    .line 5183
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->-set27(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$ScaleFactorLock;)Lcom/android/server/power/PowerManagerService$ScaleFactorLock;

    .line 5184
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 5186
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$ScaleFactorLock;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5178
    return-void

    .line 5179
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
