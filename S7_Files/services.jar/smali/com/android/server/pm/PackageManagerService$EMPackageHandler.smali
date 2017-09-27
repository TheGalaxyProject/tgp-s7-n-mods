.class Lcom/android/server/pm/PackageManagerService$EMPackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EMPackageHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;
    }
.end annotation


# static fields
.field public static final EM_PKG_HADNLER_ID:Ljava/lang/String; = "EM_PKG_HADNLER_ID"

.field public static final ID_INVALID:I = -0x1


# instance fields
.field protected final TIMEOUT:J

.field protected emComponents:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected emCurrentPosition:I

.field protected emDontKillFlags:[Z

.field protected emID:I

.field protected emNewState:[I

.field protected emPackages:[Ljava/lang/String;

.field protected emPreviousID:I

.field protected emProgression:I

.field protected emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

.field protected emSize:I

.field protected emTotSize:I

.field protected emUids:[I

.field protected emUserId:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 2256
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    .line 2224
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    .line 2236
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->TIMEOUT:J

    .line 2238
    new-instance v0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;-><init>(Lcom/android/server/pm/PackageManagerService$EMPackageHandler;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    .line 2255
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2299
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2298
    :goto_0
    return-void

    .line 2301
    :pswitch_0
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_MAKE_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->initForPendingBroadcast(I)V

    .line 2313
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    if-eqz v2, :cond_1

    .line 2314
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    .line 2315
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    if-gtz v2, :cond_0

    .line 2316
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pending size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] EM_MAKE_PENDING_BROADCAST Cancel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2319
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 2320
    return-void

    .line 2322
    :cond_0
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 2323
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 2324
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    .line 2325
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    .line 2326
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    .line 2327
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v14

    .line 2328
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 2330
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-lez v2, :cond_1

    .line 2331
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 2334
    :cond_1
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_MAKE_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2327
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    .line 2339
    :pswitch_1
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_SEND_PENDING_BROADCAST Start"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2341
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2344
    :cond_2
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-lt v2, v3, :cond_4

    .line 2346
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2347
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v2, v3, :cond_3

    .line 2348
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2350
    :cond_3
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SKIP EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED emPrevioudID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] emID["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2355
    :cond_4
    const/4 v13, 0x0

    .line 2359
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    const/4 v10, 0x0

    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    .local v10, "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v10, v2, :cond_c

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    if-ge v2, v3, :cond_c

    .line 2360
    const/4 v11, 0x0

    .line 2361
    .local v11, "isAddReceiver":Z
    const/4 v9, -0x1

    .line 2362
    .local v9, "cSet":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 2363
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    .line 2364
    .local v13, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v13, :cond_5

    .line 2365
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    :cond_5
    monitor-exit v3

    .line 2368
    const/16 v2, 0x9

    if-eq v10, v2, :cond_6

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_7

    .line 2369
    :cond_6
    const/4 v11, 0x1

    .line 2372
    :cond_7
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v2, v2, v3

    if-ne v9, v2, :cond_9

    .line 2374
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2375
    if-eqz v11, :cond_8

    .line 2376
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2377
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v4, v4, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emReceiverBroadcastNext:Landroid/content/IIntentReceiver;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->-wrap49(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    .line 2381
    :goto_2
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    .line 2359
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2362
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2379
    .restart local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-boolean v4, v4, v5

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v6, v6, v7

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerService;->-wrap49(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    goto :goto_2

    .line 2386
    :cond_9
    const-string/jumbo v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SKIP EM_SEND_PENDING_BROADCAST ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] / ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] name["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] curr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]  now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]  emUserId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    const/16 v2, 0x9

    if-eq v10, v2, :cond_a

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_b

    .line 2390
    :cond_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 2392
    :cond_b
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    goto/16 :goto_3

    .line 2397
    .end local v9    # "cSet":I
    .end local v11    # "isAddReceiver":Z
    .end local v13    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_c
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_SEND_PENDING_BROADCAST End"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2402
    .end local v10    # "i":I
    :pswitch_2
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_CHECK_TIMEOUT_OF_BROADCAST"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2408
    :pswitch_3
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2410
    .local v12, "it":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2411
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2412
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    goto/16 :goto_0

    .line 2417
    .end local v12    # "it":Landroid/content/Intent;
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->makeNewID()V

    .line 2418
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2420
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "cancelEMHandlerSendPendingBroadcast : Nothing to do"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2424
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2425
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2427
    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2428
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2430
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2431
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->removeMessages(I)V

    .line 2437
    :cond_10
    const-string/jumbo v2, "PackageManager"

    const-string/jumbo v3, "EM_CANCEL_SENDING_BROADCAST"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getProgressionOfPackageChanged()I
    .locals 1

    .prologue
    .line 2287
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 2292
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2294
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2290
    return-void

    .line 2293
    :catchall_0
    move-exception v0

    .line 2294
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2293
    throw v0
.end method

.method public initForPendingBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2260
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->makeNewID()V

    .line 2261
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    .line 2262
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPackages:[Ljava/lang/String;

    .line 2263
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emComponents:[Ljava/util/ArrayList;

    .line 2264
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUids:[I

    .line 2265
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emDontKillFlags:[Z

    .line 2266
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emNewState:[I

    .line 2267
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emSize:I

    .line 2268
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emTotSize:I

    .line 2269
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emCurrentPosition:I

    .line 2270
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emUserId:I

    .line 2271
    iput v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emProgression:I

    .line 2259
    return-void
.end method

.method public isCanceled()Z
    .locals 2

    .prologue
    .line 2280
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emPreviousID:I

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v0, v1, :cond_0

    .line 2281
    const/4 v0, 0x0

    return v0

    .line 2283
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public makeNewID()V
    .locals 3

    .prologue
    .line 2275
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    .line 2276
    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeNewID ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    return-void
.end method
