.class Lcom/android/server/power/ShutdownThread$16;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;JI[Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;
    .param p2, "val$mWifiManager"    # Landroid/net/wifi/WifiManager;
    .param p3, "val$endTime"    # J
    .param p5, "val$timeout"    # I
    .param p6, "val$done"    # [Z

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$16;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$16;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$16;->val$endTime:J

    iput p5, p0, Lcom/android/server/power/ShutdownThread$16;->val$timeout:I

    iput-object p6, p0, Lcom/android/server/power/ShutdownThread$16;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 1442
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@Start shutdown radios"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@Skip bluetooth turned off for reconnection concept."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string/jumbo v21, "sys.deviceOffReq"

    const-string/jumbo v22, "1"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    const-string/jumbo v21, "sys.radio.shutdown"

    const-string/jumbo v22, "true"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v11, 0x0

    .line 1454
    .local v11, "modemOff":Z
    const-string/jumbo v21, "nfc"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v13

    .line 1456
    .local v13, "nfc":Landroid/nfc/INfcAdapter;
    const-string/jumbo v21, "phone"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v15

    .line 1459
    .local v15, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v21, "bluetooth_manager"

    .line 1458
    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v5

    .line 1461
    .local v5, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/4 v4, 0x1

    .line 1464
    .local v4, "WiFiOff":Z
    :goto_0
    if-nez v4, :cond_0

    .line 1465
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "Disabling WiFi..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 1467
    .local v12, "msg":Landroid/os/Message;
    const/16 v21, 0xe6

    move/from16 v0, v21

    iput v0, v12, Landroid/os/Message;->what:I

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1471
    .end local v12    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "Waiting for NFC, Wi-Fi and Radio..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    if-eqz v13, :cond_d

    .line 1488
    :try_start_0
    invoke-interface {v13}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/4 v14, 0x1

    .line 1489
    .local v14, "nfcOff":Z
    :goto_1
    if-nez v14, :cond_1

    .line 1490
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "Turning off NFC..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 1504
    :try_start_1
    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1512
    :cond_2
    :goto_3
    if-eqz v15, :cond_f

    :try_start_2
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v16, 0x0

    .line 1513
    .local v16, "radioOff":Z
    :goto_4
    if-nez v16, :cond_3

    .line 1514
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "Turning off cellular radios..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1522
    :cond_3
    :goto_5
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "Waiting for NFC and Radio..."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$endTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v8, v22, v24

    .line 1525
    .local v8, "delay":J
    :goto_6
    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-lez v21, :cond_9

    .line 1526
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get13()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$timeout:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v8

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    mul-double v22, v22, v24

    .line 1528
    const-wide/high16 v24, 0x4028000000000000L    # 12.0

    .line 1527
    mul-double v22, v22, v24

    .line 1528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$timeout:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 1527
    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v20, v0

    .line 1529
    .local v20, "status":I
    add-int/lit8 v20, v20, 0x6

    .line 1530
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get20()Lcom/android/server/power/ShutdownThread;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->-wrap5(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 1532
    .end local v20    # "status":I
    :cond_4
    if-nez v16, :cond_5

    .line 1534
    :try_start_3
    invoke-interface {v15}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v21

    if-eqz v21, :cond_10

    const/16 v16, 0x0

    .line 1539
    :goto_7
    if-eqz v16, :cond_5

    .line 1540
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@Radio turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_5
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "Skip wait for modem state off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    const/4 v11, 0x1

    .line 1557
    const-string/jumbo v21, "ril.modem.board"

    const-string/jumbo v22, ""

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1558
    .local v6, "board":Ljava/lang/String;
    const-string/jumbo v21, "XMM"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1559
    const-string/jumbo v21, "ril.deviceOffRes"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1560
    .local v17, "repPhone1Off":Ljava/lang/String;
    const-string/jumbo v21, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1561
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@PhoneOff req resp"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/16 v16, 0x1

    .line 1566
    .end local v17    # "repPhone1Off":Ljava/lang/String;
    :cond_6
    const-string/jumbo v21, "DCGS"

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1567
    const-string/jumbo v21, "ril.deviceOffRes"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1568
    .local v18, "repPhoneOff":Ljava/lang/String;
    const-string/jumbo v21, "ril.deviceOffRes2"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1569
    .local v19, "repPhoneOff2":Ljava/lang/String;
    const-string/jumbo v21, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    const-string/jumbo v21, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1571
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@PhoneOff req resp"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    const/16 v16, 0x1

    .line 1578
    .end local v18    # "repPhoneOff":Ljava/lang/String;
    .end local v19    # "repPhoneOff2":Ljava/lang/String;
    :cond_7
    if-nez v14, :cond_8

    .line 1580
    :try_start_4
    invoke-interface {v13}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    const/4 v14, 0x1

    .line 1585
    :goto_8
    if-eqz v14, :cond_8

    .line 1586
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@NFC turned off."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_8
    if-eqz v16, :cond_12

    if-eqz v14, :cond_12

    .line 1603
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "NFC, Radio and modem shutdown complete."

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$done:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput-boolean v22, v21, v23

    .line 1441
    .end local v6    # "board":Ljava/lang/String;
    :cond_9
    return-void

    .line 1461
    .end local v4    # "WiFiOff":Z
    .end local v8    # "delay":J
    .end local v14    # "nfcOff":Z
    .end local v16    # "radioOff":Z
    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1463
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1462
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1487
    .restart local v4    # "WiFiOff":Z
    :cond_d
    const/4 v14, 0x1

    .restart local v14    # "nfcOff":Z
    goto/16 :goto_1

    .line 1488
    .end local v14    # "nfcOff":Z
    :cond_e
    const/4 v14, 0x0

    .restart local v14    # "nfcOff":Z
    goto/16 :goto_1

    .line 1493
    .end local v14    # "nfcOff":Z
    :catch_0
    move-exception v10

    .line 1494
    .local v10, "ex":Landroid/os/RemoteException;
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1495
    const/4 v14, 0x1

    .restart local v14    # "nfcOff":Z
    goto/16 :goto_2

    .line 1506
    .end local v10    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1507
    .restart local v10    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_3

    .line 1512
    .end local v10    # "ex":Landroid/os/RemoteException;
    :cond_f
    const/16 v16, 0x1

    .restart local v16    # "radioOff":Z
    goto/16 :goto_4

    .line 1517
    .end local v16    # "radioOff":Z
    :catch_2
    move-exception v10

    .line 1518
    .restart local v10    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1519
    const/16 v16, 0x1

    .restart local v16    # "radioOff":Z
    goto/16 :goto_5

    .line 1534
    .end local v10    # "ex":Landroid/os/RemoteException;
    .restart local v8    # "delay":J
    :cond_10
    const/16 v16, 0x1

    goto/16 :goto_7

    .line 1535
    :catch_3
    move-exception v10

    .line 1536
    .restart local v10    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "RemoteException during radio shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1537
    const/16 v16, 0x1

    goto/16 :goto_7

    .line 1580
    .end local v10    # "ex":Landroid/os/RemoteException;
    .restart local v6    # "board":Ljava/lang/String;
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1581
    :catch_4
    move-exception v10

    .line 1582
    .restart local v10    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "RemoteException during NFC shutdown"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1583
    const/4 v14, 0x1

    goto/16 :goto_8

    .line 1610
    .end local v10    # "ex":Landroid/os/RemoteException;
    :cond_12
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@before sleep"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-wide/16 v22, 0x1f4

    :try_start_5
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1616
    :goto_9
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "!@after sleep"

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-string/jumbo v21, "ShutdownThread"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "!@[Phone off retry:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "] : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1625
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$endTime:J

    move-wide/from16 v24, v0

    .line 1624
    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1625
    const-string/jumbo v23, " radio="

    .line 1624
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1626
    const-string/jumbo v23, " nfcOff="

    .line 1624
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1627
    const-string/jumbo v23, " WiFiOff="

    .line 1624
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 1627
    const-string/jumbo v23, " modem="

    .line 1624
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$16;->val$endTime:J

    move-wide/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v8, v22, v24

    goto/16 :goto_6

    .line 1613
    :catch_5
    move-exception v7

    .line 1614
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v21, "ShutdownThread"

    const-string/jumbo v22, "InterruptedException"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_9
.end method
