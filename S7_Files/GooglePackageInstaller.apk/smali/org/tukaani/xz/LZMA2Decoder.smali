.class Lorg/tukaani/xz/LZMA2Decoder;
.super Lorg/tukaani/xz/LZMA2Coder;
.source "LZMA2Decoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# instance fields
.field private dictSize:I


# direct methods
.method constructor <init>([B)V
    .locals 3
    .param p1, "props"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Lorg/tukaani/xz/LZMA2Coder;-><init>()V

    .line 20
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x25

    if-le v0, v1, :cond_1

    .line 21
    :cond_0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 22
    const-string/jumbo v1, "Unsupported LZMA2 properties"

    .line 21
    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    aget-byte v0, p1, v2

    and-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    .line 25
    iget v0, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    aget-byte v1, p1, v2

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0xb

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    .line 17
    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 33
    new-instance v0, Lorg/tukaani/xz/LZMA2InputStream;

    iget v1, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    invoke-direct {v0, p1, v1}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public getMemoryUsage()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lorg/tukaani/xz/LZMA2Decoder;->dictSize:I

    invoke-static {v0}, Lorg/tukaani/xz/LZMA2InputStream;->getMemoryUsage(I)I

    move-result v0

    return v0
.end method
