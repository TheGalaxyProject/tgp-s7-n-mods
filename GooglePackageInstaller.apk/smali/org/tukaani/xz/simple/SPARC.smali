.class public final Lorg/tukaani/xz/simple/SPARC;
.super Ljava/lang/Object;
.source "SPARC.java"

# interfaces
.implements Lorg/tukaani/xz/simple/SimpleFilter;


# instance fields
.field private final isEncoder:Z

.field private pos:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    iput p2, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    return-void
.end method


# virtual methods
.method public code([BII)I
    .locals 6

    add-int v4, p2, p3

    add-int/lit8 v1, v4, -0x4

    move v2, p2

    :goto_0
    if-gt v2, v1, :cond_3

    aget-byte v4, p1, v2

    const/16 v5, 0x40

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xc0

    if-nez v4, :cond_1

    :goto_1
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    shl-int/lit8 v3, v3, 0x2

    iget-boolean v4, p0, Lorg/tukaani/xz/simple/SPARC;->isEncoder:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v4, v2

    sub-int/2addr v4, p2

    add-int v0, v3, v4

    :goto_2
    ushr-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v4, v0, 0x16

    and-int/lit8 v4, v4, 0x1

    rsub-int/lit8 v4, v4, 0x0

    shl-int/lit8 v4, v4, 0x16

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    const v5, 0x3fffff

    and-int/2addr v5, v0

    or-int/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    or-int v0, v4, v5

    ushr-int/lit8 v4, v0, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v2, 0x3

    int-to-byte v5, v0

    aput-byte v5, p1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_1
    aget-byte v4, p1, v2

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xc0

    const/16 v5, 0xc0

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_2
    iget v4, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v4, v2

    sub-int/2addr v4, p2

    sub-int v0, v3, v4

    goto :goto_2

    :cond_3
    sub-int/2addr v2, p2

    iget v4, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/tukaani/xz/simple/SPARC;->pos:I

    return v2
.end method
