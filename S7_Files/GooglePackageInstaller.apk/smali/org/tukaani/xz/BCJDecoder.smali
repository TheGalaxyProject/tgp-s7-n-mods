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

    .prologue
    const-class v0, Lorg/tukaani/xz/BCJDecoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/tukaani/xz/BCJDecoder;->-assertionsDisabled:Z

    .line 15
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(J[B)V
    .locals 5
    .param p1, "filterID"    # J
    .param p3, "props"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0}, Lorg/tukaani/xz/BCJCoder;-><init>()V

    .line 21
    sget-boolean v2, Lorg/tukaani/xz/BCJDecoder;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Lorg/tukaani/xz/BCJDecoder;->isBCJFilterID(J)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 22
    :cond_0
    iput-wide p1, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    .line 24
    array-length v2, p3

    if-nez v2, :cond_1

    .line 25
    iput v3, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    .line 20
    :goto_0
    return-void

    .line 26
    :cond_1
    array-length v2, p3

    if-ne v2, v4, :cond_3

    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 29
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 31
    :cond_2
    iput v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_3
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 34
    const-string/jumbo v3, "Unsupported BCJ filter properties"

    .line 33
    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 46
    new-instance v0, Lorg/tukaani/xz/simple/X86;

    .end local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/X86;-><init>(ZI)V

    .line 60
    :cond_0
    :goto_0
    new-instance v1, Lorg/tukaani/xz/SimpleInputStream;

    invoke-direct {v1, p1, v0}, Lorg/tukaani/xz/SimpleInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V

    return-object v1

    .line 47
    .restart local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    :cond_1
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 48
    new-instance v0, Lorg/tukaani/xz/simple/PowerPC;

    .end local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/PowerPC;-><init>(ZI)V

    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    goto :goto_0

    .line 49
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    :cond_2
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x6

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    .line 50
    new-instance v0, Lorg/tukaani/xz/simple/IA64;

    .end local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/IA64;-><init>(ZI)V

    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    goto :goto_0

    .line 51
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    :cond_3
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    .line 52
    new-instance v0, Lorg/tukaani/xz/simple/ARM;

    .end local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/ARM;-><init>(ZI)V

    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    goto :goto_0

    .line 53
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    :cond_4
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x8

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 54
    new-instance v0, Lorg/tukaani/xz/simple/ARMThumb;

    .end local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/ARMThumb;-><init>(ZI)V

    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    goto :goto_0

    .line 55
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    :cond_5
    iget-wide v2, p0, Lorg/tukaani/xz/BCJDecoder;->filterID:J

    const-wide/16 v4, 0x9

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 56
    new-instance v0, Lorg/tukaani/xz/simple/SPARC;

    .end local v0    # "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    iget v1, p0, Lorg/tukaani/xz/BCJDecoder;->startOffset:I

    invoke-direct {v0, v6, v1}, Lorg/tukaani/xz/simple/SPARC;-><init>(ZI)V

    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    goto :goto_0

    .line 58
    .local v0, "simpleFilter":Lorg/tukaani/xz/simple/SimpleFilter;
    :cond_6
    sget-boolean v1, Lorg/tukaani/xz/BCJDecoder;->-assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public getMemoryUsage()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/tukaani/xz/SimpleInputStream;->getMemoryUsage()I

    move-result v0

    return v0
.end method
