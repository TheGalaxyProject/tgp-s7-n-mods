.class public Lorg/tukaani/xz/DeltaInputStream;
.super Ljava/io/InputStream;
.source "DeltaInputStream.java"


# instance fields
.field private final delta:Lorg/tukaani/xz/delta/DeltaDecoder;

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final tempBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    new-instance v0, Lorg/tukaani/xz/delta/DeltaDecoder;

    invoke-direct {v0, p2}, Lorg/tukaani/xz/delta/DeltaDecoder;-><init>(I)V

    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->delta:Lorg/tukaani/xz/delta/DeltaDecoder;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/DeltaInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez p3, :cond_0

    return v2

    :cond_0
    iget-object v2, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    if-nez v2, :cond_1

    new-instance v2, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v3, "Stream closed"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    throw v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/tukaani/xz/DeltaInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v3, :cond_3

    return v3

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/DeltaInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_3
    iget-object v2, p0, Lorg/tukaani/xz/DeltaInputStream;->delta:Lorg/tukaani/xz/delta/DeltaDecoder;

    invoke-virtual {v2, p1, p2, v1}, Lorg/tukaani/xz/delta/DeltaDecoder;->decode([BII)V

    return v1
.end method
