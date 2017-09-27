.class Lcom/android/server/pm/PersonaManagerService$7;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->stopAndRemovePersona(IZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$personaId:I

.field final synthetic val$removePersona:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaManagerService;
    .param p2, "val$removePersona"    # Z
    .param p3, "val$personaId"    # I

    .prologue
    .line 7027
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$removePersona:Z

    iput p3, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$personaId:I

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 7040
    const-string/jumbo v5, "userStopAborted"

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Ljava/lang/String;)I

    .line 7041
    iget-boolean v5, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$removePersona:Z

    if-nez v5, :cond_3

    .line 7042
    const-string/jumbo v5, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user stop (not removal) is aborted for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7043
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get5(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 7044
    .local v0, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    iget v5, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$personaId:I

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 7045
    .local v1, "ownerUid":I
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-get5(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 7046
    .local v4, "pkgNames":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 7047
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v4, v5

    .line 7048
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v9, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$personaId:I

    invoke-static {v8, v3, v9, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap52(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 7047
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7051
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v7, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$personaId:I

    invoke-static {v5, v9, v7, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap52(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 7053
    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v7, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$personaId:I

    invoke-virtual {v5, v7}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v2

    .line 7054
    .local v2, "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    if-eqz v2, :cond_2

    .line 7055
    iput-boolean v6, v2, Lcom/samsung/android/knox/SemPersonaInfo;->lockInProgress:Z

    .line 7039
    .end local v0    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v1    # "ownerUid":I
    .end local v2    # "personaInfo":Lcom/samsung/android/knox/SemPersonaInfo;
    .end local v4    # "pkgNames":[Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 7058
    :cond_3
    const-string/jumbo v5, "PersonaManagerService"

    const-string/jumbo v6, "userStopAborted called. we cannot remove the persona properly. User needs to reboot."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public userStopped(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 7030
    const-string/jumbo v1, "userStopped"

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Ljava/lang/String;)I

    .line 7031
    const-string/jumbo v1, "PersonaManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " user stop callback invoked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7032
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7033
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7034
    iget-boolean v1, p0, Lcom/android/server/pm/PersonaManagerService$7;->val$removePersona:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 7035
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$7;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-get21(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7029
    return-void

    .line 7034
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
