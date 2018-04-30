.class public Lorg/tukaani/xz/index/IndexHash;
.super Lorg/tukaani/xz/index/IndexBase;
.source "IndexHash.java"


# instance fields
.field private hash:Lorg/tukaani/xz/check/Check;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    invoke-direct {p0, v1}, Lorg/tukaani/xz/index/IndexBase;-><init>(Lorg/tukaani/xz/XZIOException;)V

    :try_start_0
    new-instance v1, Lorg/tukaani/xz/check/SHA256;

    invoke-direct {v1}, Lorg/tukaani/xz/check/SHA256;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/tukaani/xz/check/CRC32;

    invoke-direct {v1}, Lorg/tukaani/xz/check/CRC32;-><init>()V

    iput-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    goto :goto_0
.end method


# virtual methods
.method public add(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/tukaani/xz/index/IndexBase;->add(JJ)V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3, p4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/check/Check;->update([B)V

    return-void
.end method

.method public bridge synthetic getIndexSize()J
    .locals 2

    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getStreamSize()J
    .locals 2

    invoke-super {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public validate(Ljava/io/InputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update(I)V

    new-instance v5, Ljava/util/zip/CheckedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->recordCount:J

    move-wide/from16 v18, v0

    cmp-long v18, v10, v18

    if-eqz v18, :cond_0

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_0
    new-instance v9, Lorg/tukaani/xz/index/IndexHash;

    invoke-direct {v9}, Lorg/tukaani/xz/index/IndexHash;-><init>()V

    const-wide/16 v6, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->recordCount:J

    move-wide/from16 v18, v0

    cmp-long v18, v6, v18

    if-gez v18, :cond_3

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v14

    invoke-static {v5}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v12

    :try_start_0
    invoke-virtual {v9, v14, v15, v12, v13}, Lorg/tukaani/xz/index/IndexHash;->add(JJ)V
    :try_end_0
    .catch Lorg/tukaani/xz/XZIOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, v9, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1

    iget-wide v0, v9, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_2

    :cond_1
    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :catch_0
    move-exception v3

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_2
    iget-wide v0, v9, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1

    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    goto :goto_0

    :cond_3
    iget-wide v0, v9, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->blocksSum:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_4

    iget-wide v0, v9, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->uncompressedSum:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_5

    :cond_4
    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    iget-wide v0, v9, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/tukaani/xz/index/IndexHash;->indexListSize:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_4

    iget-object v0, v9, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/tukaani/xz/index/IndexHash;->hash:Lorg/tukaani/xz/check/Check;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v19

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_4

    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {p0 .. p0}, Lorg/tukaani/xz/index/IndexHash;->getIndexPaddingSize()I

    move-result v4

    :goto_1
    if-lez v4, :cond_7

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v18

    if-eqz v18, :cond_6

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v16

    const/4 v4, 0x0

    :goto_2
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    mul-int/lit8 v18, v4, 0x8

    ushr-long v18, v16, v18

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_8

    new-instance v18, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v19, "XZ Index is corrupt"

    invoke-direct/range {v18 .. v19}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method
