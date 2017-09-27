.class Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;
.super Ljava/lang/Object;
.source "CoverNotificationMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/service/notification/StatusBarNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I
    .locals 14
    .param p1, "na"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "nb"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v1, v9, Landroid/app/Notification;->priority:I

    .line 227
    .local v1, "aPriority":I
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v5, v9, Landroid/app/Notification;->priority:I

    .line 229
    .local v5, "bPriority":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v2, v9, Landroid/app/Notification;->semPriority:I

    .line 230
    .local v2, "aSemPriority":I
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v6, v9, Landroid/app/Notification;->semPriority:I

    .line 237
    .local v6, "bSemPriority":I
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getCurrentlyPlayingPacakge()Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "mediaPackage":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, -0x2

    if-le v1, v9, :cond_0

    const/4 v0, 0x1

    .line 240
    .local v0, "aMedia":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, -0x2

    if-le v5, v9, :cond_1

    const/4 v4, 0x1

    .line 242
    .local v4, "bMedia":Z
    :goto_1
    const/4 v9, 0x2

    if-lt v1, v9, :cond_2

    invoke-static {p1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    .line 243
    :goto_2
    const/4 v9, 0x2

    if-lt v5, v9, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    .line 247
    :goto_3
    if-eq v2, v6, :cond_5

    .line 248
    if-le v2, v6, :cond_4

    const/4 v9, -0x1

    :goto_4
    return v9

    .line 239
    .end local v0    # "aMedia":Z
    .end local v4    # "bMedia":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "aMedia":Z
    goto :goto_0

    .line 240
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "bMedia":Z
    goto :goto_1

    .line 242
    :cond_2
    const/4 v3, 0x0

    .local v3, "aSystemMax":Z
    goto :goto_2

    .line 243
    .end local v3    # "aSystemMax":Z
    :cond_3
    const/4 v7, 0x0

    .local v7, "bSystemMax":Z
    goto :goto_3

    .line 248
    .end local v7    # "bSystemMax":Z
    :cond_4
    const/4 v9, 0x1

    goto :goto_4

    .line 249
    :cond_5
    if-eq v0, v4, :cond_7

    .line 250
    if-eqz v0, :cond_6

    const/4 v9, -0x1

    :goto_5
    return v9

    :cond_6
    const/4 v9, 0x1

    goto :goto_5

    .line 251
    :cond_7
    if-eq v3, v7, :cond_9

    .line 252
    if-eqz v3, :cond_8

    const/4 v9, -0x1

    :goto_6
    return v9

    :cond_8
    const/4 v9, 0x1

    goto :goto_6

    .line 253
    :cond_9
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 254
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 255
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 256
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v10

    sub-int/2addr v9, v10

    return v9

    .line 258
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-wide v10, v9, Landroid/app/Notification;->when:J

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-wide v12, v9, Landroid/app/Notification;->when:J

    sub-long/2addr v10, v12

    long-to-int v9, v10

    return v9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "na"    # Ljava/lang/Object;
    .param p2, "nb"    # Ljava/lang/Object;

    .prologue
    .line 225
    check-cast p1, Landroid/service/notification/StatusBarNotification;

    .end local p1    # "na":Ljava/lang/Object;
    check-cast p2, Landroid/service/notification/StatusBarNotification;

    .end local p2    # "nb":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    return v0
.end method
