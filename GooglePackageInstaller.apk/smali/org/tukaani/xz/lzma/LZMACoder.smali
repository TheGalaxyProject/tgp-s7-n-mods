.class abstract Lorg/tukaani/xz/lzma/LZMACoder;
.super Ljava/lang/Object;
.source "LZMACoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/lzma/LZMACoder$LengthCoder;,
        Lorg/tukaani/xz/lzma/LZMACoder$LiteralCoder;
    }
.end annotation


# instance fields
.field final distAlign:[S

.field final distSlots:[[S

.field final distSpecial:[[S

.field final isMatch:[[S

.field final isRep:[S

.field final isRep0:[S

.field final isRep0Long:[[S

.field final isRep1:[S

.field final isRep2:[S

.field final posMask:I

.field final reps:[I

.field final state:Lorg/tukaani/xz/lzma/State;


# direct methods
.method constructor <init>(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/16 v4, 0x10

    const/4 v3, 0x4

    const/16 v2, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    new-instance v0, Lorg/tukaani/xz/lzma/State;

    invoke-direct {v0}, Lorg/tukaani/xz/lzma/State;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v4}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    new-array v0, v2, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    new-array v0, v2, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v4}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v1, 0x40

    filled-new-array {v3, v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    const/16 v0, 0xa

    new-array v0, v0, [[S

    new-array v1, v5, [S

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v5, [S

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v3, [S

    aput-object v1, v0, v5

    new-array v1, v3, [S

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v6, [S

    aput-object v1, v0, v3

    new-array v1, v6, [S

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v4, [S

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v4, [S

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x20

    new-array v1, v1, [S

    aput-object v1, v0, v6

    const/16 v1, 0x20

    new-array v1, v1, [S

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    new-array v0, v4, [S

    iput-object v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/tukaani/xz/lzma/LZMACoder;->posMask:I

    return-void
.end method

.method static final getDistState(I)I
    .locals 1

    const/4 v0, 0x6

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    aput v3, v1, v3

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x2

    aput v3, v1, v2

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->reps:[I

    const/4 v2, 0x3

    aput v3, v1, v2

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->state:Lorg/tukaani/xz/lzma/State;

    invoke-virtual {v1}, Lorg/tukaani/xz/lzma/State;->reset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isMatch:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep:[S

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0:[S

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep1:[S

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep2:[S

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->isRep0Long:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSlots:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distSpecial:[[S

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/tukaani/xz/lzma/LZMACoder;->distAlign:[S

    invoke-static {v1}, Lorg/tukaani/xz/rangecoder/RangeCoder;->initProbs([S)V

    return-void
.end method
