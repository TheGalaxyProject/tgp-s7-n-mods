.class public Lorg/tukaani/xz/SingleXZInputStream;
.super Ljava/io/InputStream;
.source "SingleXZInputStream.java"


# instance fields
.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private final check:Lorg/tukaani/xz/check/Check;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final indexHash:Lorg/tukaani/xz/index/IndexHash;

.field private final memoryLimit:I

.field private final streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

.field private final tempBuf:[B

.field private final verifyCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1}, Lorg/tukaani/xz/SingleXZInputStream;->readStreamHeader(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ[B)V

    .line 184
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;IZ[B)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .param p3, "verifyCheck"    # Z
    .param p4, "streamHeader"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 49
    new-instance v0, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v0}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    .line 51
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    .line 190
    iput-object p1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 191
    iput p2, p0, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    .line 192
    iput-boolean p3, p0, Lorg/tukaani/xz/SingleXZInputStream;->verifyCheck:Z

    .line 193
    invoke-static {p4}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    .line 194
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    iget v0, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 189
    return-void
.end method

.method private static readStreamHeader(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 61
    .local v0, "streamHeader":[B
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 62
    return-object v0
.end method

.method private validateStreamFooter()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/16 v2, 0xc

    new-array v0, v2, [B

    .line 329
    .local v0, "buf":[B
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 330
    invoke-static {v0}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v1

    .line 332
    .local v1, "streamFooterFlags":Lorg/tukaani/xz/common/StreamFlags;
    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->streamHeaderFlags:Lorg/tukaani/xz/common/StreamFlags;

    invoke-static {v2, v1}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    iget-object v2, p0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    invoke-virtual {v2}, Lorg/tukaani/xz/index/IndexHash;->getIndexSize()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 335
    :cond_0
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    .line 336
    const-string/jumbo v3, "XZ Stream Footer does not match Stream Header"

    .line 335
    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 357
    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 369
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 366
    :cond_0
    return-void

    .line 370
    :catchall_0
    move-exception v0

    .line 371
    iput-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    .line 370
    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 237
    iget-object v1, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SingleXZInputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 17
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 276
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 275
    :cond_1
    add-int v5, p2, p3

    if-ltz v5, :cond_0

    add-int v5, p2, p3

    move-object/from16 v0, p1

    array-length v6, v0

    if-gt v5, v6, :cond_0

    .line 278
    if-nez p3, :cond_2

    .line 279
    const/4 v5, 0x0

    return v5

    .line 281
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    if-nez v5, :cond_3

    .line 282
    new-instance v5, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v6, "Stream closed"

    invoke-direct {v5, v6}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 284
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v5, :cond_4

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    throw v5

    .line 287
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    if-eqz v5, :cond_5

    .line 288
    const/4 v5, -0x1

    return v5

    .line 290
    :cond_5
    const/16 v16, 0x0

    .line 293
    .local v16, "size":I
    :cond_6
    :goto_0
    if-lez p3, :cond_a

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_7

    .line 296
    :try_start_1
    new-instance v5, Lorg/tukaani/xz/BlockInputStream;

    .line 297
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/tukaani/xz/SingleXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/tukaani/xz/SingleXZInputStream;->verifyCheck:Z

    move-object/from16 v0, p0

    iget v9, v0, Lorg/tukaani/xz/SingleXZInputStream;->memoryLimit:I

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    .line 296
    invoke-direct/range {v5 .. v13}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_1
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v15

    .line 308
    .local v15, "ret":I
    if-lez v15, :cond_9

    .line 309
    add-int v16, v16, v15

    .line 310
    add-int p2, p2, v15

    .line 311
    sub-int p3, p3, v15

    goto :goto_0

    .line 298
    .end local v15    # "ret":I
    :catch_0
    move-exception v14

    .line 299
    .local v14, "e":Lorg/tukaani/xz/IndexIndicatorException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/tukaani/xz/SingleXZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/index/IndexHash;->validate(Ljava/io/InputStream;)V

    .line 300
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/SingleXZInputStream;->validateStreamFooter()V

    .line 301
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->endReached:Z

    .line 302
    if-lez v16, :cond_8

    .end local v16    # "size":I
    :goto_1
    return v16

    .restart local v16    # "size":I
    :cond_8
    const/16 v16, -0x1

    goto :goto_1

    .line 312
    .end local v14    # "e":Lorg/tukaani/xz/IndexIndicatorException;
    .restart local v15    # "ret":I
    :cond_9
    const/4 v5, -0x1

    if-ne v15, v5, :cond_6

    .line 313
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->indexHash:Lorg/tukaani/xz/index/IndexHash;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v6}, Lorg/tukaani/xz/BlockInputStream;->getUnpaddedSize()J

    move-result-wide v6

    .line 314
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v8}, Lorg/tukaani/xz/BlockInputStream;->getUncompressedSize()J

    move-result-wide v8

    .line 313
    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V

    .line 315
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/tukaani/xz/SingleXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 318
    .end local v15    # "ret":I
    :catch_1
    move-exception v4

    .line 319
    .local v4, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/tukaani/xz/SingleXZInputStream;->exception:Ljava/io/IOException;

    .line 320
    if-nez v16, :cond_a

    .line 321
    throw v4

    .line 324
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a
    return v16
.end method
