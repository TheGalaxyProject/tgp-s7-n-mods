.class public Lorg/tukaani/xz/LZMA2InputStream;
.super Ljava/io/InputStream;
.source "LZMA2InputStream.java"


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/DataInputStream;

.field private isLZMAChunk:Z

.field private final lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private needDictReset:Z

.field private needProps:Z

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

.field private final tempBuf:[B

.field private uncompressedSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    iput-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    new-instance v0, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {p2}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result v1

    invoke-direct {v0, v1, p3}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[B)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    iput-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    :cond_1
    return-void
.end method

.method private decodeChunkHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    return-void

    :cond_0
    const/16 v2, 0xe0

    if-ge v1, v2, :cond_1

    if-ne v1, v3, :cond_4

    :cond_1
    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    iput-boolean v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->reset()V

    :cond_2
    const/16 v2, 0x80

    if-lt v1, v2, :cond_7

    iput-boolean v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    and-int/lit8 v2, v1, 0x1f

    shl-int/lit8 v2, v2, 0x10

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0xc0

    if-lt v1, v2, :cond_5

    iput-boolean v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeProps()V

    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    iget-object v3, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v3, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->prepareInputBuffer(Ljava/io/DataInputStream;I)V

    :goto_1
    return-void

    :cond_4
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needDictReset:Z

    if-eqz v2, :cond_2

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    :cond_5
    iget-boolean v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->needProps:Z

    if-eqz v2, :cond_6

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    :cond_6
    const/16 v2, 0xa0

    if-lt v1, v2, :cond_3

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x2

    if-le v1, v2, :cond_8

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v2}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v2

    :cond_8
    iput-boolean v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    goto :goto_1
.end method

.method private decodeProps()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    const/16 v0, 0xe0

    if-le v6, v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_0
    div-int/lit8 v5, v6, 0x2d

    mul-int/lit8 v0, v5, 0x9

    mul-int/lit8 v0, v0, 0x5

    sub-int/2addr v6, v0

    div-int/lit8 v4, v6, 0x9

    mul-int/lit8 v0, v4, 0x9

    sub-int v3, v6, v0

    add-int v0, v3, v4

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    invoke-direct/range {v0 .. v5}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    return-void
.end method

.method private static getDictSize(I)I
    .locals 3

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const v0, 0x7ffffff0

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported dictionary size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p0, 0xf

    and-int/lit8 v0, v0, -0x10

    return v0
.end method

.method public static getMemoryUsage(I)I
    .locals 1

    invoke-static {p0}, Lorg/tukaani/xz/LZMA2InputStream;->getDictSize(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x68

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    throw v0
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

    iget-object v1, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/LZMA2InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/LZMA2InputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v7, 0x0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    add-int v5, p2, p3

    if-ltz v5, :cond_0

    add-int v5, p2, p3

    array-length v6, p1

    if-gt v5, v6, :cond_0

    if-nez p3, :cond_2

    return v7

    :cond_2
    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    if-nez v5, :cond_3

    new-instance v4, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v5, "Stream closed"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    if-eqz v5, :cond_4

    iget-object v4, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v4

    :cond_4
    iget-boolean v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-eqz v5, :cond_5

    return v4

    :cond_5
    const/4 v3, 0x0

    :cond_6
    if-lez p3, :cond_c

    :try_start_0
    iget v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v5, :cond_8

    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2InputStream;->decodeChunkHeader()V

    iget-boolean v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->endReached:Z

    if-eqz v5, :cond_8

    if-nez v3, :cond_7

    move v3, v4

    :cond_7
    return v3

    :cond_8
    iget v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->isLZMAChunk:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v6, p0, Lorg/tukaani/xz/LZMA2InputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5, v6, v1}, Lorg/tukaani/xz/lz/LZDecoder;->copyUncompressed(Ljava/io/DataInputStream;I)V

    :cond_9
    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v5, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v3, v0

    iget v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    sub-int/2addr v5, v0

    iput v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    iget v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->uncompressedSize:I

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    invoke-virtual {v5}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_a
    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    iput-object v2, p0, Lorg/tukaani/xz/LZMA2InputStream;->exception:Ljava/io/IOException;

    throw v2

    :cond_b
    :try_start_1
    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v5, v1}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V

    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V

    iget-object v5, p0, Lorg/tukaani/xz/LZMA2InputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;

    invoke-virtual {v5}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->isInBufferOK()Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    return v3
.end method
