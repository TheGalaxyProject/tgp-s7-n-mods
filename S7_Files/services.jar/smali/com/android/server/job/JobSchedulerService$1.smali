.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 402
    const-string/jumbo v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 405
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v10, p2}, Lcom/android/server/job/JobSchedulerService;->-wrap2(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.extra.UID"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 407
    .local v5, "pkgUid":I
    if-eqz v4, :cond_3

    const/4 v10, -0x1

    if-eq v5, v10, :cond_3

    .line 409
    const-string/jumbo v10, "android.intent.extra.changed_component_name_list"

    .line 408
    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "changedComponents":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 411
    const/4 v10, 0x0

    array-length v11, v0

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v1, v0, v10

    .line 412
    .local v1, "component":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 417
    :try_start_0
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 418
    .local v9, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 419
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v6, v4, v9}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v7

    .line 420
    .local v7, "state":I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    .line 421
    const/4 v10, 0x3

    if-ne v7, v10, :cond_1

    .line 426
    :cond_0
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0    # "changedComponents":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgUid":I
    .end local v6    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "state":I
    .end local v9    # "userId":I
    :cond_1
    :goto_1
    return-void

    .line 429
    .restart local v0    # "changedComponents":[Ljava/lang/String;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgUid":I
    :catch_0
    move-exception v3

    .line 430
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v10, "JobSchedulerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Removing jobs(IllegalArgumentException) for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v5, v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    goto :goto_1

    .line 411
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "changedComponents":[Ljava/lang/String;
    .end local v1    # "component":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "JobSchedulerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "PACKAGE_CHANGED for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgUid":I
    :cond_4
    const-string/jumbo v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 443
    const-string/jumbo v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1

    .line 444
    const-string/jumbo v10, "android.intent.extra.UID"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 448
    .local v8, "uidRemoved":I
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IZ)V

    goto :goto_1

    .line 450
    .end local v8    # "uidRemoved":I
    :cond_5
    const-string/jumbo v10, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 451
    const-string/jumbo v10, "android.intent.extra.user_handle"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 455
    .restart local v9    # "userId":I
    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    goto/16 :goto_1

    .line 428
    .end local v9    # "userId":I
    .restart local v0    # "changedComponents":[Ljava/lang/String;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgUid":I
    :catch_1
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method
