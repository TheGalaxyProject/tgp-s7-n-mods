.class Lcom/android/server/DLPManagerService$DLPHandler;
.super Landroid/os/Handler;
.source "DLPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DLPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DLPHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "EnterpriseRightsManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/DLPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DLPManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/DLPManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    .line 121
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    const-string/jumbo v0, "DLPHandler"

    invoke-static {p1, v0}, Lcom/android/server/DLPManagerService;->-wrap0(Lcom/android/server/DLPManagerService;Ljava/lang/String;)I

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 126
    iget-object v9, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    const-string/jumbo v10, "DLPHandler"

    invoke-static {v9, v10}, Lcom/android/server/DLPManagerService;->-wrap0(Lcom/android/server/DLPManagerService;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v9, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-static {v9}, Lcom/android/server/DLPManagerService;->-get0(Lcom/android/server/DLPManagerService;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/SemPersonaManager;

    .line 133
    .local v4, "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v4, :cond_0

    .line 137
    invoke-virtual {v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v7

    .line 138
    .local v7, "personaIds":[I
    if-eqz v7, :cond_0

    .line 139
    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_0

    aget v6, v7, v8

    .line 140
    .local v6, "personaId":I
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v10

    .line 141
    iget-object v11, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-static {v11}, Lcom/android/server/DLPManagerService;->-get0(Lcom/android/server/DLPManagerService;)Landroid/content/Context;

    move-result-object v11

    .line 140
    invoke-virtual {v10, v11, v6}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v5

    .line 142
    .local v5, "mcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {v5}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getDLPManagerPolicy()Lcom/samsung/android/knox/dlp/DLPManagerPolicy;

    move-result-object v1

    .line 144
    .local v1, "dlpService":Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/knox/dlp/DLPManagerPolicy;->getDLPConfig()Landroid/os/Bundle;

    move-result-object v0

    .line 147
    .local v0, "config":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 148
    const-string/jumbo v10, "Lock"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 149
    .local v3, "isLocked":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 150
    iget-object v10, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-virtual {v10, v6}, Lcom/android/server/DLPManagerService;->lockDLP(I)Z

    .line 139
    .end local v0    # "config":Landroid/os/Bundle;
    .end local v1    # "dlpService":Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .end local v3    # "isLocked":Ljava/lang/Boolean;
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 152
    .restart local v0    # "config":Landroid/os/Bundle;
    .restart local v1    # "dlpService":Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .restart local v3    # "isLocked":Ljava/lang/Boolean;
    :cond_2
    iget-object v10, p0, Lcom/android/server/DLPManagerService$DLPHandler;->this$0:Lcom/android/server/DLPManagerService;

    invoke-virtual {v10, v6}, Lcom/android/server/DLPManagerService;->unlockDLP(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 161
    .end local v0    # "config":Landroid/os/Bundle;
    .end local v1    # "dlpService":Lcom/samsung/android/knox/dlp/DLPManagerPolicy;
    .end local v3    # "isLocked":Ljava/lang/Boolean;
    .end local v4    # "mPersonaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v5    # "mcm":Lcom/samsung/android/knox/container/KnoxContainerManager;
    .end local v6    # "personaId":I
    .end local v7    # "personaIds":[I
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "DLPManagerService"

    const-string/jumbo v9, "Exception occurs while handle message for MSG_SYSTEM_READY:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
