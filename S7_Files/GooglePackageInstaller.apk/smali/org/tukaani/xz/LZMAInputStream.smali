.class public Lorg/tukaani/xz/LZMAInputStream;
.super Ljava/io/InputStream;
.source "LZMAInputStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

.field private remainingSize:J

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lorg/tukaani/xz/LZMAInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/tukaani/xz/LZMAInputStream;->-assertionsDisabled:Z

    .line 37
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 12
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "memoryLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v11, 0x8

    .line 215
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    .line 64
    iput-object v6, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 217
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v8, "inData":Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 223
    .local v4, "propsByte":B
    const/4 v5, 0x0

    .line 224
    .local v5, "dictSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x4

    if-ge v7, v0, :cond_0

    .line 225
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    mul-int/lit8 v1, v7, 0x8

    shl-int/2addr v0, v1

    or-int/2addr v5, v0

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 231
    :cond_0
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "uncompSize":J
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v11, :cond_1

    .line 233
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    mul-int/lit8 v10, v7, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v2, v0

    .line 232
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 236
    :cond_1
    invoke-static {v5, v4}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v9

    .line 237
    .local v9, "memoryNeeded":I
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-le v9, p2, :cond_2

    .line 238
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v9, p2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    .line 240
    invoke-direct/range {v0 .. v6}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[B)V

    .line 216
    return-void
.end method

.method private static getDictSize(I)I
    .locals 2
    .param p0, "dictSize"    # I

    .prologue
    .line 136
    if-ltz p0, :cond_0

    const v0, 0x7ffffff0

    if-le p0, v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string/jumbo v1, "LZMA dictionary is too big for this implementation"

    .line 137
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_2

    .line 151
    const/16 p0, 0x1000

    .line 155
    :cond_2
    add-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public static getMemoryUsage(IB)I
    .locals 5
    .param p0, "dictSize"    # I
    .param p1, "propsByte"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;,
            Lorg/tukaani/xz/CorruptedInputException;
        }
    .end annotation

    .prologue
    .line 89
    if-ltz p0, :cond_0

    const v3, 0x7ffffff0

    if-le p0, v3, :cond_1

    .line 90
    :cond_0
    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 91
    const-string/jumbo v4, "LZMA dictionary is too big for this implementation"

    .line 90
    invoke-direct {v3, v4}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_1
    and-int/lit16 v2, p1, 0xff

    .line 94
    .local v2, "props":I
    const/16 v3, 0xe0

    if-le v2, v3, :cond_2

    .line 95
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v4, "Invalid LZMA properties byte"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_2
    rem-int/lit8 v2, v2, 0x2d

    .line 98
    div-int/lit8 v1, v2, 0x9

    .line 99
    .local v1, "lp":I
    mul-int/lit8 v3, v1, 0x9

    sub-int v0, v2, v3

    .line 101
    .local v0, "lc":I
    invoke-static {p0, v0, v1}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(III)I

    move-result v3

    return v3
.end method

.method public static getMemoryUsage(III)I
    .locals 3
    .param p0, "dictSize"    # I
    .param p1, "lc"    # I
    .param p2, "lp"    # I

    .prologue
    .line 121
    if-ltz p1, :cond_0

    const/16 v0, 0x8

    if-le p1, v0, :cond_1

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid lc or lp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    if-ltz p2, :cond_0

    const/4 v0, 0x4

    if-gt p2, v0, :cond_0

    .line 131
    invoke-static {p0}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xa

    .line 132
    add-int v1, p1, p2

    const/16 v2, 0x600

    shl-int v1, v2, v1

    div-int/lit16 v1, v1, 0x400

    .line 131
    add-int/2addr v0, v1

    return v0
.end method

