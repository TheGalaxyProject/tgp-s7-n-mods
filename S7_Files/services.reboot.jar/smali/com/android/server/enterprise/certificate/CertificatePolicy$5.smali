.class Lcom/android/server/enterprise/certificate/CertificatePolicy$5;
.super Ljava/lang/Thread;
.source "CertificatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field final synthetic val$adminNotification:Landroid/content/Intent;

.field final synthetic val$oldAdminNotification:Landroid/content/Intent;

.field final synthetic val$userId:I

.field final synthetic val$userMsgModName:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "val$userId"    # I
    .param p3, "val$userMsgModName"    # [Ljava/lang/String;
    .param p4, "val$adminNotification"    # Landroid/content/Intent;
    .param p5, "val$oldAdminNotification"    # Landroid/content/Intent;

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    iput p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userId:I

    iput-object p3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userMsgModName:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$adminNotification:Landroid/content/Intent;

    iput-object p5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$oldAdminNotification:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1322
    .local v2, "token":J
    :try_start_0
    iget v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userId:I

    .line 1323
    .local v1, "targetUserId":I
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get2(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    iget v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userId:I

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1324
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get3(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userId:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 1325
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1328
    .end local v0    # "adminUid":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get0(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1329
    const-string/jumbo v4, "CertificatePolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Sending certificate failure intent to user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1330
    const-string/jumbo v6, " containing: "

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1331
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userMsgModName:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1331
    const-string/jumbo v6, " (module), "

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userMsgModName:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    const-string/jumbo v6, " (message), "

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    iget v6, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$userId:I

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    const-string/jumbo v6, " (userId)"

    .line 1329
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get2(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$adminNotification:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1335
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 1334
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1336
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->this$0:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-static {v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->-get2(Lcom/android/server/enterprise/certificate/CertificatePolicy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy$5;->val$oldAdminNotification:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1337
    const-string/jumbo v7, "android.permission.sec.MDM_CERTIFICATE"

    .line 1336
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1319
    return-void

    .line 1339
    .end local v1    # "targetUserId":I
    :catchall_0
    move-exception v4

    .line 1340
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    throw v4
.end method
