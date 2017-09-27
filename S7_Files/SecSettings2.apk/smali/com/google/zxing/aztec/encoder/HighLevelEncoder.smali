.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x5

    .line 43
    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "UPPER"

    aput-object v9, v8, v11

    const-string/jumbo v9, "LOWER"

    aput-object v9, v8, v12

    const-string/jumbo v9, "DIGIT"

    aput-object v9, v8, v13

    const-string/jumbo v9, "MIXED"

    aput-object v9, v8, v15

    const-string/jumbo v9, "PUNCT"

    aput-object v9, v8, v14

    sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    const/4 v8, 0x5

    .line 56
    new-array v8, v8, [[I

    const/4 v9, 0x5

    new-array v9, v9, [I

    aput v11, v9, v11

    const v10, 0x5001c

    aput v10, v9, v12

    const v10, 0x5001e

    aput v10, v9, v13

    const v10, 0x5001d

    aput v10, v9, v15

    const v10, 0xa03be

    aput v10, v9, v14

    aput-object v9, v8, v11

    const/4 v9, 0x5

    new-array v9, v9, [I

    const v10, 0x901ee

    aput v10, v9, v11

    aput v11, v9, v12

    const v10, 0x5001e

    aput v10, v9, v13

    const v10, 0x5001d

    aput v10, v9, v15

    const v10, 0xa03be

    aput v10, v9, v14

    aput-object v9, v8, v12

    const/4 v9, 0x5

    new-array v9, v9, [I

    const v10, 0x4000e

    aput v10, v9, v11

    const v10, 0x901dc

    aput v10, v9, v12

    aput v11, v9, v13

    const v10, 0x901dd

    aput v10, v9, v15

    const v10, 0xe3bbe

    aput v10, v9, v14

    aput-object v9, v8, v13

    const/4 v9, 0x5

    new-array v9, v9, [I

    const v10, 0x5001d

    aput v10, v9, v11

    const v10, 0x5001c

    aput v10, v9, v12

    const v10, 0xa03be

    aput v10, v9, v13

    aput v11, v9, v15

    const v10, 0x5001e

    aput v10, v9, v14

    aput-object v9, v8, v15

    const/4 v9, 0x5

    new-array v9, v9, [I

    const v10, 0x5001f

    aput v10, v9, v11

    const v10, 0xa03fc

    aput v10, v9, v12

    const v10, 0xa03fe

    aput v10, v9, v13

    const v10, 0xa03fd

    aput v10, v9, v15

    aput v11, v9, v14

    aput-object v9, v8, v14

    sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    .line 97
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v9, v13, [I

    const/4 v10, 0x5

    aput v10, v9, v11

    const/16 v10, 0x100

    aput v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 99
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v11

    const/16 v9, 0x20

    aput v12, v8, v9

    const/16 v1, 0x41

    .local v1, "c":I
    :goto_0
    const/16 v8, 0x5a

    .line 100
    if-le v1, v8, :cond_0

    .line 103
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x20

    aput v12, v8, v9

    const/16 v1, 0x61

    :goto_1
    const/16 v8, 0x7a

    .line 104
    if-le v1, v8, :cond_1

    .line 107
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x20

    aput v12, v8, v9

    const/16 v1, 0x30

    :goto_2
    const/16 v8, 0x39

    .line 108
    if-le v1, v8, :cond_2

    .line 111
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x2c

    const/16 v10, 0xc

    aput v10, v8, v9

    .line 112
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    const/16 v9, 0x2e

    const/16 v10, 0xd

    aput v10, v8, v9

    const/16 v8, 0x1c

    .line 113
    new-array v5, v8, [I

    aput v11, v5, v11

    const/16 v8, 0x20

    aput v8, v5, v12

    aput v12, v5, v13

    aput v13, v5, v15

    aput v15, v5, v14

    const/4 v8, 0x5

    aput v14, v5, v8

    const/4 v8, 0x6

    const/4 v9, 0x5

    aput v9, v5, v8

    const/4 v8, 0x7

    const/4 v9, 0x6

    aput v9, v5, v8

    const/16 v8, 0x8

    const/4 v9, 0x7

    aput v9, v5, v8

    const/16 v8, 0x9

    const/16 v9, 0x8

    aput v9, v5, v8

    const/16 v8, 0xa

    const/16 v9, 0x9

    aput v9, v5, v8

    const/16 v8, 0xb

    const/16 v9, 0xa

    aput v9, v5, v8

    const/16 v8, 0xc

    const/16 v9, 0xb

    aput v9, v5, v8

    const/16 v8, 0xd

    const/16 v9, 0xc

    aput v9, v5, v8

    const/16 v8, 0xe

    const/16 v9, 0xd

    aput v9, v5, v8

    const/16 v8, 0xf

    const/16 v9, 0x1b

    aput v9, v5, v8

    const/16 v8, 0x10

    const/16 v9, 0x1c

    aput v9, v5, v8

    const/16 v8, 0x11

    const/16 v9, 0x1d

    aput v9, v5, v8

    const/16 v8, 0x12

    const/16 v9, 0x1e

    aput v9, v5, v8

    const/16 v8, 0x13

    const/16 v9, 0x1f

    aput v9, v5, v8

    const/16 v8, 0x14

    const/16 v9, 0x40

    aput v9, v5, v8

    const/16 v8, 0x15

    const/16 v9, 0x5c

    aput v9, v5, v8

    const/16 v8, 0x16

    const/16 v9, 0x5e

    aput v9, v5, v8

    const/16 v8, 0x17

    const/16 v9, 0x5f

    aput v9, v5, v8

    const/16 v8, 0x18

    const/16 v9, 0x60

    aput v9, v5, v8

    const/16 v8, 0x19

    const/16 v9, 0x7c

    aput v9, v5, v8

    const/16 v8, 0x1a

    const/16 v9, 0x7e

    aput v9, v5, v8

    const/16 v8, 0x1b

    const/16 v9, 0x7f

    aput v9, v5, v8

    .local v5, "mixedTable":[I
    const/4 v2, 0x0

    .line 118
    .local v2, "i":I
    :goto_3
    array-length v8, v5

    if-lt v2, v8, :cond_3

    const/16 v8, 0x1f

    .line 121
    new-array v6, v8, [I

    aput v11, v6, v11

    const/16 v8, 0xd

    aput v8, v6, v12

    aput v11, v6, v13

    aput v11, v6, v15

    aput v11, v6, v14

    const/4 v8, 0x5

    aput v11, v6, v8

    const/4 v8, 0x6

    const/16 v9, 0x21

    aput v9, v6, v8

    const/4 v8, 0x7

    const/16 v9, 0x27

    aput v9, v6, v8

    const/16 v8, 0x8

    const/16 v9, 0x23

    aput v9, v6, v8

    const/16 v8, 0x9

    const/16 v9, 0x24

    aput v9, v6, v8

    const/16 v8, 0xa

    const/16 v9, 0x25

    aput v9, v6, v8

    const/16 v8, 0xb

    const/16 v9, 0x26

    aput v9, v6, v8

    const/16 v8, 0xc

    const/16 v9, 0x27

    aput v9, v6, v8

    const/16 v8, 0xd

    const/16 v9, 0x28

    aput v9, v6, v8

    const/16 v8, 0xe

    const/16 v9, 0x29

    aput v9, v6, v8

    const/16 v8, 0xf

    const/16 v9, 0x2a

    aput v9, v6, v8

    const/16 v8, 0x10

    const/16 v9, 0x2b

    aput v9, v6, v8

    const/16 v8, 0x11

    const/16 v9, 0x2c

    aput v9, v6, v8

    const/16 v8, 0x12

    const/16 v9, 0x2d

    aput v9, v6, v8

    const/16 v8, 0x13

    const/16 v9, 0x2e

    aput v9, v6, v8

    const/16 v8, 0x14

    const/16 v9, 0x2f

    aput v9, v6, v8

    const/16 v8, 0x15

    const/16 v9, 0x3a

    aput v9, v6, v8

    const/16 v8, 0x16

    const/16 v9, 0x3b

    aput v9, v6, v8

    const/16 v8, 0x17

    const/16 v9, 0x3c

    aput v9, v6, v8

    const/16 v8, 0x18

    const/16 v9, 0x3d

    aput v9, v6, v8

    const/16 v8, 0x19

    const/16 v9, 0x3e

    aput v9, v6, v8

    const/16 v8, 0x1a

    const/16 v9, 0x3f

    aput v9, v6, v8

    const/16 v8, 0x1b

    const/16 v9, 0x5b

    aput v9, v6, v8

    const/16 v8, 0x1c

    const/16 v9, 0x5d

    aput v9, v6, v8

    const/16 v8, 0x1d

    const/16 v9, 0x7b

    aput v9, v6, v8

    const/16 v8, 0x1e

    const/16 v9, 0x7d

    aput v9, v6, v8

    .local v6, "punctTable":[I
    const/4 v2, 0x0

    .line 126
    :goto_4
    array-length v8, v6

    if-lt v2, v8, :cond_4

    .line 135
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-array v9, v13, [I

    const/4 v10, 0x6

    aput v10, v9, v11

    const/4 v10, 0x6

    aput v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    sput-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 137
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .local v0, "arr$":[[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-lt v3, v4, :cond_6

    .line 140
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v11

    aput v11, v8, v14

    .line 142
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    aput v11, v8, v14

    .line 143
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v12

    const/16 v9, 0x1c

    aput v9, v8, v11

    .line 145
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v15

    aput v11, v8, v14

    .line 147
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v13

    aput v11, v8, v14

    .line 148
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v8, v8, v13

    const/16 v9, 0xf

    aput v9, v8, v11

    .line 149
    return-void

    .line 101
    .end local v0    # "arr$":[[I
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "mixedTable":[I
    .end local v6    # "punctTable":[I
    :cond_0
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v11

    add-int/lit8 v9, v1, -0x41

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 105
    :cond_1
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v12

    add-int/lit8 v9, v1, -0x61

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 109
    :cond_2
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v13

    add-int/lit8 v9, v1, -0x30

    add-int/lit8 v9, v9, 0x2

    aput v9, v8, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 119
    .restart local v2    # "i":I
    .restart local v5    # "mixedTable":[I
    :cond_3
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v15

    aget v9, v5, v2

    aput v2, v8, v9

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 127
    .restart local v6    # "punctTable":[I
    :cond_4
    aget v8, v6, v2

    if-gtz v8, :cond_5

    .line 126
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 128
    :cond_5
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v14

    aget v9, v6, v2

    aput v2, v8, v9

    goto :goto_6

    .line 137
    .restart local v0    # "arr$":[[I
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_6
    aget-object v7, v0, v3

    .local v7, "table":[I
    const/4 v8, -0x1

    .line 138
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "text"    # [B

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 155
    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 288
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 304
    return-object v5

    .line 288
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 289
    .local v3, "newState":Lcom/google/zxing/aztec/encoder/State;
    const/4 v0, 0x1

    .line 290
    .local v0, "add":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/zxing/aztec/encoder/State;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 300
    :goto_2
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/aztec/encoder/State;

    .line 292
    .local v4, "oldState":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v4, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 296
    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 297
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 293
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 10
    .param p1, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v2, 0x0

    .line 217
    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v8, v8, p2

    and-int/lit16 v8, v8, 0xff

    int-to-char v1, v8

    .line 218
    .local v1, "ch":C
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-gtz v8, :cond_1

    .local v2, "charInCurrentTable":Z
    :goto_0
    const/4 v7, 0x0

    .local v7, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    const/4 v5, 0x0

    .end local v7    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    .local v5, "mode":I
    :goto_1
    const/4 v8, 0x4

    .line 220
    if-le v5, v8, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v8

    if-lez v8, :cond_8

    .line 249
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 250
    .local v0, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v0    # "binaryState":Lcom/google/zxing/aztec/encoder/State;
    :goto_2
    return-void

    .end local v2    # "charInCurrentTable":Z
    .end local v5    # "mode":I
    :cond_1
    const/4 v2, 0x1

    .line 218
    goto :goto_0

    .line 221
    .restart local v2    # "charInCurrentTable":Z
    .restart local v5    # "mode":I
    :cond_2
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v5

    aget v3, v8, v1

    .line 222
    .local v3, "charInMode":I
    if-gtz v3, :cond_4

    .line 220
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 223
    :cond_4
    if-eqz v7, :cond_6

    .line 228
    :goto_4
    if-nez v2, :cond_7

    .line 233
    :cond_5
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 234
    .local v4, "latch_state":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v4    # "latch_state":Lcom/google/zxing/aztec/encoder/State;
    :goto_5
    if-nez v2, :cond_3

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v5

    if-ltz v8, :cond_3

    .line 240
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v6

    .line 241
    .local v6, "shift_state":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 225
    .end local v6    # "shift_state":Lcom/google/zxing/aztec/encoder/State;
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    .local v7, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    goto :goto_4

    .line 228
    .end local v7    # "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    :cond_7
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v8

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    goto :goto_5

    .line 245
    .end local v3    # "charInMode":I
    :cond_8
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-eqz v8, :cond_0

    goto :goto_2
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 6
    .param p0, "state"    # Lcom/google/zxing/aztec/encoder/State;
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 263
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    .line 265
    .local v2, "stateNoBinary":Lcom/google/zxing/aztec/encoder/State;
    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v3

    if-ne v3, v4, :cond_1

    :goto_0
    const/4 v3, 0x3

    .line 271
    if-ne p2, v3, :cond_2

    .line 273
    :cond_0
    rsub-int/lit8 v3, p2, 0x10

    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    .line 276
    .local v1, "digit_state":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v1    # "digit_state":Lcom/google/zxing/aztec/encoder/State;
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v3

    if-gtz v3, :cond_3

    .line 284
    :goto_2
    return-void

    .line 269
    :cond_1
    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_2
    if-eq p2, v4, :cond_0

    goto :goto_1

    .line 281
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    .line 282
    .local v0, "binaryState":Lcom/google/zxing/aztec/encoder/State;
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 207
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    invoke-static {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 207
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 208
    .local v2, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-direct {p0, v2, p2, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_0
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 4
    .param p1, "index"    # I
    .param p2, "pairCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "states":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/zxing/aztec/encoder/State;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 256
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    invoke-static {v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 256
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    .line 257
    .local v2, "state":Lcom/google/zxing/aztec/encoder/State;
    invoke-static {v2, p1, p2, v1}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v5, 0x0

    .line 161
    sget-object v6, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, "states":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/aztec/encoder/State;>;"
    const/4 v0, 0x0

    .line 162
    .local v0, "index":I
    :goto_0
    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v6, v6

    if-lt v0, v6, :cond_0

    .line 192
    new-instance v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v5, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 199
    .local v1, "minState":Lcom/google/zxing/aztec/encoder/State;
    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v1, v5}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    return-object v5

    .line 164
    .end local v1    # "minState":Lcom/google/zxing/aztec/encoder/State;
    :cond_0
    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v7, v7

    if-lt v6, v7, :cond_1

    move v2, v5

    .line 165
    .local v2, "nextChar":I
    :goto_1
    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v6, v6, v0

    sparse-switch v6, :sswitch_data_0

    const/4 v3, 0x0

    .line 181
    .local v3, "pairCode":I
    :goto_2
    if-gtz v3, :cond_6

    .line 188
    invoke-direct {p0, v4, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v4

    .line 162
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "nextChar":I
    .end local v3    # "pairCode":I
    :cond_1
    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v2, v6, v7

    goto :goto_1

    .restart local v2    # "nextChar":I
    :sswitch_0
    const/16 v6, 0xa

    .line 167
    if-eq v2, v6, :cond_2

    move v3, v5

    .restart local v3    # "pairCode":I
    :goto_4
    goto :goto_2

    .end local v3    # "pairCode":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_4

    .line 170
    :sswitch_1
    if-eq v2, v8, :cond_3

    move v3, v5

    .restart local v3    # "pairCode":I
    :goto_5
    goto :goto_2

    .end local v3    # "pairCode":I
    :cond_3
    const/4 v3, 0x3

    goto :goto_5

    .line 173
    :sswitch_2
    if-eq v2, v8, :cond_4

    move v3, v5

    .restart local v3    # "pairCode":I
    :goto_6
    goto :goto_2

    .end local v3    # "pairCode":I
    :cond_4
    const/4 v3, 0x4

    goto :goto_6

    .line 176
    :sswitch_3
    if-eq v2, v8, :cond_5

    move v3, v5

    .restart local v3    # "pairCode":I
    :goto_7
    goto :goto_2

    .end local v3    # "pairCode":I
    :cond_5
    const/4 v3, 0x5

    goto :goto_7

    .line 184
    .restart local v3    # "pairCode":I
    :cond_6
    invoke-static {v4, v0, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v4

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x2c -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_3
    .end sparse-switch
.end method
