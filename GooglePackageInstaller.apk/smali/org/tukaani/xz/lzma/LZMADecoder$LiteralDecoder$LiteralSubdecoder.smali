.class Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;
.source "LZMADecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralSubdecoder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;


# direct methods
.method private constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;)V
    .locals 0

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder$LiteralSubcoder;-><init>(Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;)V

    return-void
.end method


# virtual methods
.method decode()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x100

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->isLiteral()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    shl-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v6, v6, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v6}, Lorg/tukaani/xz/lzma/LZMADecoder;->-get1(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/rangecoder/RangeDecoder;

    move-result-object v6

    iget-object v7, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    invoke-virtual {v6, v7, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v6

    or-int v4, v5, v6

    if-lt v4, v8, :cond_0

    :cond_1
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->-get0(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;

    move-result-object v5

    int-to-byte v6, v4

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/lz/LZDecoder;->putByte(B)V

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v5}, Lorg/tukaani/xz/lzma/State;->updateLiteral()V

    return-void

    :cond_2
    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->-get0(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;

    move-result-object v5

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v6, v6, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v6, v6, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/lz/LZDecoder;->getByte(I)I

    move-result v2

    const/16 v3, 0x100

    :goto_0
    shl-int/lit8 v2, v2, 0x1

    and-int v1, v2, v3

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->this$1:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    iget-object v5, v5, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->this$0:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-static {v5}, Lorg/tukaani/xz/lzma/LZMADecoder;->-get1(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/rangecoder/RangeDecoder;

    move-result-object v5

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder$LiteralSubdecoder;->probs:[S

    add-int v7, v3, v1

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v0

    shl-int/lit8 v5, v4, 0x1

    or-int v4, v5, v0

    rsub-int/lit8 v5, v0, 0x0

    not-int v6, v1

    xor-int/2addr v5, v6

    and-int/2addr v3, v5

    if-ge v4, v8, :cond_1

    goto :goto_0
.end method
