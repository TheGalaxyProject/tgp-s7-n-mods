.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    const/4 v3, 0x0

    .line 428
    .local v3, "speakerOn":Z
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "deviceSpeakerEnabledState"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 433
    .end local v3    # "speakerOn":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 434
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get0(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 435
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    .line 438
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 439
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v4, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 446
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedStatusBarMode"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 447
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarMode"

    const/16 v7, 0x3e8

    const/4 v8, 0x4

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 448
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedStatusBarMode"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 454
    :cond_2
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedStatusBarClockState"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 455
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarClockState"

    const/16 v7, 0x3e8

    const/4 v8, 0x4

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 456
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedStatusBarClockState"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 462
    :cond_3
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedStatusBarIconsState"

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 463
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarIconsState"

    const/16 v7, 0x3e8

    const/4 v8, 0x4

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 464
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get1(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v4

    const-string/jumbo v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedStatusBarIconsState"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v5, v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 471
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-static {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->-get2(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 473
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    const/16 v5, 0x1800

    invoke-virtual {v4, v9, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setSettingsHiddenState(ZI)I

    .line 421
    :cond_5
    return-void

    .line 429
    .restart local v3    # "speakerOn":Z
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSpeaker failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 466
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "speakerOn":Z
    :catch_1
    move-exception v2

    .local v2, "e1":Ljava/lang/Exception;
    goto :goto_3

    .line 458
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .restart local v2    # "e1":Ljava/lang/Exception;
    goto :goto_2

    .line 450
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .restart local v2    # "e1":Ljava/lang/Exception;
    goto/16 :goto_1
.end method
