.class Lcom/android/settingslib/wifi/WifiTracker$Scanner;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get4(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    :cond_1
    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    iget v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get1(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get1(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$string;->wifi_fail_to_scan:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method isScanning()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->removeMessages(I)V

    return-void
.end method

.method resume()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
