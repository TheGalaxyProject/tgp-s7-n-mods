.class public final Lorg/tukaani/xz/simple/IA64;
.super Ljava/lang/Object;
.source "IA64.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final BRANCH_TABLE:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    .line 13
    return-void

    .line 14
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x6
        0x6
        0x0
        0x0
        0x7
        0x7
        0x4
        0x4
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    .line 25
    iput p2, p0, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 23
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 22
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 29
    add-int v17, p2, p3

    add-int/lit8 v6, v17, -0x10

    .line 32
    .local v6, "end":I
    move/from16 v7, p2

    .local v7, "i":I
    :goto_0
    if-gt v7, v6, :cond_5

    .line 33
    aget-byte v17, p1, v7

    and-int/lit8 v12, v17, 0x1f

    .line 34
    .local v12, "instrTemplate":I
    sget-object v17, Lorg/tukaani/xz/simple/IA64;->BRANCH_TABLE:[I

    aget v14, v17, v12

    .line 36
    .local v14, "mask":I
    const/4 v15, 0x0

    .local v15, "slot":I
    const/4 v2, 0x5

    .local v2, "bitPos":I
    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 37
    ushr-int v17, v14, v15

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_1

    .line 36
    :cond_0
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v2, v2, 0x29

    goto :goto_1

    .line 40
    :cond_1
    ushr-int/lit8 v4, v2, 0x3

    .line 41
    .local v4, "bytePos":I
    and-int/lit8 v3, v2, 0x7

    .line 43
    .local v3, "bitRes":I
    const-wide/16 v8, 0x0

    .line 44
    .local v8, "instr":J
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    .line 45
    add-int v17, v7, v4

    add-int v17, v17, v13

    aget-byte v17, p1, v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xff

    and-long v18, v18, v20

    mul-int/lit8 v17, v13, 0x8

    shl-long v18, v18, v17

    or-long v8, v8, v18

    .line 44
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 47
    :cond_2
    ushr-long v10, v8, v3

    .line 49
    .local v10, "instrNorm":J
    const/16 v17, 0x25

    ushr-long v18, v10, v17

    const-wide/16 v20, 0xf

    and-long v18, v18, v20

    const-wide/16 v20, 0x5

    cmp-long v17, v18, v20

    if-nez v17, :cond_0

    .line 50
    const/16 v17, 0x9

    ushr-long v18, v10, v17

    const-wide/16 v20, 0x7

    and-long v18, v18, v20

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_0

    .line 53
    const/16 v17, 0xd

    ushr-long v18, v10, v17

    const-wide/32 v20, 0xfffff

    and-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    .line 54
    .local v16, "src":I
    const/16 v17, 0x24

    ushr-long v18, v10, v17

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    shl-int/lit8 v17, v17, 0x14

    or-int v16, v16, v17

    .line 55
    shl-int/lit8 v16, v16, 0x4

    .line 58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/tukaani/xz/simple/IA64;->isEncoder:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 59
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    move/from16 v17, v0

    add-int v17, v17, v7

    sub-int v17, v17, p2

    add-int v5, v16, v17

    .line 63
    .local v5, "dest":I
    :goto_3
    ushr-int/lit8 v5, v5, 0x4

    .line 65
    const-wide v18, -0x11ffffe001L

    and-long v10, v10, v18

    .line 66
    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide/32 v20, 0xfffff

    and-long v18, v18, v20

    const/16 v17, 0xd

    shl-long v18, v18, v17

    or-long v10, v10, v18

    .line 67
    int-to-long v0, v5

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x100000

    and-long v18, v18, v20

    const/16 v17, 0x10

    shl-long v18, v18, v17

    or-long v10, v10, v18

    .line 69
    const/16 v17, 0x1

    shl-int v17, v17, v3

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v8, v8, v18

    .line 70
    shl-long v18, v10, v3

    or-long v8, v8, v18

    .line 72
    const/4 v13, 0x0

    :goto_4
    const/16 v17, 0x6

    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 73
    add-int v17, v7, v4

    add-int v17, v17, v13

    mul-int/lit8 v18, v13, 0x8

    ushr-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p1, v17

    .line 72
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 61
    .end local v5    # "dest":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    move/from16 v17, v0

    add-int v17, v17, v7

    sub-int v17, v17, p2

    sub-int v5, v16, v17

    .restart local v5    # "dest":I
    goto :goto_3

    .line 32
    .end local v3    # "bitRes":I
    .end local v4    # "bytePos":I
    .end local v5    # "dest":I
    .end local v8    # "instr":J
    .end local v10    # "instrNorm":J
    .end local v13    # "j":I
    .end local v16    # "src":I
    :cond_4
    add-int/lit8 v7, v7, 0x10

    goto/16 :goto_0

    .line 77
    .end local v2    # "bitPos":I
    .end local v12    # "instrTemplate":I
    .end local v14    # "mask":I
    .end local v15    # "slot":I
    :cond_5
    sub-int v7, v7, p2

    .line 78
    move-object/from16 v0, p0

    iget v0, v0, Lorg/tukaani/xz/simple/IA64;->pos:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/tukaani/xz/simple/IA64;->pos:I

    .line 79
    return v7
.end method
