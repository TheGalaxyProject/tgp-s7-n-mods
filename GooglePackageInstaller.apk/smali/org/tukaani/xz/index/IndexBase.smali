.class abstract Lorg/tukaani/xz/index/IndexBase;
.super Ljava/lang/Object;
.source "IndexBase.java"


# instance fields
.field blocksSum:J

.field indexListSize:J

.field private final invalidIndexException:Lorg/tukaani/xz/XZIOException;

.field recordCount:J

.field uncompressedSum:J


# direct methods
.method constructor <init>(Lorg/tukaani/xz/XZIOException;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    iput-object p1, p0, Lorg/tukaani/xz/index/IndexBase;->invalidIndexException:Lorg/tukaani/xz/XZIOException;

    return-void
.end method

.method private getUnpaddedIndexSize()J
    .locals 4

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    invoke-static {v0, v1}, Lorg/tukaani/xz/common/Util;->getVLISize(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method add(JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/XZIOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    const-wide/16 v2, 0x3

    add-long/2addr v2, p1

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    invoke-static {p1, p2}, Lorg/tukaani/xz/common/Util;->getVLISize(J)I

    move-result v2

    invoke-static {p3, p4}, Lorg/tukaani/xz/common/Util;->getVLISize(J)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->indexListSize:J

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->recordCount:J

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->uncompressedSum:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/index/IndexBase;->invalidIndexException:Lorg/tukaani/xz/XZIOException;

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v0

    const-wide v2, 0x400000000L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getStreamSize()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    return-void
.end method

.method getIndexPaddingSize()I
    .locals 4

    invoke-direct {p0}, Lorg/tukaani/xz/index/IndexBase;->getUnpaddedIndexSize()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getIndexSize()J
    .locals 4

    invoke-direct {p0}, Lorg/tukaani/xz/index/IndexBase;->getUnpaddedIndexSize()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getStreamSize()J
    .locals 6

    const-wide/16 v4, 0xc

    iget-wide v0, p0, Lorg/tukaani/xz/index/IndexBase;->blocksSum:J

    add-long/2addr v0, v4

    invoke-virtual {p0}, Lorg/tukaani/xz/index/IndexBase;->getIndexSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method
