.class public abstract Lorg/tukaani/xz/rangecoder/RangeDecoder;
.super Lorg/tukaani/xz/rangecoder/RangeCoder;
.source "RangeDecoder.java"


# instance fields
.field code:I

.field range:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/rangecoder/RangeCoder;-><init>()V

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iput v0, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    return-void
.end method


# virtual methods
.method public decodeBit([SI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v4, -0x80000000

    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    aget-short v2, p1, p2

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v3, v3, 0xb

    mul-int v1, v3, v2

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    xor-int/2addr v3, v4

    xor-int/2addr v4, v1

    if-ge v3, v4, :cond_0

    iput v1, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    rsub-int v3, v2, 0x800

    ushr-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v2

    int-to-short v3, v3

    aput-short v3, p1, p2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    ushr-int/lit8 v3, v2, 0x5

    sub-int v3, v2, v3

    int-to-short v3, v3

    aput-short v3, p1, p2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public decodeBitTree([S)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v2

    or-int v0, v1, v2

    array-length v1, p1

    if-lt v0, v1, :cond_0

    array-length v1, p1

    sub-int v1, v0, v1

    return v1
.end method

.method public decodeDirectBits(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    ushr-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    sub-int/2addr v2, v3

    ushr-int/lit8 v1, v2, 0x1f

    iget v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    iget v3, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->range:I

    add-int/lit8 v4, v1, -0x1

    and-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/tukaani/xz/rangecoder/RangeDecoder;->code:I

    shl-int/lit8 v2, v0, 0x1

    rsub-int/lit8 v3, v1, 0x1

    or-int v0, v2, v3

    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_0

    return v0
.end method

.method public decodeReverseBitTree([S)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, p1, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    shl-int/lit8 v5, v4, 0x1

    or-int v4, v5, v0

    add-int/lit8 v2, v1, 0x1

    shl-int v5, v0, v1

    or-int/2addr v3, v5

    array-length v5, p1

    if-ge v4, v5, :cond_0

    move v1, v2

    goto :goto_0

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
