.class final Lcom/android/server/SdpManagerService$StateListener;
.super Ljava/lang/Object;
.source "SdpManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$StateListener$-void__init__com_android_server_SdpManagerService_this$0_int_engineId_android_os_ISdpListener_listener_LambdaImpl0;,
        Lcom/android/server/SdpManagerService$StateListener$-void_dispose__LambdaImpl0;
    }
.end annotation


# instance fields
.field mEngineId:I

.field mIsValid:Z

.field mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/ISdpListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SdpManagerService;ILandroid/os/ISdpListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/SdpManagerService;
    .param p2, "engineId"    # I
    .param p3, "listener"    # Landroid/os/ISdpListener;

    .prologue
    .line 2739
    iput-object p1, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    .line 2741
    iput p2, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    .line 2742
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 2744
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/SdpManagerService$StateListener$-void__init__com_android_server_SdpManagerService_this$0_int_engineId_android_os_ISdpListener_listener_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$StateListener$-void__init__com_android_server_SdpManagerService_this$0_int_engineId_android_os_ISdpListener_listener_LambdaImpl0;-><init>(Lcom/android/server/SdpManagerService$StateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2739
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_SdpManagerService$StateListener_lambda$1(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2746
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2747
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    return-void

    .line 2748
    :catch_0
    move-exception v0

    .line 2749
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to link death listener..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2751
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->releaseReferences()V

    goto :goto_0
.end method

.method synthetic -com_android_server_SdpManagerService$StateListener_lambda$2(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2793
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 0
    :goto_0
    return-void

    .line 2796
    :catch_0
    move-exception v0

    .line 2797
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "Failed to unlink death listener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2794
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2795
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "SdpManagerService"

    const-string/jumbo v3, "Listener might be already finalized..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2761
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->get()Landroid/os/ISdpListener;

    move-result-object v0

    .line 2762
    .local v0, "listener":Landroid/os/ISdpListener;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/os/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->-get3(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 2807
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->dispose()V

    .line 2808
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    iget v2, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    invoke-static {v0, v2}, Lcom/android/server/SdpManagerService;->-wrap9(Lcom/android/server/SdpManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2805
    return-void

    .line 2806
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 2783
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    if-nez v0, :cond_0

    .line 2784
    return-void

    .line 2787
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->getParent()Lcom/android/server/SdpManagerService$ListenerRoll;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->getParent()Lcom/android/server/SdpManagerService$ListenerRoll;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/SdpManagerService$ListenerRoll;->disenroll(Lcom/android/server/SdpManagerService$StateListener;)Z

    .line 2791
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/SdpManagerService$StateListener$-void_dispose__LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$StateListener$-void_dispose__LambdaImpl0;-><init>(Lcom/android/server/SdpManagerService$StateListener;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2801
    invoke-virtual {p0}, Lcom/android/server/SdpManagerService$StateListener;->releaseReferences()V

    .line 2782
    return-void
.end method

.method get()Landroid/os/ISdpListener;
    .locals 1

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ISdpListener;

    return-object v0
.end method

.method getParent()Lcom/android/server/SdpManagerService$ListenerRoll;
    .locals 2

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v0}, Lcom/android/server/SdpManagerService;->-get3(Lcom/android/server/SdpManagerService;)Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/android/server/SdpManagerService$StateListener;->mEngineId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$ListenerRoll;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 2770
    iget-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    return v0
.end method

.method releaseReferences()V
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$StateListener;->mIsValid:Z

    .line 2773
    return-void
.end method