.method private initialize(Ljava/io/InputStream;JBI[B)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "propsByte"    # B
    .param p5, "dictSize"    # I
    .param p6, "presetDict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 377
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 378
    const-string/jumbo v1, "Uncompressed size is too big"

    .line 377
    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    and-int/lit16 v9, p4, 0xff

    .line 383
    .local v9, "props":I
    const/16 v0, 0xe0

    if-le v9, v0, :cond_1

    .line 384
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v1, "Invalid LZMA properties byte"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    div-int/lit8 v6, v9, 0x2d

    .line 387
    .local v6, "pb":I
    mul-int/lit8 v0, v6, 0x9

    mul-int/lit8 v0, v0, 0x5

    sub-int/2addr v9, v0

    .line 388
    div-int/lit8 v5, v9, 0x9

    .line 389
    .local v5, "lp":I
    mul-int/lit8 v0, v5, 0x9

    sub-int v4, v9, v0

    .line 393
    .local v4, "lc":I
    if-ltz p5, :cond_2

    const v0, 0x7ffffff0

    if-le p5, v0, :cond_3

    .line 394
    :cond_2
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 395
    const-string/jumbo v1, "LZMA dictionary is too big for this implementation"

    .line 394
    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v7, p5

    move-object/from16 v8, p6

    .line 397
    invoke-direct/range {v0 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[B)V

    .line 373
    return-void
.end method

.method private initialize(Ljava/io/InputStream;JIIII[B)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "uncompSize"    # J
    .param p4, "lc"    # I
    .param p5, "lp"    # I
    .param p6, "pb"    # I
    .param p7, "dictSize"    # I
    .param p8, "presetDict"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 406
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    if-gez p4, :cond_1

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 406
    :cond_1
    const/16 v0, 0x8

    if-gt p4, v0, :cond_0

    if-ltz p5, :cond_0

    if-gt p5, v2, :cond_0

    .line 407
    if-ltz p6, :cond_0

    if-gt p6, v2, :cond_0

    .line 410
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 414
    invoke-static {p7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result p7

    .line 415
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    int-to-long v0, p7

    cmp-long v0, v0, p2

    if-lez v0, :cond_2

    .line 416
    long-to-int v0, p2

    invoke-static {v0}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result p7

    .line 418
    :cond_2
    new-instance v0, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {p7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v1

    invoke-direct {v0, v1, p8}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[B)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 419
    new-instance v0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-direct {v0, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 420
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 421
    iput-wide p2, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 403
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 560
    :cond_0
    return-void

    .line 564
    :catchall_0
    move-exception v0

    .line 565
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 564
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

    .line 444
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/LZMAInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 472
    :cond_0
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 471
    :cond_1
    add-int v5, p2, p3

    if-ltz v5, :cond_0

    add-int v5, p2, p3

    array-length v6, p1

    if-gt v5, v6, :cond_0

    .line 474
    if-nez p3, :cond_2

    .line 475
    const/4 v5, 0x0

    return v5

    .line 477
    :cond_2
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-nez v5, :cond_3

    .line 478
    new-instance v5, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v6, "Stream closed"

    invoke-direct {v5, v6}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 480
    :cond_3
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    if-eqz v5, :cond_4

    .line 481
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    throw v5

    .line 483
    :cond_4
    iget-boolean v5, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v5, :cond_5

    .line 484
    const/4 v5, -0x1

    return v5

    .line 487
    :cond_5
    const/4 v4, 0x0

    .line 489
    .local v4, "size":I
    :cond_6
    if-lez p3, :cond_f

    .line 493
    move v1, p3

    .line 494
    .local v1, "copySizeMax":I
    :try_start_0
    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_7

    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    int-to-long v8, p3

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    .line 495
    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    long-to-int v1, v6

    .line 497
    :cond_7
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v5, v1}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :try_start_1
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_1
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 520
    :goto_0
    :try_start_2
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v5, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v0

    .line 521
    .local v0, "copiedSize":I
    add-int/2addr p2, v0

    .line 522
    sub-int/2addr p3, v0

    .line 523
    add-int/2addr v4, v0

    .line 525
    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_b

    .line 527
    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    .line 528
    sget-boolean v5, Lorg/tukaani/xz/LZMAInputStream;->-assertionsDisabled:Z

    if-nez v5, :cond_a

    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_9

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 548
    .end local v0    # "copiedSize":I
    :catch_0
    move-exception v2

    .line 549
    .local v2, "e":Ljava/io/IOException;
    iput-object v2, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 550
    throw v2

    .line 502
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 507
    .local v3, "e":Lorg/tukaani/xz/CorruptedInputException;
    :try_start_3
    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-nez v5, :cond_8

    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 510
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 516
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v5}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    goto :goto_0

    .line 508
    :cond_8
    throw v3

    .line 528
    .end local v3    # "e":Lorg/tukaani/xz/CorruptedInputException;
    .restart local v0    # "copiedSize":I
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 530
    :cond_a
    iget-wide v6, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_b

    .line 531
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 534
    :cond_b
    iget-boolean v5, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v5, :cond_6

    .line 539
    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v5}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 540
    :cond_c
    new-instance v5, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 542
    :cond_d
    if-nez v4, :cond_e

    const/4 v4, -0x1

    .end local v4    # "size":I
    :cond_e
    return v4

    .line 546
    .end local v0    # "copiedSize":I
    .end local v1    # "copySizeMax":I
    .restart local v4    # "size":I
    :cond_f
    return v4
.end method
