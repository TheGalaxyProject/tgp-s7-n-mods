.class Lcom/android/server/enterprise/auditlog/AuditLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.REBOOT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 153
    if-eqz v4, :cond_3

    .line 156
    :cond_0
    const/4 v1, 0x0

    .line 157
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 158
    .local v2, "c":Ljava/util/Collection;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 160
    :try_start_0
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 161
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    .line 163
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_1
    monitor-exit v5

    .line 152
    .end local v2    # "c":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 166
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v4, v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-set0(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z

    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 170
    .restart local v2    # "c":Ljava/util/Collection;
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-get0(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 172
    :try_start_1
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 173
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .restart local v3    # "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v1, v0

    .line 175
    .local v1, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 170
    .end local v1    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    .end local v3    # "it":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3    # "it":Ljava/util/Iterator;
    :cond_4
    monitor-exit v5

    .line 178
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-wrap0(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    goto :goto_1
.end method
