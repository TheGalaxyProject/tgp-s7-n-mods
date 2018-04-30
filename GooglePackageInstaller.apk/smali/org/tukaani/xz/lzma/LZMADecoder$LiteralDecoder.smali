.class Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
.source "LZMADecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMADecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralDecoder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;
    }
.end annotation


# instance fields
.field private final subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

.field final synthetic this$0:Lorg/tukaani/xz/lzma/LZMADecoder;


# direct methods
.method constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder;II)V
    .locals 4

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-direct {p0, p1, p2, p3}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder;II)V

    add-int v1, p2, p3

    const/4 v2, 0x1

    shl-int v1, v2, v1

    new-array v1, v1, [Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    iput-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    new-instance v2, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method decode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->-get0(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/tukaani/xz/lz/LZDecoder;->getByte(I)I

    move-result v1

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v2}, Lorg/tukaani/xz/lzma/LZMADecoder;->-get0(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->getPos()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->getSubcoderIndex(II)I

    move-result v0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->decode()V

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->subdecoders:[Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
