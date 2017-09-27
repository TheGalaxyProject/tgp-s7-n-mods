.class final Lcom/android/server/vr/GearVrManagerService$GearVrHandler;
.super Landroid/os/Handler;
.source "GearVrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/GearVrManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    .line 130
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 137
    .local v2, "state":I
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v4, v2}, Lcom/android/server/vr/GearVrManagerService;->-wrap30(Lcom/android/server/vr/GearVrManagerService;I)V

    goto :goto_0

    .line 141
    .end local v2    # "state":I
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    .line 142
    .local v0, "enabled":Z
    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 143
    .local v3, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 144
    .local v1, "exemptedPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/vr/GearVrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-static {v4, v0, v1, v3}, Lcom/android/server/vr/GearVrManagerService;->-wrap29(Lcom/android/server/vr/GearVrManagerService;Z[Ljava/lang/String;I)V

    goto :goto_0

    .line 141
    .end local v0    # "enabled":Z
    .end local v1    # "exemptedPackages":[Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
