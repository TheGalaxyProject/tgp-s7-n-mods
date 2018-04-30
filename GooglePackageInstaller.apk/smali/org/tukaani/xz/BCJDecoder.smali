.class Lorg/tukaani/xz/BCJDecoder;
.super Lorg/tukaani/xz/BCJCoder;
.source "BCJDecoder.java"

# interfaces
.implements Lorg/tukaani/xz/FilterDecoder;


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final filterID:J

.field private final startOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/tukaani/xz/BCJDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/tukaani/xz/BCJDecoder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(J[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    sget-boolean v2, Lorg/tukaani/xz/BCJDecoder;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    iput-wide p1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    array-length v2, p3

    if-nez v2, :cond_1

    iput v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    :goto_0
    return-void

    :cond_1
    array-length v2, p3

    if-ne v2, v4, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    goto :goto_0

    :cond_3
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v3, "Unsupported BCJ filter properties"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    new-instance v0, Lorg/tukaani/xz/simple/X86;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    :cond_0
    :goto_0
    new-instance v1, Lorg/tukaani/xz/SimpleInputStream;

    invoke-direct {v1, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v1

    :cond_1
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v0, Lorg/tukaani/xz/simple/PowerPC;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x6

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    new-instance v0, Lorg/tukaani/xz/simple/IA64;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/IA64;-><init>(ZI)V

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    new-instance v0, Lorg/tukaani/xz/simple/ARM;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/ARM;-><init>(ZI)V

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x8

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    new-instance v0, Lorg/tukaani/xz/simple/ARMThumb;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/ARMThumb;-><init>(ZI)V

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    new-instance v0, Lorg/tukaani/xz/simple/SPARC;

    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/SPARC;-><init>(ZI)V

    goto :goto_0

    :cond_6
    sget-boolean v1, Lorg/tukaani/xz/BCJDecoder;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getMemoryUsage()I
    .locals 1

    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method
