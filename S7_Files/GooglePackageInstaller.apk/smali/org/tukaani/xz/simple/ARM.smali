.class public final Lorg/tukaani/xz/simple/ARM;
.super Ljava/lang/Object;
.source "ARM.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "isEncoder"    # Z
    .param p2, "startPos"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p1, p0, Lorg/tukaani/xz/simple/ARM;->isEncoder:Z

    .line 19
    add-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 17
    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 23
    add-int v4, p2, p3

    add-int/lit8 v1, v4, -0x4

    .line 26
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 27
    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xeb

    if-ne v4, v5, :cond_0

    .line 28
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    .line 29
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    .line 28
    or-int/2addr v4, v5

    .line 30
    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    .line 28
    or-int v3, v4, v5

    .line 31
    .local v3, "src":I
    shl-int/lit8 v3, v3, 0x2

    .line 34
    iget-boolean v4, p0, Lorg/tukaani/xz/simple/ARM;->isEncoder:Z

    if-eqz v4, :cond_1

    .line 35
    iget v4, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    add-int/2addr v4, v2

    sub-int/2addr v4, p2

    add-int v0, v3, v4

    .line 39
    .local v0, "dest":I
    :goto_1
    ushr-int/lit8 v0, v0, 0x2

    .line 40
    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 41
    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 42
    int-to-byte v4, v0

    aput-byte v4, p1, v2

    .line 26
    .end local v0    # "dest":I
    .end local v3    # "src":I
    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 37
    .restart local v3    # "src":I
    :cond_1
    iget v4, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    add-int/2addr v4, v2

    sub-int/2addr v4, p2

    sub-int v0, v3, v4

    .restart local v0    # "dest":I
    goto :goto_1

    .line 46
    .end local v0    # "dest":I
    .end local v3    # "src":I
    :cond_2
    sub-int/2addr v2, p2

    .line 47
    iget v4, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/tukaani/xz/simple/ARM;->pos:I

    .line 48
    return v2
.end method
