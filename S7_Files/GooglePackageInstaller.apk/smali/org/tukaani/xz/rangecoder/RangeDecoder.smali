.class public abstract Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeDecoder.java"


# instance fields
.field code:I

.field range:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    .line 17
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 18
    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 16
    return-void
.end method


# virtual methods
.method public decodeBit([SI)I
    .locals 5
    .param p1, "probs"    # [S
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, -0x80000000

    .line 23
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 25
    aget-short v2, p1, p2

    .line 26
    .local v2, "prob":I
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v3, v3, 0xb

    mul-int v1, v3, v2

    .line 30
    .local v1, "bound":I
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    xor-int/2addr v3, v4

    xor-int/2addr v4, v1

    if-ge v3, v4, :cond_0

    .line 31
    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 33
    rsub-int v3, v2, 0x800

    ushr-int/lit8 v3, v3, 0x5

    .line 32
    add-int/2addr v3, v2

    int-to-short v3, v3

    aput-short v3, p1, p2

    .line 34
    const/4 v0, 0x0

    .line 42
    .local v0, "bit":I
    :goto_0
    return v0

    .line 36
    .end local v0    # "bit":I
    :cond_0
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 37
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 38
    ushr-int/lit8 v3, v2, 0x5

    sub-int v3, v2, v3

    int-to-short v3, v3

    aput-short v3, p1, p2

    .line 39
    const/4 v0, 0x1

    .restart local v0    # "bit":I
    goto :goto_0
.end method

.method public decodeBitTree([S)I
    .locals 3
    .param p1, "probs"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    .line 49
    .local v0, "symbol":I
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v2

    or-int v0, v1, v2

    .line 50
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 52
    array-length v1, p1

    sub-int v1, v0, v1

    return v1
.end method

.method public decodeDirectBits(I)I
    .locals 5
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "result":I
    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    .line 75
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    .line 76
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v2, v3

    ushr-int/lit8 v1, v2, 0x1f

    .line 77
    .local v1, "t":I
    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    .line 78
    shl-int/lit8 v2, v0, 0x1

    rsub-int/lit8 v3, v1, 0x1

    or-int v0, v2, v3

    .line 79
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    .line 81
    return v0
.end method

.method public decodeReverseBitTree([S)I
    .locals 6
    .param p1, "probs"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v4, 0x1

    .line 57
    .local v4, "symbol":I
    const/4 v1, 0x0

    .line 58
    .local v1, "i":I
    const/4 v3, 0x0

    .line 61
    .local v3, "result":I
    :goto_0
    invoke-virtual {p0, p1, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    .line 62
    .local v0, "bit":I
    shl-int/lit8 v5, v4, 0x1

    or-int v4, v5, v0

    .line 63
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    shl-int v5, v0, v1

    or-int/2addr v3, v5

    .line 64
    array-length v5, p1

    if-ge v4, v5, :cond_0

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 66
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return v3
.end method

.method public abstract normalize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
