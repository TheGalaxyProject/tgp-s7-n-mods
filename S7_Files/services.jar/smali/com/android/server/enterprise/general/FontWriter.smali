.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final NEW_FONT_DIRECTORY:Ljava/lang/String; = "/data/app_fonts/"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 72
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 74
    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 52
    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "FontDir"    # Ljava/io/File;
    .param p2, "folderName"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    .local v3, "newDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "tmp":[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 273
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 277
    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 279
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    .line 291
    .end local v2    # "i":I
    :goto_1
    return v0

    .line 289
    :cond_1
    const/4 v0, 0x0

    .local v0, "bRet":Z
    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 307
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 309
    .local v3, "run":Ljava/lang/Runtime;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "chmod 744 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 311
    .local v2, "myProcess":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 313
    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Cannot chmod"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .end local v2    # "myProcess":Ljava/lang/Process;
    .end local v3    # "run":Ljava/lang/Runtime;
    :catch_0
    move-exception v1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_1
    move-exception v0

    .local v0, "iEx":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 17
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 351
    move-object/from16 v12, p2

    .line 353
    .local v12, "myInputStream":Ljava/io/InputStream;
    move-object/from16 v11, p1

    .line 355
    .local v11, "myDirectory":Ljava/io/File;
    move-object/from16 v10, p3

    .line 357
    .local v10, "myDestination":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 363
    .local v2, "absolutePath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v4, "dest":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 367
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 371
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 373
    new-instance v14, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    .line 377
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 381
    .local v3, "b":[B
    const/4 v13, 0x0

    .line 383
    .local v13, "read":I
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v15, 0x0

    invoke-virtual {v14, v3, v15, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 397
    .end local v3    # "b":[B
    .end local v4    # "dest":Ljava/io/File;
    .end local v13    # "read":I
    :catch_0
    move-exception v6

    .line 401
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 405
    .local v8, "length":J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_0

    .line 407
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 411
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    if-eqz p2, :cond_1

    .line 421
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 433
    :cond_1
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_2

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 447
    :cond_2
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v14, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 461
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "length":J
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 467
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 471
    .restart local v8    # "length":J
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-nez v14, :cond_4

    .line 473
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 349
    :cond_4
    return-void

    .line 389
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "length":J
    .restart local v3    # "b":[B
    .restart local v4    # "dest":Ljava/io/File;
    .restart local v13    # "read":I
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->flush()V

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 393
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 419
    if-eqz p2, :cond_6

    .line 421
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 433
    :cond_6
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v14, :cond_7

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 447
    :cond_7
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v14, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v14}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 453
    :catch_1
    move-exception v5

    .line 455
    .local v5, "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "copyFontFile : bos.close() error"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 425
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 427
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "copyFontFile : myInputStream.close() error"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 439
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 441
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "copyFontFile : fOut.close() error"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 425
    .end local v3    # "b":[B
    .end local v4    # "dest":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v13    # "read":I
    .restart local v6    # "ex":Ljava/lang/Exception;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "length":J
    :catch_4
    move-exception v5

    .line 427
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "copyFontFile : myInputStream.close() error"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 439
    .end local v5    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v5

    .line 441
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "copyFontFile : fOut.close() error"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 453
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 455
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "copyFontFile : bos.close() error"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 415
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "length":J
    :catchall_0
    move-exception v14

    .line 419
    if-eqz p2, :cond_8

    .line 421
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 433
    :cond_8
    :goto_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v15, :cond_9

    .line 435
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 447
    :cond_9
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v15, :cond_a

    .line 449
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v15}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 415
    :cond_a
    :goto_8
    throw v14

    .line 425
    :catch_7
    move-exception v5

    .line 427
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 439
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 441
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "copyFontFile : fOut.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 453
    .end local v5    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v5

    .line 455
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "copyFontFile : bos.close() error"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 19
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v8, 0x0

    .line 485
    .local v8, "fOut":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 487
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object/from16 v14, p2

    .line 489
    .local v14, "myInputStream":Ljava/io/InputStream;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 490
    .local v11, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 495
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v5, "dest":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    .local v9, "fOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/16 v16, 0x400

    :try_start_2
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 505
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "b":[B
    const/4 v15, 0x0

    .line 507
    .local v15, "read":I
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_5

    .line 509
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v2, v0, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 521
    .end local v2    # "b":[B
    .end local v15    # "read":I
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .line 525
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "dest":Ljava/io/File;
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 529
    .local v12, "length":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_0

    .line 531
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 535
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    if-eqz p2, :cond_1

    .line 545
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 557
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 559
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 571
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 573
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 591
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "length":J
    :cond_3
    :goto_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v10    # "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 595
    .restart local v12    # "length":J
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_4

    .line 597
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 481
    :cond_4
    return-void

    .line 513
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "length":J
    .restart local v2    # "b":[B
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dest":Ljava/io/File;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v15    # "read":I
    :cond_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 515
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 517
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 543
    if-eqz p2, :cond_6

    .line 545
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 557
    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    .line 559
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 571
    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    .line 573
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    :goto_7
    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .local v8, "fOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 549
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 551
    .local v6, "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 563
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 565
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 577
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 579
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 549
    .end local v2    # "b":[B
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "dest":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .end local v15    # "read":I
    .restart local v7    # "ex":Ljava/lang/Exception;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "length":J
    :catch_4
    move-exception v6

    .line 551
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 563
    .end local v6    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v6

    .line 565
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 577
    .end local v6    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 579
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 539
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "length":J
    :catchall_0
    move-exception v16

    .line 543
    :goto_8
    if-eqz p2, :cond_9

    .line 545
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 557
    :cond_9
    :goto_9
    if-eqz v8, :cond_a

    .line 559
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 571
    :cond_a
    :goto_a
    if-eqz v3, :cond_b

    .line 573
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 539
    :cond_b
    :goto_b
    throw v16

    .line 549
    :catch_7
    move-exception v6

    .line 551
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 563
    .end local v6    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 565
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 577
    .end local v6    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v6

    .line 579
    .restart local v6    # "e":Ljava/io/IOException;
    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 539
    .end local v6    # "e":Ljava/io/IOException;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "dest":Ljava/io/File;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v16

    move-object v3, v4

    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 521
    .end local v5    # "dest":Ljava/io/File;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .local v8, "fOut":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    goto/16 :goto_1

    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v8    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "dest":Ljava/io/File;
    .restart local v9    # "fOut":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "fOut":Ljava/io/FileOutputStream;
    .local v8, "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fontName"    # Ljava/lang/String;

    .prologue
    .line 182
    sget-object v10, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "createFontDirectory : Start"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/data/app_fonts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v5, "newFontDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 186
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 187
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 188
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 194
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "tmp":[Ljava/lang/String;
    if-nez v9, :cond_0

    .line 197
    const/4 v10, 0x0

    return-object v10

    .line 200
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v9

    if-ge v1, v10, :cond_1

    .line 204
    aget-object v10, v9, v1

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 213
    sget-object v10, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Font directory  : Created"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 223
    .local v7, "run":Ljava/lang/Runtime;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "chmod 711 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 227
    .local v4, "myProcess":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 229
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v10

    if-eqz v10, :cond_2

    .line 231
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Cannot chmod"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    .end local v4    # "myProcess":Ljava/lang/Process;
    .end local v7    # "run":Ljava/lang/Runtime;
    .end local v8    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 239
    .local v3, "ioEx":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "IOException : "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v3    # "ioEx":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v0

    .line 215
    :cond_3
    sget-object v10, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Font directory  : Not Created"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 243
    :catch_1
    move-exception v2

    .line 245
    .local v2, "iEx":Ljava/lang/InterruptedException;
    sget-object v10, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "InterruptedException : "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, ""

    .line 113
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    .line 121
    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    .line 123
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 125
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 127
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 156
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    .end local v1    # "dest":Ljava/io/File;
    :cond_1
    :goto_1
    const-string/jumbo v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    .line 105
    return-void

    .line 146
    .restart local v1    # "dest":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    .end local v1    # "dest":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 132
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_2

    .line 142
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 154
    :cond_2
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    .line 156
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 160
    :catch_3
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 146
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 140
    :try_start_6
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 154
    :cond_3
    :goto_3
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_4

    .line 156
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 136
    :cond_4
    :goto_4
    throw v4

    .line 146
    :catch_5
    move-exception v2

    .line 148
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 160
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
