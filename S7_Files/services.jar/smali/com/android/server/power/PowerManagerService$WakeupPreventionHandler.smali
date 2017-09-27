.class final Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WakeupPreventionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2422
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2423
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2422
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2428
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2427
    :cond_0
    :goto_0
    return-void

    .line 2430
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get29(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "mPocketHandler: MSG_REGISTER_POCKET_SENSOR"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set18(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2434
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get47(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get44(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get42(Lcom/android/server/power/PowerManagerService;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;ILandroid/os/Looper;)Z

    goto :goto_0

    .line 2439
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get29(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2440
    const-string/jumbo v0, "PowerManagerService"

    const-string/jumbo v1, "mPocketHandler: MSG_UNREGISTER_POCKET_SENSOR"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->-set18(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 2443
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get47(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeupPreventionHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get44(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;)V

    goto :goto_0

    .line 2428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
