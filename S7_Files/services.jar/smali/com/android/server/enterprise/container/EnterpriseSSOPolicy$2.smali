.class Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;
.super Ljava/lang/Object;
.source "EnterpriseSSOPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 337
    :try_start_0
    const-string/jumbo v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected - className : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {p2}, Lcom/centrify/auth/aidl/IEnterpriseSecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    move-result-object v1

    .line 340
    .local v1, "ssoService1":Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;
    if-eqz v1, :cond_0

    .line 341
    const-string/jumbo v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service connected container1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->-get2(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v2

    iput-object v1, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "sso.enterprise.container.setup.success"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "containerid"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->-get1(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->-set0(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 336
    return-void

    .end local v0    # "mIntent":Landroid/content/Intent;
    .end local v1    # "ssoService1":Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x1

    .line 351
    const-string/jumbo v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceDisconnected - className : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, "result":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "sso.enterprise.container.disconnected"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "containerid"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->-get1(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->-get2(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;)Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$SSOInterfaceList1;->ssoInterface:Lcom/centrify/auth/aidl/IEnterpriseSecurityManager;

    .line 357
    iget-object v2, p0, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy$2;->this$0:Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;

    invoke-static {v2, v5}, Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;->-wrap1(Lcom/android/server/enterprise/container/EnterpriseSSOPolicy;I)I

    move-result v1

    .line 358
    const-string/jumbo v2, "EnterpriseSSOPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bindSSOInterfaces result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method
