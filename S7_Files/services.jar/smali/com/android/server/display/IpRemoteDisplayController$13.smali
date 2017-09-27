.class Lcom/android/server/display/IpRemoteDisplayController$13;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDeviceStatusListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$event:I

.field final synthetic val$param:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p2, "val$event"    # I
    .param p3, "val$param"    # I

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$event:I

    iput p3, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$param:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "data":Landroid/os/Bundle;
    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$event:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 731
    const-string/jumbo v2, "level"

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$param:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$event:I

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 736
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 737
    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v2}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void

    .line 732
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$event:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 733
    const-string/jumbo v2, "status"

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$13;->val$param:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
