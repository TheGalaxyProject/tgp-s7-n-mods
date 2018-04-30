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

    const/16 v1, 0x8

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    return-void

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    iput-boolean p1, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    add-int/lit8 v0, p2, 0x5

    iput v0, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    return-void
.end method

.method private static test86MSByte(B)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    and-int/lit16 v0, p0, 0xff

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

    const/4 v6, 0x0

    add-int/lit8 v4, p2, -0x1

    add-int v7, p2, p3

    add-int/lit8 v1, v7, -0x5

    move v2, p2

    :goto_0
    if-gt v2, v1, :cond_8

    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xfe

    const/16 v8, 0xe8

    if-eq v7, v8, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-int v4, v2, v4

    and-int/lit8 v7, v4, -0x4

    if-eqz v7, :cond_3

    iput v6, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    :cond_1
    move v4, v2

    add-int/lit8 v7, v2, 0x4

    aget-byte v7, p1, v7

    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v2, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int v5, v7, v8

    :goto_2
    iget-boolean v7, p0, Lorg/tukaani/xz/simple/X86;->isEncoder:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v7, v2

    sub-int/2addr v7, p2

    add-int v0, v5, v7

    :goto_3
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-nez v7, :cond_6

    :cond_2
    add-int/lit8 v7, v2, 0x1

    int-to-byte v8, v0

    aput-byte v8, p1, v7

    add-int/lit8 v7, v2, 0x2

    ushr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    add-int/lit8 v7, v2, 0x3

    ushr-int/lit8 v8, v0, 0x10

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    add-int/lit8 v7, v2, 0x4

    ushr-int/lit8 v8, v0, 0x18

    and-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, -0x1

    not-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_3
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v8, v4, -0x1

    shl-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x7

    iput v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    if-eqz v7, :cond_1

    sget-object v7, Lorg/tukaani/xz/simple/X86;->MASK_TO_ALLOWED_STATUS:[Z

    iget v8, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_4

    add-int/lit8 v7, v2, 0x4

    sget-object v8, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    iget v9, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget v8, v8, v9

    sub-int/2addr v7, v8

    aget-byte v7, p1, v7

    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_4
    move v4, v2

    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto/16 :goto_1

    :cond_5
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v7, v2

    sub-int/2addr v7, p2

    sub-int v0, v5, v7

    goto :goto_3

    :cond_6
    sget-object v7, Lorg/tukaani/xz/simple/X86;->MASK_TO_BIT_NUMBER:[I

    iget v8, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    aget v7, v7, v8

    mul-int/lit8 v3, v7, 0x8

    rsub-int/lit8 v7, v3, 0x18

    ushr-int v7, v0, v7

    int-to-byte v7, v7

    invoke-static {v7}, Lorg/tukaani/xz/simple/X86;->test86MSByte(B)Z

    move-result v7

    if-eqz v7, :cond_2

    rsub-int/lit8 v7, v3, 0x20

    const/4 v8, 0x1

    shl-int v7, v8, v7

    add-int/lit8 v7, v7, -0x1

    xor-int v5, v0, v7

    goto/16 :goto_2

    :cond_7
    iget v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    shl-int/lit8 v7, v7, 0x1

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    goto/16 :goto_1

    :cond_8
    sub-int v4, v2, v4

    and-int/lit8 v7, v4, -0x4

    if-eqz v7, :cond_9

    :goto_4
    iput v6, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    sub-int/2addr v2, p2

    iget v6, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/tukaani/xz/simple/X86;->pos:I

    return v2

    :cond_9
    iget v6, p0, Lorg/tukaani/xz/simple/X86;->prevMask:I

    add-int/lit8 v7, v4, -0x1

    shl-int/2addr v6, v7

    goto :goto_4
.end method
