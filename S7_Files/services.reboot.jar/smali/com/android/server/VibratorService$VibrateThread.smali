.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1284
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1285
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 1286
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get11(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1287
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1288
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/VibratorService;->-set5(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;

    .line 1283
    return-void
.end method

.method private delay(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1292
    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    .line 1293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long v0, p1, v4

    .line 1296
    .local v0, "bedtime":J
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1300
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_1

    .line 1291
    .end local v0    # "bedtime":J
    :cond_0
    return-void

    .line 1298
    .restart local v0    # "bedtime":J
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1303
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long p1, v0, v4

    .line 1304
    cmp-long v3, p1, v6

    if-lez v3, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 1309
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1310
    monitor-enter p0

    .line 1311
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get6(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v16

    .line 1312
    .local v16, "pattern":[J
    move-object/from16 v0, v16

    array-length v15, v0

    .line 1313
    .local v15, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    .line 1314
    .local v17, "repeat":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get11(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 1315
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get12(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 1316
    .local v7, "usageHint":I
    const/4 v2, 0x0

    .line 1317
    .local v2, "index":I
    const-wide/16 v4, 0x0

    .line 1318
    .local v4, "duration":J
    const-wide/16 v18, 0x0

    .line 1319
    .local v18, "startTime":J
    const-wide/16 v12, 0x0

    .local v12, "endTime":J
    move v14, v2

    .line 1321
    .end local v2    # "index":I
    .local v14, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_a

    .line 1323
    if-ge v14, v15, :cond_0

    .line 1324
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "index":I
    .restart local v2    # "index":I
    aget-wide v8, v16, v14

    add-long/2addr v4, v8

    move v14, v2

    .line 1328
    .end local v2    # "index":I
    .restart local v14    # "index":I
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 1329
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v3, :cond_3

    move v2, v14

    .line 1371
    .end local v14    # "index":I
    .restart local v2    # "index":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->-get15(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8}, Lcom/android/server/VibratorService$Vibration;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/VibratorService;->-set4(Lcom/android/server/VibratorService;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->-get14(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    .line 1375
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v3, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_1

    .line 1376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1378
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v3, :cond_2

    .line 1381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3, v9}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->-wrap3(Lcom/android/server/VibratorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    monitor-exit v8

    .line 1308
    return-void

    .line 1333
    .end local v2    # "index":I
    .restart local v14    # "index":I
    :cond_3
    if-ge v14, v15, :cond_8

    .line 1336
    add-int/lit8 v2, v14, 0x1

    .end local v14    # "index":I
    .restart local v2    # "index":I
    :try_start_2
    aget-wide v4, v16, v14

    .line 1337
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    .line 1338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v3

    if-nez v3, :cond_6

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    .line 1345
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 1347
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    .line 1340
    invoke-static/range {v3 .. v9}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;JIIII)V

    .line 1359
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v12, v8, v18

    .line 1360
    sub-long/2addr v4, v12

    :cond_4
    :goto_4
    move v14, v2

    .end local v2    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_0

    .line 1346
    .end local v14    # "index":I
    .restart local v2    # "index":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v8}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)I

    move-result v8

    goto :goto_2

    .line 1349
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    .line 1354
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v8}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)[I

    move-result-object v8

    .line 1355
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get13(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)I

    move-result v9

    .line 1357
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v10}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v11}, Lcom/android/server/VibratorService$Vibration;->-get7(Lcom/android/server/VibratorService$Vibration;)I

    move-result v11

    .line 1349
    invoke-static/range {v3 .. v11}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JII[IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1310
    .end local v2    # "index":I
    .end local v4    # "duration":J
    .end local v6    # "uid":I
    .end local v7    # "usageHint":I
    .end local v12    # "endTime":J
    .end local v15    # "len":I
    .end local v16    # "pattern":[J
    .end local v17    # "repeat":I
    .end local v18    # "startTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1356
    .restart local v2    # "index":I
    .restart local v4    # "duration":J
    .restart local v6    # "uid":I
    .restart local v7    # "usageHint":I
    .restart local v12    # "endTime":J
    .restart local v15    # "len":I
    .restart local v16    # "pattern":[J
    .restart local v17    # "repeat":I
    .restart local v18    # "startTime":J
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v9}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    goto :goto_5

    .line 1363
    .end local v2    # "index":I
    .restart local v14    # "index":I
    :cond_8
    if-gez v17, :cond_9

    move v2, v14

    .line 1364
    .end local v14    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1

    .line 1366
    .end local v2    # "index":I
    .restart local v14    # "index":I
    :cond_9
    move/from16 v2, v17

    .line 1367
    .end local v14    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v4, 0x0

    goto :goto_4

    .line 1374
    :catchall_1
    move-exception v3

    monitor-exit v8

    throw v3

    .end local v2    # "index":I
    .restart local v14    # "index":I
    :cond_a
    move v2, v14

    .end local v14    # "index":I
    .restart local v2    # "index":I
    goto/16 :goto_1
.end method
