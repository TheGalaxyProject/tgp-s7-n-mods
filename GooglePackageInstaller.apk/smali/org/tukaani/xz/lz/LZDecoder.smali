.class public final Lorg/tukaani/xz/lz/LZDecoder;
.super Ljava/lang/Object;
.source "LZDecoder.java"


# instance fields
.field private final buf:[B

.field private full:I

.field private limit:I

.field private pendingDist:I

.field private pendingLen:I

.field private pos:I

.field private start:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    if-eqz p2, :cond_0

    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    array-length v0, p2

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/DataInputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 3

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int v0, v1, v2

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    return v0
.end method

.method public getByte(I)I
    .locals 2

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public getPos()I
    .locals 1

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    return v0
.end method

.method public hasPending()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSpace()Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putByte(B)V
    .locals 3

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_0
    return-void
.end method

.method public repeat(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-lt p1, v3, :cond_1

    :cond_0
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v3

    :cond_1
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, p2, v2

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v3, p1

    add-int/lit8 v0, v3, -0x1

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-lt p1, v3, :cond_2

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v3, v3

    add-int/2addr v0, v3

    :cond_2
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget-object v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v3, v3

    if-ne v1, v3, :cond_4

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public repeatPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-byte v2, v0, v1

    return-void
.end method

.method public setLimit(I)V
    .locals 2

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v0, v0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_0
.end method
