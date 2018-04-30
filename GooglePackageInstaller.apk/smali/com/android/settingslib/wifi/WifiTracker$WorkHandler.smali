.class final Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap1(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
