.class Lcom/android/server/SEAMService$2;
.super Landroid/content/BroadcastReceiver;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SEAMService;->registerSPDCompleteReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEAMService;


# direct methods
.method constructor <init>(Lcom/android/server/SEAMService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SEAMService;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/server/SEAMService$2;->this$0:Lcom/android/server/SEAMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 378
    invoke-static {}, Lcom/android/server/SEAMService;->-get1()Lcom/android/server/SKLogger;

    move-result-object v0

    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "SPD Complete intent received"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "selinux.reload_policy"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/android/server/SEAMService;->-get1()Lcom/android/server/SKLogger;

    move-result-object v0

    const-string/jumbo v1, "SEAMService"

    const-string/jumbo v2, "done with reload policy after spd update"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/SEAMService$2;->this$0:Lcom/android/server/SEAMService;

    invoke-static {v0}, Lcom/android/server/SEAMService;->-get0(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->reloadSBAPolicy()V

    .line 377
    return-void
.end method
