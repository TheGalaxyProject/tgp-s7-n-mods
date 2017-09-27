.class final Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;
.super Landroid/os/Handler;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrExternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerExternal;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerExternal;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerExternal;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerExternal;->-get0(Lcom/android/server/vr/GearVrManagerExternal;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 81
    :try_start_0
    const-string/jumbo v4, "GearVrManagerExternal"

    const-string/jumbo v6, "VRConnection timeout for VRService!"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4}, Lcom/android/server/vr/GearVrManagerExternal;->-wrap0(Lcom/android/server/vr/GearVrManagerExternal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 86
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 87
    .local v1, "event":I
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v1}, Lcom/android/server/vr/GearVrManagerExternal;->handleDeviceEventChanged(I)V

    goto :goto_0

    .line 91
    .end local v1    # "event":I
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 92
    .restart local v1    # "event":I
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-static {v4, v1}, Lcom/android/server/vr/GearVrManagerExternal;->-wrap1(Lcom/android/server/vr/GearVrManagerExternal;I)V

    goto :goto_0

    .line 96
    .end local v1    # "event":I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartVrHome()V

    goto :goto_0

    .line 99
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 100
    .local v2, "intent":Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 101
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/vr/GearVrManagerExternal;->handleStartWaitActivity(Landroid/content/Intent;I)V

    goto :goto_0

    .line 104
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "userId":I
    :pswitch_5
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    .line 105
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerExternal$GearVrExternalHandler;->this$0:Lcom/android/server/vr/GearVrManagerExternal;

    invoke-virtual {v4, v0}, Lcom/android/server/vr/GearVrManagerExternal;->handleVrMode(Z)V

    goto :goto_0

    .line 104
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
