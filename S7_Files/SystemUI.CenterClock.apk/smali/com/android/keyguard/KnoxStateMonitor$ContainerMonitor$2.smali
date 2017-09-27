.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x139d

    .line 1084
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1085
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1086
    const-string/jumbo v1, "com.sec.knox.container.action.containerremovalstarted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1085
    if-eqz v1, :cond_1

    .line 1087
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get3(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-set0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Z)Z

    .line 1089
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1090
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-wrap6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V

    .line 1093
    iget-object v1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$2;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get6(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-set1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    .line 1083
    :cond_1
    return-void
.end method
