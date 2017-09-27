.class Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;
.super Ljava/lang/Thread;
.source "WifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingThread"
.end annotation


# instance fields
.field private delayMsec:I

.field private isPlay:Z

.field private mIpStr:Ljava/lang/String;

.field private mMacStr:Ljava/lang/String;

.field mt_s:J

.field result:Z

.field final synthetic this$0:Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;
    .param p2, "aIP"    # Ljava/lang/String;
    .param p3, "aMac"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->this$0:Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    .line 448
    const-string/jumbo v0, "127.0.0.1"

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    .line 449
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mMacStr:Ljava/lang/String;

    .line 450
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->delayMsec:I

    .line 455
    iput-object p2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    .line 456
    iput-object p3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mMacStr:Ljava/lang/String;

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    .line 458
    const-string/jumbo v0, "SystemUI_WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MHSPing PingThread()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mMacStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 467
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 468
    const-string/jumbo v3, "SystemUI_WifiApBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MHSPing thread run:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " tid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    if-eqz v3, :cond_0

    .line 471
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 472
    .local v2, "target":Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    .line 473
    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->result:Z

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    .line 475
    const-string/jumbo v3, "SystemUI_WifiApBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MHSPing ip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->result:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " msec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mt_s:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " tid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    .end local v2    # "target":Ljava/net/InetAddress;
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    if-nez v3, :cond_1

    .line 487
    :cond_0
    const-string/jumbo v3, "SystemUI_WifiApBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MHSPing thread end. tid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SystemUI_WifiApBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->delayMsec:I

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 483
    :catch_1
    move-exception v1

    .line 484
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public stopPing()V
    .locals 4

    .prologue
    .line 462
    const-string/jumbo v0, "SystemUI_WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MHSPing stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->mIpStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " tid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wifi/mobileap/WifiApBroadcastReceiver$PingThread;->isPlay:Z

    .line 461
    return-void
.end method
