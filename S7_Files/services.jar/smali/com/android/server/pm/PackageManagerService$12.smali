.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$currentStatus"    # I
    .param p3, "val$args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .prologue
    .line 16161
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 16163
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v11, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16165
    new-instance v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v8}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 16166
    .local v8, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$currentStatus:I

    invoke-virtual {v8, v11}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 16167
    const/4 v11, -0x1

    iput v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 16168
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 16169
    const/4 v11, 0x0

    iput-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 16170
    iget v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 16171
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 16172
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v11, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v12

    .line 16173
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v11, v13, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap31(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 16175
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v13, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 16181
    :cond_0
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    if-eqz v11, :cond_6

    .line 16182
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v11, :cond_5

    const/4 v10, 0x1

    .line 16183
    .local v10, "update":Z
    :goto_0
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v11, :cond_7

    const/4 v5, 0x0

    .line 16184
    .local v5, "flags":I
    :goto_1
    if-nez v10, :cond_9

    .line 16185
    const v11, 0x8000

    and-int/2addr v11, v5

    if-eqz v11, :cond_8

    const/4 v2, 0x1

    .line 16189
    .local v2, "doRestore":Z
    :goto_2
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v11, :cond_1

    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 16190
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 16191
    .local v7, "pList":Ljava/util/List;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerService;->-wrap4(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 16192
    const/4 v2, 0x0

    .line 16201
    .end local v7    # "pList":Ljava/util/List;
    :cond_1
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v11, :cond_2

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v12, 0x1

    iput v12, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 16202
    :cond_2
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v9, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 16204
    .local v9, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v11, v8}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 16205
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16208
    iget v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    if-eqz v2, :cond_3

    .line 16214
    const-string/jumbo v11, "backup"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 16213
    invoke-static {v11}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 16215
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_b

    .line 16218
    const-string/jumbo v11, "restore"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v11, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16221
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {v0, v11}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 16222
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v11, v9}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16238
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_3
    :goto_3
    if-nez v2, :cond_4

    .line 16243
    const-string/jumbo v11, "postInstall"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v11, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16245
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v12, 0x9

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 16246
    .local v6, "msg":Landroid/os/Message;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v11, v6}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 16162
    .end local v6    # "msg":Landroid/os/Message;
    :cond_4
    return-void

    .line 16172
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v5    # "flags":I
    .end local v9    # "token":I
    .end local v10    # "update":Z
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 16182
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "update":Z
    goto/16 :goto_0

    .line 16181
    .end local v10    # "update":Z
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "update":Z
    goto/16 :goto_0

    .line 16183
    :cond_7
    iget-object v11, v8, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    .restart local v5    # "flags":I
    goto/16 :goto_1

    .line 16185
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "doRestore":Z
    goto/16 :goto_2

    .line 16184
    .end local v2    # "doRestore":Z
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "doRestore":Z
    goto/16 :goto_2

    .line 16224
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v9    # "token":I
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 16228
    :catch_0
    move-exception v4

    .line 16229
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "PackageManager"

    const-string/jumbo v12, "Exception trying to enqueue restore"

    invoke-static {v11, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16230
    const/4 v2, 0x0

    goto :goto_3

    .line 16233
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v11, "PackageManager"

    const-string/jumbo v12, "Backup Manager not found!"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16234
    const/4 v2, 0x0

    goto :goto_3

    .line 16226
    :catch_1
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
