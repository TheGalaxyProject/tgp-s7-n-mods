.class Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;
.super Landroid/service/notification/NotificationListenerService;
.source "CoverNotificationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/16 v2, 0x12c

    .line 199
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNotificationPosted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0, p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 198
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/16 v2, 0x12c

    .line 215
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNotificationRankingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0, p1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/16 v2, 0x12c

    .line 207
    invoke-static {}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNotificationRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0, p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$2;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get2(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method
