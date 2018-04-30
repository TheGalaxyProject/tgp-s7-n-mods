.class public final Lorg/tukaani/xz/lzma/LZMADecoder;
.super Lorg/tukaani/xz/lzma/LZMACoder;
.source "LZMADecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;,
        Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;
    }
.end annotation


# instance fields
.field private final literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

.field private final lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private final matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

.field private final rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

.field private final repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;


# direct methods
.method static synthetic -get0(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/lz/LZDecoder;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    return-object v0
.end method

.method static synthetic -get1(Lorg/tukaani/xz/lzma/LZMADecoder;)Lorg/tukaani/xz/rangecoder/RangeDecoder;
    .locals 1

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    return-object v0
.end method

.method public constructor <init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p5}, Lorg/tukaani/xz/lzma/LZMACoder;-><init>(I)V

    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-direct {v0, p0, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-direct {v0, p0, v1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    iput-object p1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iput-object p2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    new-instance v0, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-direct {v0, p0, p3, p4}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;-><init>(Lorg/tukaani/xz/lzma/LZMADecoder;II)V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-virtual {p0}, Lorg/tukaani/xz/lzma/LZMADecoder;->reset()V

    return-void
.end method

.method private decodeMatch(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x0

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->updateMatch()V

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v4, v6

    const/4 v5, 0x3

    aput v4, v3, v5

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v4, v7

    aput v4, v3, v6

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v4, v8

    aput v4, v3, v7

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v3, p1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->decode(I)I

    move-result v1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSlots:[[S

    invoke-static {v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->getDistState(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBitTree([S)I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aput v0, v3, v8

    :goto_0
    return v1

    :cond_0
    shr-int/lit8 v3, v0, 0x1

    add-int/lit8 v2, v3, -0x1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    and-int/lit8 v4, v0, 0x1

    or-int/lit8 v4, v4, 0x2

    shl-int/2addr v4, v2

    aput v4, v3, v8

    const/16 v3, 0xe

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v3, v8

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distSpecial:[[S

    add-int/lit8 v7, v0, -0x4

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeReverseBitTree([S)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v3, v8

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v3, v8

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    add-int/lit8 v6, v2, -0x4

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeDirectBits(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aput v4, v3, v8

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v4, v3, v8

    iget-object v5, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v6, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->distAlign:[S

    invoke-virtual {v5, v6}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeReverseBitTree([S)I

    move-result v5

    or-int/2addr v4, v5

    aput v4, v3, v8

    goto :goto_0
.end method

.method private decodeRepMatch(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep0Long:[[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateShortRep()V

    return v5

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep1:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v0, v1, v5

    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v2, v2, v4

    aput v2, v1, v5

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aput v0, v1, v4

    :cond_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->updateLongRep()V

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v1, p1}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->decode(I)I

    move-result v1

    return v1

    :cond_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep2:[S

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v0, v1, v6

    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v2, v2, v5

    aput v2, v1, v6

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v0, v1, v7

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v2, v2, v6

    aput v2, v1, v7

    goto :goto_1
.end method


# virtual methods
.method public decode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->repeatPending()V

    :goto_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->hasSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lz/LZDecoder;->getPos()I

    move-result v2

    iget v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->posMask:I

    and-int v1, v2, v3

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isMatch:[[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->decode()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->isRep:[S

    iget-object v4, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/State;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->decodeBit([SI)I

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->decodeMatch(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    iget-object v3, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3, v0}, Lorg/tukaani/xz/lz/LZDecoder;->repeat(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lorg/tukaani/xz/lzma/LZMADecoder;->decodeRepMatch(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoder;

    invoke-virtual {v2}, Lorg/tukaani/xz/rangecoder/RangeDecoder;->normalize()V

    return-void
.end method

.method public endMarkerDetected()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->reps:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/tukaani/xz/lzma/LZMACoder;->reset()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->literalDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LiteralDecoder;->reset()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->matchLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->reset()V

    iget-object v0, p0, Lorg/tukaani/xz/lzma/LZMADecoder;->repLenDecoder:Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;

    invoke-virtual {v0}, Lorg/tukaani/xz/lzma/LZMADecoder$LengthDecoder;->reset()V

    return-void
.end method
