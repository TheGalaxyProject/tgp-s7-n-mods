.class final Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "RangeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAPSIZE:I = 0x100

.field private static final serialVersionUID:J = -0x7b024b6ae8cc53eL


# instance fields
.field compacted:Z

.field icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field map:[I

.field nonMapIndex:I

.field ranges:[I

.field sorted:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 34
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 35
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 41
    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const v8, 0x10ffff

    const/4 v1, 0x0

    .line 414
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 416
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 417
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 418
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 419
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 420
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    if-eqz v3, :cond_2

    .line 422
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    .line 423
    if-eq v3, v8, :cond_3

    .line 425
    :goto_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    .line 426
    new-array v0, v0, [I

    iput-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 428
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v0, v1

    if-gtz v0, :cond_4

    move v0, v1

    :goto_2
    move v1, v0

    move v0, v2

    .line 432
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_5

    .line 433
    iget-object v2, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v2, v1

    .line 434
    iget-object v2, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    add-int/lit8 v6, v6, -0x1

    aput v6, v2, v5

    .line 432
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 414
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_2
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 424
    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v1, v0, v1

    .line 430
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v0, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v1, v6, v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v5, v2

    goto :goto_2

    .line 436
    :cond_5
    if-ne v3, v8, :cond_6

    .line 440
    :goto_4
    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    .line 441
    return-object v4

    .line 437
    :cond_6
    iget-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v1

    .line 438
    iget-object v0, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v8, v0, v2

    goto :goto_4
.end method

.method private createMap()V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/16 v9, 0x100

    const/4 v0, 0x0

    .line 516
    new-array v3, v4, [I

    .line 517
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    move v2, v0

    .line 518
    :goto_0
    if-ge v2, v4, :cond_3

    .line 519
    aput v0, v3, v2

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_0
    if-ge v2, v9, :cond_2

    .line 526
    div-int/lit8 v5, v2, 0x20

    aget v6, v3, v5

    and-int/lit8 v7, v2, 0x1f

    const/4 v8, 0x1

    shl-int v7, v8, v7

    or-int/2addr v6, v7

    aput v6, v3, v5

    .line 525
    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-le v2, v4, :cond_0

    .line 533
    :cond_2
    if-ge v4, v9, :cond_4

    .line 521
    add-int/lit8 v0, v0, 0x2

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 522
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    .line 523
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    .line 524
    if-lt v2, v9, :cond_1

    .line 538
    :cond_4
    :goto_1
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    .line 539
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    .line 541
    return-void

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 599
    sparse-switch p0, :sswitch_data_0

    const/16 v0, 0x20

    .line 611
    if-lt p0, v0, :cond_0

    const/high16 v0, 0x10000

    .line 614
    if-ge p0, v0, :cond_1

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 602
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "\\f"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "\\n"

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "\\r"

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "\\t"

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "\\e"

    goto :goto_0

    .line 612
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\\x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 615
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\\v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 599
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x1b -> :sswitch_5
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

.method private final isCompacted()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    .line 92
    return-void
.end method

.method private final setSorted(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    goto :goto_0
.end method


# virtual methods
.method protected addRange(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 45
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 48
    if-le p1, p2, :cond_0

    .line 57
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    .line 64
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    if-eq v1, p2, :cond_2

    .line 68
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 69
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 71
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ge v1, p2, :cond_3

    .line 73
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v0

    .line 74
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p1, v0, v2

    .line 75
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-eqz v0, :cond_4

    .line 78
    :goto_2
    return-void

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    .line 51
    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 58
    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 59
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p2, v0, v3

    .line 60
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput p1, v0, v1

    .line 61
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_2

    .line 65
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v0, -0x1

    aput p1, v1, v0

    .line 66
    return-void

    .line 72
    :cond_3
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    goto :goto_2
.end method

.method protected compactRanges()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    .line 127
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 128
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isCompacted()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    move v3, v2

    .line 133
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 134
    if-ne v3, v1, :cond_3

    .line 138
    add-int/lit8 v0, v1, 0x2

    .line 139
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    aget v1, v1, v4

    move v7, v1

    move v1, v0

    move v0, v7

    .line 140
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 141
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v1

    if-lt v4, v5, :cond_7

    .line 143
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v1

    if-eq v4, v5, :cond_4

    .line 155
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-ge v0, v4, :cond_5

    .line 165
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-lt v0, v4, :cond_6

    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token#compactRanges(): Internel Error: ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v3, 0x1

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] ["

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    .line 182
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v1, 0x1

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_2
    return-void

    .line 135
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v1, v4, v1

    aput v1, v0, v3

    .line 136
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v5, 0x1

    aget v5, v6, v5

    aput v5, v1, v4

    goto/16 :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v4

    .line 154
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    .line 164
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    .line 174
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v0, v4

    .line 175
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v4

    .line 176
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    .line 185
    :cond_7
    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto/16 :goto_0

    .line 188
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ne v3, v0, :cond_9

    .line 193
    :goto_3
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    .line 194
    return-void

    .line 189
    :cond_9
    new-array v0, v3, [I

    .line 190
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    goto :goto_3
.end method

.method dumpRanges()V
    .locals 5

    .prologue
    .line 479
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "RANGE: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 484
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 485
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 484
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 481
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, " NULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    return-void

    .line 487
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method declared-synchronized getCaseInsensitiveToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 8

    .prologue
    const v7, 0xffff

    const/4 v6, 0x4

    const/4 v2, 0x0

    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-nez v0, :cond_0

    .line 448
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-eq v0, v6, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    :goto_0
    move v1, v2

    .line 449
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 450
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_3

    .line 451
    if-gt v3, v7, :cond_2

    .line 454
    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 455
    invoke-virtual {v0, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 450
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 446
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 448
    :cond_1
    :try_start_1
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {v0, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 459
    :cond_4
    :try_start_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-eq v1, v6, :cond_5

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    .line 460
    :goto_4
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 461
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v2

    :goto_5
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-gt v3, v4, :cond_7

    .line 462
    if-gt v3, v7, :cond_6

    .line 465
    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 466
    invoke-virtual {v1, v4, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    .line 461
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 459
    :cond_5
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v1

    goto :goto_4

    .line 463
    :cond_6
    invoke-virtual {v1, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_6

    .line 460
    :cond_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    .line 470
    :cond_8
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 471
    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 472
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 474
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 475
    return-object v1
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 323
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 324
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_1

    .line 325
    :cond_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_0

    .line 326
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 327
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 328
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 329
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 330
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    move v3, v1

    .line 334
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v2, v5, :cond_3

    .line 400
    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ge v2, v0, :cond_c

    .line 401
    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v3

    .line 402
    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v0

    goto :goto_1

    .line 334
    :cond_3
    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 335
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    .line 336
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    .line 337
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v0

    .line 338
    iget-object v8, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    .line 339
    if-lt v6, v7, :cond_5

    .line 345
    if-ge v6, v7, :cond_6

    .line 386
    :cond_4
    if-lt v8, v5, :cond_b

    .line 392
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token#intersectRanges(): Internal Error: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] & ["

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 346
    :cond_6
    if-gt v5, v8, :cond_4

    .line 352
    if-le v7, v5, :cond_8

    .line 360
    :cond_7
    if-le v7, v5, :cond_9

    .line 369
    if-le v6, v8, :cond_a

    .line 382
    add-int/lit8 v5, v3, 0x1

    aput v7, v4, v3

    .line 383
    add-int/lit8 v3, v5, 0x1

    aput v8, v4, v5

    .line 384
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    goto/16 :goto_0

    .line 352
    :cond_8
    if-gt v6, v8, :cond_7

    .line 357
    add-int/lit8 v7, v3, 0x1

    aput v5, v4, v3

    .line 358
    add-int/lit8 v3, v7, 0x1

    aput v6, v4, v7

    .line 359
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 365
    :cond_9
    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    .line 366
    add-int/lit8 v3, v6, 0x1

    aput v8, v4, v6

    .line 367
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    .line 368
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 374
    :cond_a
    add-int/lit8 v5, v3, 0x1

    aput v7, v4, v3

    .line 375
    add-int/lit8 v3, v5, 0x1

    aput v6, v4, v5

    .line 376
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 390
    :cond_b
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 404
    :cond_c
    new-array v0, v3, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 405
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    return-void
.end method

.method match(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    if-eqz v0, :cond_1

    .line 493
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    .line 502
    if-lt p1, v4, :cond_8

    .line 505
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v0, v3, :cond_b

    .line 506
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_a

    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 491
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->createMap()V

    goto :goto_0

    .line 494
    :cond_2
    if-lt p1, v4, :cond_4

    .line 497
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v0, v3, :cond_7

    .line 498
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_6

    .line 497
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 495
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v3, p1, 0x20

    aget v0, v0, v3

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v1, v3

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    return v2

    :cond_5
    return v1

    .line 498
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_3

    .line 499
    return v1

    :cond_7
    move v0, v2

    .line 510
    :goto_3
    return v0

    .line 503
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v3, p1, 0x20

    aget v0, v0, v3

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v1, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_9

    return v2

    :cond_9
    return v1

    .line 506
    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_0

    .line 507
    return v2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 197
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 198
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 199
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 200
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v1, :cond_2

    .line 202
    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 203
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 204
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v3, v1, [I

    move v1, v0

    move v2, v0

    .line 210
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v2, v4, :cond_8

    .line 211
    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 214
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 217
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    if-ge v4, v5, :cond_6

    .line 219
    :cond_1
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    aput v1, v3, v0

    .line 220
    add-int/lit8 v0, v4, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_0

    .line 201
    :cond_2
    return-void

    .line 205
    :cond_3
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 206
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    return-void

    .line 212
    :cond_4
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v1, v5, v1

    aput v1, v3, v0

    .line 213
    add-int/lit8 v0, v4, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_0

    .line 215
    :cond_5
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v0

    .line 216
    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_0

    .line 218
    :cond_6
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_7

    .line 222
    :goto_1
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v3, v0

    .line 223
    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto/16 :goto_0

    .line 218
    :cond_7
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    if-lt v4, v5, :cond_1

    goto :goto_1

    .line 210
    :cond_8
    iget-object v4, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 226
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 227
    return-void
.end method

.method protected sortRanges()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isSorted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    :goto_0
    if-ltz v0, :cond_6

    move v1, v2

    .line 105
    :goto_1
    if-gt v1, v0, :cond_5

    .line 106
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-le v3, v4, :cond_4

    .line 109
    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    .line 110
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v6, v1

    aput v6, v4, v5

    .line 111
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v4, v1

    .line 112
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    .line 113
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 114
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x1

    aput v3, v4, v5

    .line 105
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 96
    :cond_2
    return-void

    .line 98
    :cond_3
    return-void

    .line 107
    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x3

    aget v4, v4, v5

    if-gt v3, v4, :cond_0

    goto :goto_2

    .line 104
    :cond_5
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 118
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    .line 119
    return-void
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 230
    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 234
    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 235
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v0, :cond_2

    .line 236
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    .line 232
    return-void

    .line 235
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v0, :cond_0

    .line 237
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    .line 238
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 239
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 240
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    .line 241
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    .line 245
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    add-int/2addr v0, v2

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    move v3, v1

    .line 247
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v2, v5, :cond_4

    .line 310
    :cond_3
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v0

    if-ge v2, v0, :cond_d

    .line 311
    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v2, 0x1

    aget v2, v5, v2

    aput v2, v4, v3

    .line 312
    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v6, 0x1

    aget v5, v5, v6

    aput v5, v4, v0

    goto :goto_1

    .line 247
    :cond_4
    iget-object v5, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 248
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v2

    .line 249
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    .line 250
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v0

    .line 251
    iget-object v8, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    .line 252
    if-lt v6, v7, :cond_6

    .line 259
    if-ge v6, v7, :cond_7

    .line 297
    :cond_5
    if-lt v8, v5, :cond_c

    .line 303
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Token#subtractRanges(): Internal Error: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    .line 304
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v2, 0x1

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] - ["

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    .line 306
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_6
    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v2, 0x1

    aget v2, v6, v2

    aput v2, v4, v3

    .line 258
    add-int/lit8 v3, v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    goto/16 :goto_0

    .line 260
    :cond_7
    if-gt v5, v8, :cond_5

    .line 266
    if-le v7, v5, :cond_9

    .line 272
    :cond_8
    if-le v7, v5, :cond_a

    .line 279
    if-le v6, v8, :cond_b

    .line 292
    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    .line 293
    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v5, v7, -0x1

    aput v5, v4, v6

    .line 294
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    .line 295
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 266
    :cond_9
    if-gt v6, v8, :cond_8

    .line 271
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 277
    :cond_a
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v8, 0x1

    aput v6, v5, v2

    .line 278
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 284
    :cond_b
    add-int/lit8 v6, v3, 0x1

    aput v5, v4, v3

    .line 285
    add-int/lit8 v3, v6, 0x1

    add-int/lit8 v5, v7, -0x1

    aput v5, v4, v6

    .line 286
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 301
    :cond_c
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 314
    :cond_d
    new-array v0, v3, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    .line 315
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v4, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0x2d

    const/16 v5, 0x2c

    const/4 v0, 0x0

    .line 545
    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 571
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_a

    .line 573
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_b

    .line 575
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_c

    .line 578
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "[^"

    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_f

    .line 581
    and-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_d

    .line 582
    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_e

    .line 585
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 587
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 546
    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_3

    .line 548
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_4

    .line 550
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_5

    .line 552
    sget-object v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, v1, :cond_6

    .line 555
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 556
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 557
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 558
    and-int/lit16 v2, p1, 0x400

    if-nez v2, :cond_7

    .line 559
    :cond_2
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_8

    .line 562
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 564
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :goto_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "."

    .line 594
    :goto_6
    return-object v0

    :cond_4
    const-string/jumbo v0, "\\d"

    goto :goto_6

    :cond_5
    const-string/jumbo v0, "\\w"

    goto :goto_6

    :cond_6
    const-string/jumbo v0, "\\s"

    goto :goto_6

    .line 558
    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 560
    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 567
    :cond_9
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 568
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    const-string/jumbo v0, "\\D"

    goto :goto_6

    :cond_b
    const-string/jumbo v0, "\\W"

    goto :goto_6

    :cond_c
    const-string/jumbo v0, "\\S"

    goto :goto_6

    .line 581
    :cond_d
    if-lez v0, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 583
    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 590
    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
