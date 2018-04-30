.class Lorg/tukaani/xz/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "CountingInputStream.java"


# instance fields
.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    return-void
.end method


# virtual methods
.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/tukaani/xz/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lorg/tukaani/xz/CountingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/tukaani/xz/CountingInputStream;->size:J

    :cond_0
    return v0
.end method
