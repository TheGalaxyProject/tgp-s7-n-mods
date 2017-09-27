.class Lcom/android/server/pm/PersonaManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 12653
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 12656
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 12658
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12660
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 12661
    :try_start_0
    const-string/jumbo v2, "reason"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 12662
    .local v1, "reason":I
    const-string/jumbo v2, "PersonaManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EMERGENCY_STATE_CHANGED: reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12664
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 12665
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 12667
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->-set4(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    .line 12655
    .end local v1    # "reason":I
    :cond_1
    return-void

    .line 12666
    .restart local v1    # "reason":I
    :cond_2
    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 12668
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 12669
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->-set4(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12660
    .end local v1    # "reason":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 12671
    .restart local v1    # "reason":I
    :cond_3
    :try_start_2
    const-string/jumbo v2, "PersonaManagerService"

    const-string/jumbo v4, "Unhandled emergency state. Default value is false!!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12672
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$3;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/pm/PersonaManagerService;->-set4(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
