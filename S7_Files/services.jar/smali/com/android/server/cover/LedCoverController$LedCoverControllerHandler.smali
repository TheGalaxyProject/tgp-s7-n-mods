.class final Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;
.super Landroid/os/Handler;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/LedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/LedCoverController;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/cover/LedCoverController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    .line 121
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-static {v1, v2}, Lcom/android/server/cover/LedCoverController;->-set0(Lcom/android/server/cover/LedCoverController;Z)Z

    .line 127
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v2, v3, v1}, Lcom/android/server/cover/LedCoverController;->-wrap0(Lcom/android/server/cover/LedCoverController;I[B)V

    goto :goto_0

    .line 122
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 125
    iget-object v2, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-static {v2, v1}, Lcom/android/server/cover/LedCoverController;->-set0(Lcom/android/server/cover/LedCoverController;Z)Z

    goto :goto_1

    .line 130
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3

    :goto_2
    invoke-static {v3, v1}, Lcom/android/server/cover/LedCoverController;->-wrap1(Lcom/android/server/cover/LedCoverController;Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    .line 133
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-static {v1, v2}, Lcom/android/server/cover/LedCoverController;->-set0(Lcom/android/server/cover/LedCoverController;Z)Z

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/LedCoverController;->-get1(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/server/cover/LedCoverController$LedCoverControllerHandler;->this$0:Lcom/android/server/cover/LedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/LedCoverController;->-get1(Lcom/android/server/cover/LedCoverController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
