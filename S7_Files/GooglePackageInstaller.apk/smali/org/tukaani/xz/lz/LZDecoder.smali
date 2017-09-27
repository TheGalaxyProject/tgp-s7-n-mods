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
    .param p1, "dictSize"    # I
    .param p2, "presetDict"    # [B

    .prologue
    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 20
    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 21
    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 22
    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 23
    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 24
    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    .line 29
    if-eqz p2, :cond_0

    .line 30
    array-length v0, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 31
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 32
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 33
    array-length v0, p2

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public copyUncompressed(Ljava/io/DataInputStream;I)V
    .locals 3
    .param p1, "inData"    # Ljava/io/DataInputStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    .local v0, "copySize":I
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 110
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 112
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v1, v2, :cond_0

    .line 113
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 107
    :cond_0
    return-void
.end method

.method public flush([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 117
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    sub-int v0, v1, v2

    .line 118
    .local v0, "copySize":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget-object v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 121
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 124
    return v0
.end method

.method public getByte(I)I
    .locals 2
    .param p1, "dist"    # I

    .prologue
    .line 65
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v1, p1

    add-int/lit8 v0, v1, -0x1

    .line 66
    .local v0, "offset":I
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-lt p1, v1, :cond_0

    .line 67
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 69
    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    return v0
.end method

.method public hasPending()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasSpace()Z
    .locals 2

    .prologue
    .line 53
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
    .param p1, "b"    # B

    .prologue
    .line 73
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    aput-byte p1, v0, v1

    .line 75
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v0, v1, :cond_0

    .line 76
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 72
    :cond_0
    return-void
.end method

.method public repeat(II)V
    .locals 6
    .param p1, "dist"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    if-ltz p1, :cond_0

    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    if-lt p1, v3, :cond_1

    .line 81
    :cond_0
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v3

    .line 83
    :cond_1
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    iget v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    .local v2, "left":I
    sub-int v3, p2, v2

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    .line 85
    iput p1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    .line 87
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 88
    .local v0, "back":I
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-lt p1, v3, :cond_2

    .line 89
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v3, v3

    add-int/2addr v0, v3

    .line 92
    :cond_2
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iget-object v5, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "back":I
    .local v1, "back":I
    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    .line 93
    iget-object v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v3, v3

    if-ne v1, v3, :cond_4

    .line 94
    const/4 v0, 0x0

    .line 95
    .end local v1    # "back":I
    .restart local v0    # "back":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_2

    .line 97
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    iget v4, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    if-ge v3, v4, :cond_3

    .line 98
    iget v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    iput v3, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 79
    :cond_3
    return-void

    .end local v0    # "back":I
    .restart local v1    # "back":I
    :cond_4
    move v0, v1

    .end local v1    # "back":I
    .restart local v0    # "back":I
    goto :goto_0
.end method

.method public repeatPending()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    if-lez v0, :cond_0

    .line 103
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingDist:I

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pendingLen:I

    invoke-virtual {p0, v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    .line 101
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->start:I

    .line 39
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    .line 40
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->full:I

    .line 41
    iput v2, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 42
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    iget-object v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aput-byte v2, v0, v1

    .line 37
    return-void
.end method

.method public setLimit(I)V
    .locals 2
    .param p1, "outMax"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v0, v0

    iget v1, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    sub-int/2addr v0, v1

    if-gt v0, p1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->buf:[B

    array-length v0, v0

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    .line 45
    :goto_0
    return-void

    .line 49
    :cond_0
    iget v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/tukaani/xz/lz/LZDecoder;->limit:I

    goto :goto_0
.end method
