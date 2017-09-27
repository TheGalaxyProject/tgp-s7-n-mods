.class Lcom/android/server/DcmNextiPlayReadyService$MainThread;
.super Ljava/lang/Thread;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;

.field private urlToRead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DcmNextiPlayReadyService;
    .param p2, "urlToRead"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 279
    iput-object p2, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    .line 278
    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 283
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 285
    const/16 v29, 0x0

    .line 287
    .local v29, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    new-instance v28, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 290
    .local v28, "url":Ljava/net/URL;
    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v29, v0

    .line 292
    .local v29, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v25

    .line 293
    .local v25, "trustStore":Ljava/security/KeyStore;
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 294
    new-instance v24, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V

    .line 295
    .local v24, "sf":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 297
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v22

    .line 298
    .local v22, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 300
    .local v16, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v32, "Date"

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 302
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v23, "s":Ljava/lang/StringBuilder;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 304
    .local v13, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 305
    .local v30, "value":Ljava/lang/String;
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " Date List value "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v13    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "item$iterator":Ljava/util/Iterator;
    .end local v22    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v23    # "s":Ljava/lang/StringBuilder;
    .end local v24    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v25    # "trustStore":Ljava/security/KeyStore;
    .end local v28    # "url":Ljava/net/URL;
    .end local v29    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v30    # "value":Ljava/lang/String;
    .end local v31    # "value$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v10

    .line 332
    .local v10, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "Catch SecurityException Exceptions"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v10}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v10}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "resetting flag for later threads"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_1

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 282
    .end local v10    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    return-void

    .line 309
    .restart local v13    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "item$iterator":Ljava/util/Iterator;
    .restart local v22    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v23    # "s":Ljava/lang/StringBuilder;
    .restart local v24    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v25    # "trustStore":Ljava/security/KeyStore;
    .restart local v28    # "url":Ljava/net/URL;
    .restart local v29    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v31    # "value$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 311
    .local v12, "epochTime":Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v32, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v33, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 313
    .local v6, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 315
    const-wide/16 v14, 0x0

    .line 316
    .local v14, "epoch_time_long":J
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 317
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "epoch time: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-wide/16 v32, 0x0

    cmp-long v32, v14, v32

    if-eqz v32, :cond_4

    .line 319
    const-wide/16 v32, 0x3e8

    div-long v18, v14, v32

    .line 320
    .local v18, "networktime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v20, v32, v34

    .line 321
    .local v20, "recvElapsedTime":J
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "networktime "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "recvElapsedTime"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/DcmNextiPlayReadyService;->onNetworkStateChanged(JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    .end local v6    # "dateFormat":Ljava/text/DateFormat;
    .end local v12    # "epochTime":Ljava/util/Date;
    .end local v13    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "epoch_time_long":J
    .end local v16    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v18    # "networktime":J
    .end local v20    # "recvElapsedTime":J
    .end local v23    # "s":Ljava/lang/StringBuilder;
    .end local v31    # "value$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "resetting flag for later threads"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_1

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 325
    .restart local v6    # "dateFormat":Ljava/text/DateFormat;
    .restart local v12    # "epochTime":Ljava/util/Date;
    .restart local v13    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "epoch_time_long":J
    .restart local v16    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v23    # "s":Ljava/lang/StringBuilder;
    .restart local v31    # "value$iterator":Ljava/util/Iterator;
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v26, v32, v34

    .line 326
    .local v26, "systime":J
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 335
    .end local v6    # "dateFormat":Ljava/text/DateFormat;
    .end local v12    # "epochTime":Ljava/util/Date;
    .end local v13    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "epoch_time_long":J
    .end local v16    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "item$iterator":Ljava/util/Iterator;
    .end local v22    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v23    # "s":Ljava/lang/StringBuilder;
    .end local v24    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v25    # "trustStore":Ljava/security/KeyStore;
    .end local v26    # "systime":J
    .end local v28    # "url":Ljava/net/URL;
    .end local v29    # "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v31    # "value$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v11

    .line 336
    .local v11, "e":Ljava/text/ParseException;
    :try_start_4
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "epoch time parsing error"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v11}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "resetting flag for later threads"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_1

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 346
    .end local v11    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v8

    .line 347
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "Catch other Exceptions"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 351
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "resetting flag for later threads"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_1

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 342
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 343
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "Catch IOException Exceptions"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 351
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "resetting flag for later threads"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_1

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 338
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 339
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "Catch IllegalArgumentException Exceptions"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 351
    const-string/jumbo v32, "DcmNextiPlayReadyService"

    const-string/jumbo v33, "resetting flag for later threads"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v32, 0x1

    sput v32, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_1

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 350
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v32

    .line 351
    const-string/jumbo v33, "DcmNextiPlayReadyService"

    const-string/jumbo v34, "resetting flag for later threads"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/16 v33, 0x1

    sput v33, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 354
    if-eqz v29, :cond_5

    .line 356
    invoke-virtual/range {v29 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 350
    :cond_5
    throw v32
.end method
