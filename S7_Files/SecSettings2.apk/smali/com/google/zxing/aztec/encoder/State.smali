.class final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field private final binaryShiftByteCount:I

.field private final bitCount:I

.field private final mode:I

.field private final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/Token;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .locals 0
    .param p1, "token"    # Lcom/google/zxing/aztec/encoder/Token;
    .param p2, "mode"    # I
    .param p3, "binaryBytes"    # I
    .param p4, "bitCount"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 46
    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 47
    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 48
    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 55
    return-void
.end method


# virtual methods
.method addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x0

    .line 104
    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 105
    .local v5, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    .line 106
    .local v3, "mode":I
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 107
    .local v0, "bitCount":I
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 109
    :cond_0
    sget-object v6, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    aget-object v6, v6, v3

    aget v2, v6, v8

    .local v2, "latch":I
    const v6, 0xffff

    .line 110
    and-int/2addr v6, v2

    shr-int/lit8 v7, v2, 0x10

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v5

    .line 111
    shr-int/lit8 v6, v2, 0x10

    add-int/2addr v0, v6

    const/4 v3, 0x0

    .line 114
    .end local v2    # "latch":I
    :goto_0
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v6, :cond_3

    :cond_1
    const/16 v1, 0x12

    .line 117
    .local v1, "deltaBitCount":I
    :goto_1
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    add-int/lit8 v6, v6, 0x1

    add-int v7, v0, v1

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    .line 118
    .local v4, "result":Lcom/google/zxing/aztec/encoder/State;
    iget v6, v4, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v7, 0x81e

    if-eq v6, v7, :cond_5

    .line 122
    :goto_2
    return-object v4

    .line 107
    .end local v1    # "deltaBitCount":I
    .end local v4    # "result":Lcom/google/zxing/aztec/encoder/State;
    :cond_2
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_0

    .line 114
    :cond_3
    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v7, 0x1f

    if-eq v6, v7, :cond_1

    iget v6, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v7, 0x3e

    if-eq v6, v7, :cond_4

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    goto :goto_1

    .line 120
    .restart local v1    # "deltaBitCount":I
    .restart local v4    # "result":Lcom/google/zxing/aztec/encoder/State;
    :cond_5
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v4, v6}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    goto :goto_2
.end method

.method endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 128
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-eqz v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 132
    .local v0, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/aztec/encoder/Token;->addBinaryShift(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/google/zxing/aztec/encoder/State;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-direct {v1, v0, v2, v4, v3}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v1

    .line 129
    .end local v0    # "token":Lcom/google/zxing/aztec/encoder/Token;
    :cond_0
    return-object p0
.end method

.method getBinaryShiftByteCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    return v0
.end method

.method getBitCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    return v0
.end method

.method getMode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    return v0
.end method

.method isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .locals 5
    .param p1, "other"    # Lcom/google/zxing/aztec/encoder/State;

    .prologue
    const/4 v1, 0x0

    .line 140
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v3, v3, v4

    iget v4, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x10

    add-int v0, v2, v3

    .line 141
    .local v0, "mySize":I
    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-gtz v2, :cond_0

    .line 145
    :goto_0
    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    if-le v0, v2, :cond_3

    :goto_1
    return v1

    .line 141
    :cond_0
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v2, :cond_2

    .line 143
    :cond_1
    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 141
    :cond_2
    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iget v3, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 145
    goto :goto_1
.end method

.method latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 7
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 78
    .local v0, "bitCount":I
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 79
    .local v3, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-ne p1, v4, :cond_0

    :goto_0
    const/4 v4, 0x2

    .line 84
    if-eq p1, v4, :cond_1

    const/4 v2, 0x5

    .line 85
    .local v2, "latchModeBitCount":I
    :goto_1
    invoke-virtual {v3, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v3

    .line 86
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    const/4 v5, 0x0

    add-int v6, v0, v2

    invoke-direct {v4, v3, p1, v5, v6}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v4

    .line 80
    .end local v2    # "latchModeBitCount":I
    :cond_0
    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v5, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v4, v4, v5

    aget v1, v4, p1

    .local v1, "latch":I
    const v4, 0xffff

    .line 81
    and-int/2addr v4, v1

    shr-int/lit8 v5, v1, 0x10

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v3

    .line 82
    shr-int/lit8 v4, v1, 0x10

    add-int/2addr v0, v4

    goto :goto_0

    .end local v1    # "latch":I
    :cond_1
    const/4 v2, 0x4

    .line 84
    goto :goto_1
.end method

.method shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x5

    .line 93
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .line 94
    .local v1, "token":Lcom/google/zxing/aztec/encoder/Token;
    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move v0, v2

    .line 96
    .local v0, "thisModeBitCount":I
    :goto_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v3, v3, v4

    aget v3, v3, p1

    invoke-virtual {v1, v3, v0}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p2, v2}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    .line 98
    new-instance v2, Lcom/google/zxing/aztec/encoder/State;

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v2

    .end local v0    # "thisModeBitCount":I
    :cond_0
    const/4 v0, 0x4

    .line 94
    goto :goto_0
.end method

.method toBitArray([B)Lcom/google/zxing/common/BitArray;
    .locals 6
    .param p1, "text"    # [B

    .prologue
    .line 151
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 152
    .local v3, "symbols":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/google/zxing/aztec/encoder/Token;>;"
    array-length v5, p1

    invoke-virtual {p0, v5}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v5

    iget-object v4, v5, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    .local v4, "token":Lcom/google/zxing/aztec/encoder/Token;
    :goto_0
    if-nez v4, :cond_0

    .line 155
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 157
    .local v0, "bitArray":Lcom/google/zxing/common/BitArray;
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    return-object v0

    .line 153
    .end local v0    # "bitArray":Lcom/google/zxing/common/BitArray;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3, v4}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v4}, Lcom/google/zxing/aztec/encoder/Token;->getPrevious()Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v4

    goto :goto_0

    .line 157
    .restart local v0    # "bitArray":Lcom/google/zxing/common/BitArray;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/Token;

    .line 158
    .local v2, "symbol":Lcom/google/zxing/aztec/encoder/Token;
    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string/jumbo v0, "%s bits=%d bytes=%d"

    const/4 v1, 0x3

    .line 166
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
