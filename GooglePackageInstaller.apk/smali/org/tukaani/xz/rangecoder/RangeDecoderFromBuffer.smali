.class public final Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;
.super Lorg/tukaani/xz/rangecoder/RangeDecoder;
.source "RangeDecoderFromBuffer.java"


# instance fields
.field private final buf:[B

.field private end:I

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;-><init>()V

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    add-int/lit8 v0, p1, -0x5

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInBufferOK()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v1
.end method

.method public prepareInputBuffer(Ljava/io/DataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->code:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->range:I

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->pos:I

    add-int/lit8 v0, p2, -0x5

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    iget-object v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoderFromBuffer;->end:I

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method
