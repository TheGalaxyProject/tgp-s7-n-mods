.class public final Lorg/tukaani/xz/simple/X86;
.super Ljava/lang/Object;
.source "X86.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# static fields
.field private static final MASK_TO_ALLOWED_STATUS:[Z

.field private static final MASK_TO_BIT_NUMBER:[I


# instance fields
.field private final isEncoder:Z

.field private pos:I

.field private prevMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 15
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    .line 14
    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    .line 17
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    .line 13
    return-void

    .line 15
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 17
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 29
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    .line 30
    add-int/lit8 v0, p2, 0x5

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 28
    return-void
.end method

.method private static test86MSByte(B)Z
    .locals 4
    .param p0, "b"    # B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    and-int/lit16 v0, p0, 0xff

    .line 25
    .local v0, "i":I
    if-eqz v0, :cond_0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public code([BII)I
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v6, 0x0

    .line 34
    add-int/lit8 v4, p2, -0x1

    .line 35
    .local v4, "prevPos":I
    add-int v7, p2, p3

    add-int/lit8 v1, v7, -0x5

    .line 38
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_8

    .line 39
    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xfe

    const/16 v8, 0xe8

    if-eq v7, v8, :cond_0

    .line 38
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    sub-int v4, v2, v4

    .line 43
    and-int/lit8 v7, v4, -0x4

    if-eqz v7, :cond_3

    .line 44
    iput v6, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 57
    :cond_1
    move v4, v2

    .line 59
    add-int/lit8 v7, v2, 0x4

    aget-byte v7, p1, v7

    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 60
    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    .line 61
    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    .line 60
    or-int/2addr v7, v8

    .line 62
    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    .line 60
    or-int/2addr v7, v8

    .line 63
    add-int/lit8 v8, v2, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    .line 60
    or-int v5, v7, v8

    .line 66
    .local v5, "src":I
    :goto_2
    iget-boolean v7, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    if-eqz v7, :cond_5

    .line 67
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v7, v2

    sub-int/2addr v7, p2

    add-int v0, v5, v7

    .line 71
    .local v0, "dest":I
    :goto_3
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-nez v7, :cond_6

    .line 81
    :cond_2
    add-int/lit8 v7, v2, 0x1

    int-to-byte v8, v0

    aput-byte v8, p1, v7

    .line 82
    add-int/lit8 v7, v2, 0x2

    ushr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 83
    add-int/lit8 v7, v2, 0x3

    ushr-int/lit8 v8, v0, 0x10

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 84
    add-int/lit8 v7, v2, 0x4

    ushr-int/lit8 v8, v0, 0x18

    and-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, -0x1

    not-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 85
    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 46
    .end local v0    # "dest":I
    .end local v5    # "src":I
    :cond_3
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v8, v4, -0x1

    shl-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x7

    iput v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 47
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-eqz v7, :cond_1

    .line 48
    sget-object v7, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    iget v8, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_4

    .line 49
    add-int/lit8 v7, v2, 0x4

    sget-object v8, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    iget v9, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget v8, v8, v9

    sub-int/2addr v7, v8

    aget-byte v7, p1, v7

    .line 48
    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    :cond_4
    move v4, v2

    .line 51
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto/16 :goto_1

    .line 69
    .restart local v5    # "src":I
    :cond_5
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v7, v2

    sub-int/2addr v7, p2

    sub-int v0, v5, v7

    .restart local v0    # "dest":I
    goto :goto_3

    .line 74
    :cond_6
    sget-object v7, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    iget v8, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget v7, v7, v8

    mul-int/lit8 v3, v7, 0x8

    .line 75
    .local v3, "index":I
    rsub-int/lit8 v7, v3, 0x18

    ushr-int v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    rsub-int/lit8 v7, v3, 0x20

    const/4 v8, 0x1

    shl-int v7, v8, v7

    add-int/lit8 v7, v7, -0x1

    xor-int v5, v0, v7

    goto/16 :goto_2

    .line 87
    .end local v0    # "dest":I
    .end local v3    # "index":I
    .end local v5    # "src":I
    :cond_7
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto/16 :goto_1

    .line 91
    :cond_8
    sub-int v4, v2, v4

    .line 92
    and-int/lit8 v7, v4, -0x4

    if-eqz v7, :cond_9

    :goto_4
    iput v6, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    .line 94
    sub-int/2addr v2, p2

    .line 95
    iget v6, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    .line 96
    return v2

    .line 92
    :cond_9
    iget v6, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v7, v4, -0x1

    shl-int/2addr v6, v7

    goto :goto_4
.end method
