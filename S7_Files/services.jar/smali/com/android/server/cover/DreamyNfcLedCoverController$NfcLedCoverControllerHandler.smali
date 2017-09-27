.class final Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "DreamyNfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/DreamyNfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/cover/DreamyNfcLedCoverController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    .line 86
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 85
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 91
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap6(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v2, v3, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap5(Lcom/android/server/cover/DreamyNfcLedCoverController;I[B)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap2(Lcom/android/server/cover/DreamyNfcLedCoverController;II)V

    goto :goto_0

    .line 102
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 103
    .local v0, "attach":Z
    :goto_1
    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    invoke-static {v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap1(Lcom/android/server/cover/DreamyNfcLedCoverController;)V

    goto :goto_0

    .line 102
    .end local v0    # "attach":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap0(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap4(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 114
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/cover/DreamyNfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/android/server/cover/DreamyNfcLedCoverController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v2, v1}, Lcom/android/server/cover/DreamyNfcLedCoverController;->-wrap3(Lcom/android/server/cover/DreamyNfcLedCoverController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
