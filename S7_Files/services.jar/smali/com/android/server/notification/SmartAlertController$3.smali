.class Lcom/android/server/notification/SmartAlertController$3;
.super Ljava/lang/Object;
.source "SmartAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->checkMissedEvent(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;

.field final synthetic val$notiList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/SmartAlertController;

    .prologue
    .line 131
    .local p2, "val$notiList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$3;->val$notiList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 134
    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$3;->val$notiList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/notification/SmartAlertController;->-set1(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 137
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    .local v0, "N":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 140
    .local v1, "currentUser":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 141
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->val$notiList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v3, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 142
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    const-string/jumbo v4, "com.android.server.telecom"

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 147
    :cond_0
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->semMissedCount:I

    if-lez v4, :cond_7

    .line 148
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 149
    const-string/jumbo v4, "SmartAlertController"

    const-string/jumbo v6, "SmartAlert - Found Missed Event"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/notification/SmartAlertController;->-set1(Lcom/android/server/notification/SmartAlertController;Z)Z

    .line 162
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v4}, Lcom/android/server/notification/SmartAlertController;->-get4(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v4}, Lcom/android/server/notification/SmartAlertController;->-get2(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-virtual {v4}, Lcom/android/server/notification/SmartAlertController;->registerListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    .line 133
    return-void

    .line 143
    .restart local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "com.android.mms"

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "com.samsung.android.messaging"

    .line 144
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 145
    :cond_4
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v6, 0x4bc

    if-eq v4, v6, :cond_0

    .line 146
    :cond_5
    const-string/jumbo v4, "com.sec.NotificationTest"

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 142
    if-nez v4, :cond_0

    .line 140
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 154
    :cond_7
    const-string/jumbo v4, "com.sec.NotificationTest"

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 155
    const-string/jumbo v4, "SmartAlertController"

    const-string/jumbo v6, "SmartAlert TEST - Found Missed Event"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/notification/SmartAlertController;->-set1(Lcom/android/server/notification/SmartAlertController;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 134
    .end local v0    # "N":I
    .end local v1    # "currentUser":I
    .end local v2    # "i":I
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method
