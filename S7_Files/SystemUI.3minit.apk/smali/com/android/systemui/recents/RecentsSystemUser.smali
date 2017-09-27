.class public Lcom/android/systemui/recents/RecentsSystemUser;
.super Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;
.source "RecentsSystemUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;,
        Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mNonSystemUserRecents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Lcom/android/systemui/recents/RecentsImpl;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    .line 48
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_recents_RecentsSystemUser_lambda$1(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    .line 0
    return-void
.end method

.method synthetic -com_android_systemui_recents_RecentsSystemUser_lambda$2(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    .line 0
    return-void
.end method

.method public getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    return-object v0
.end method

.method public registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "nonSystemUserCallbacks"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 58
    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    .line 59
    .local v0, "callback":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    new-instance v2, Lcom/android/systemui/recents/RecentsSystemUser$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/recents/RecentsSystemUser$1;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;I)V

    .line 67
    const/4 v3, 0x0

    .line 59
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 68
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 69
    const v3, 0x8cdc

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "callback":Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RecentsSystemUser"

    const-string/jumbo v3, "Failed to register NonSystemUserCallbacks"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "dragMode"    # I
    .param p2, "initialRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 100
    return-void
.end method

.method public sendLaunchRecentsEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 105
    return-void
.end method

.method public sendRecentsDrawnEvent()V
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 95
    return-void
.end method

.method public startScreenPinning(I)V
    .locals 2
    .param p1, "taskId"    # I

    .prologue
    .line 89
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public updateRecentsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 82
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
