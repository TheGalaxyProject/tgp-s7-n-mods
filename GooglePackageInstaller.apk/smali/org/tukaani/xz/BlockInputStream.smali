.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;
.source "BlockInputStream.java"


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J

.field private final verifyCheck:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    new-instance v18, Ljava/io/DataInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v4, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    const/16 v18, 0x0

    aget-byte v18, v4, v18

    if-nez v18, :cond_0

    new-instance v18, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct/range {v18 .. v18}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v18

    :cond_0
    const/16 v18, 0x0

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    mul-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x4

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v18

    if-nez v18, :cond_1

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Block Header is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    const/16 v18, 0x1

    aget-byte v18, v4, v18

    and-int/lit8 v18, v18, 0x3c

    if-eqz v18, :cond_2

    new-instance v18, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v19, "Unsupported options in XZ Block Header"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_2
    const/16 v18, 0x1

    aget-byte v18, v4, v18

    and-int/lit8 v18, v18, 0x3

    add-int/lit8 v9, v18, 0x1

    new-array v10, v9, [J

    new-array v11, v9, [[B

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x6

    const/16 v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v5, v4, v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x7ffffffffffffffcL

    sub-long v18, v20, v18

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    const/16 v18, 0x1

    aget-byte v18, v4, v18

    and-int/lit8 v18, v18, 0x40

    if-eqz v18, :cond_5

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    :cond_3
    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct/range {v18 .. v18}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Block Header is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    :cond_5
    const/16 v18, 0x1

    aget-byte v18, v4, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_6
    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v9, :cond_8

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v18

    aput-wide v18, v10, v16

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v12

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v12, v18

    if-lez v18, :cond_7

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct/range {v18 .. v18}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v18

    :cond_7
    long-to-int v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    aput-object v18, v11, v16

    aget-object v18, v11, v16

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    :goto_1
    if-lez v16, :cond_a

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v18

    if-eqz v18, :cond_9

    new-instance v18, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v19, "Unsupported options in XZ Block Header"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_9
    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    :cond_a
    const-wide/16 v18, -0x1

    cmp-long v18, p5, v18

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    move/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v19

    add-int v15, v18, v19

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v18, v18, p5

    if-ltz v18, :cond_b

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index does not match a Block Header"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_b
    int-to-long v0, v15

    move-wide/from16 v18, v0

    sub-long v6, p5, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gtz v18, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v6

    if-eqz v18, :cond_d

    :cond_c
    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index does not match a Block Header"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p7

    if-eqz v18, :cond_e

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index does not match a Block Header"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_e
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_f
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v14, v0, [Lorg/tukaani/xz/FilterDecoder;

    const/16 v16, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    aget-wide v18, v10, v16

    const-wide/16 v20, 0x21

    cmp-long v18, v18, v20

    if-nez v18, :cond_10

    new-instance v18, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v19, v11, v16

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v18, v14, v16

    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_10
    aget-wide v18, v10, v16

    const-wide/16 v20, 0x3

    cmp-long v18, v18, v20

    if-nez v18, :cond_11

    new-instance v18, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v19, v11, v16

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v18, v14, v16

    goto :goto_3

    :cond_11
    aget-wide v18, v10, v16

    invoke-static/range {v18 .. v19}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v18

    if-eqz v18, :cond_12

    new-instance v18, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v20, v10, v16

    aget-object v19, v11, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v18, v14, v16

    goto :goto_3

    :cond_12
    new-instance v18, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unknown Filter ID "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-wide v20, v10, v16

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_13
    invoke-static {v14}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    if-ltz p4, :cond_15

    const/16 v17, 0x0

    const/16 v16, 0x0

    :goto_4
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    aget-object v18, v14, v16

    invoke-interface/range {v18 .. v18}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    :cond_14
    move/from16 v0, v17

    move/from16 v1, p4

    if-le v0, v1, :cond_15

    new-instance v18, Lorg/tukaani/xz/MemoryLimitException;

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v18

    :cond_15
    new-instance v18, Lorg/tukaani/xz/CountingInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    array-length v0, v14

    move/from16 v18, v0

    add-int/lit8 v16, v18, -0x1

    :goto_5
    if-ltz v16, :cond_16

    aget-object v18, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method private validate()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, -0x1

    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v5}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    cmp-long v5, v6, v0

    if-eqz v5, :cond_1

    :cond_0
    new-instance v5, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v5

    :cond_1
    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    iget-wide v8, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :cond_2
    move-wide v2, v0

    :goto_0
    const-wide/16 v6, 0x1

    add-long v0, v2, v6

    const-wide/16 v6, 0x3

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v5

    :cond_3
    move-wide v2, v0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v5}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v5

    new-array v4, v5, [B

    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->readFully([B)V

    iget-boolean v5, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v5}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance v5, Lorg/tukaani/xz/CorruptedInputException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Integrity check ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v7}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") does not match"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .locals 4

    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    if-eqz v3, :cond_0

    return v8

    :cond_0
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_8

    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3, p1, p2, v2}, Lorg/tukaani/xz/check/Check;->update([BII)V

    :cond_1
    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v3}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    cmp-long v3, v0, v10

    if-ltz v3, :cond_2

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    :cond_2
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v3

    :cond_3
    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v3, v4, v10

    if-ltz v3, :cond_2

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    :cond_4
    if-lt v2, p3, :cond_5

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    iget-wide v6, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v8, :cond_6

    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v3

    :cond_6
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    iput-boolean v9, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    :cond_7
    :goto_0
    return v2

    :cond_8
    if-ne v2, v8, :cond_7

    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    iput-boolean v9, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    goto :goto_0
.end method
