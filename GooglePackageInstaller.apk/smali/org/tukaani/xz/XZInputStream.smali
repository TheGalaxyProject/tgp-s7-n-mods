.class public Lorg/tukaani/xz/XZInputStream;
.super Ljava/io/InputStream;
.source "XZInputStream.java"


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private final memoryLimit:I

.field private final tempBuf:[B

.field private final verifyCheck:Z

.field private xzIn:Lorg/tukaani/xz/SingleXZInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    iput-object p1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    iput p2, p0, Lorg/tukaani/xz/XZInputStream;->memoryLimit:I

    iput-boolean p3, p0, Lorg/tukaani/xz/XZInputStream;->verifyCheck:Z

    new-instance v0, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {v0, p1, p2, p3}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ)V

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    return-void
.end method

.method private prepareNextStream()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Ljava/io/DataInputStream;

    iget-object v4, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0xc

    new-array v0, v4, [B

    :cond_0
    invoke-virtual {v2, v0, v5, v6}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iput-boolean v6, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    return-void

    :cond_1
    invoke-virtual {v2, v0, v6, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    aget-byte v4, v0, v5

    if-nez v4, :cond_2

    aget-byte v4, v0, v6

    if-nez v4, :cond_2

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    if-nez v4, :cond_2

    aget-byte v4, v0, v7

    if-eqz v4, :cond_0

    :cond_2
    const/4 v4, 0x4

    const/16 v5, 0x8

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    :try_start_0
    new-instance v4, Lorg/tukaani/xz/SingleXZInputStream;

    iget-object v5, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    iget v6, p0, Lorg/tukaani/xz/XZInputStream;->memoryLimit:I

    iget-boolean v7, p0, Lorg/tukaani/xz/XZInputStream;->verifyCheck:Z

    invoke-direct {v4, v5, v6, v7, v0}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;IZ[B)V

    iput-object v4, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;
    :try_end_0
    .catch Lorg/tukaani/xz/XZFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v5, "Garbage after a valid XZ Stream"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/SingleXZInputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

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

    iget-object v1, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/XZInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/XZInputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v6, 0x0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    :cond_1
    add-int v4, p2, p3

    if-ltz v4, :cond_0

    add-int v4, p2, p3

    array-length v5, p1

    if-gt v4, v5, :cond_0

    if-nez p3, :cond_2

    return v6

    :cond_2
    iget-object v4, p0, Lorg/tukaani/xz/XZInputStream;->in:Ljava/io/InputStream;

    if-nez v4, :cond_3

    new-instance v3, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v4, "Stream closed"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v4, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-eqz v4, :cond_4

    iget-object v3, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    throw v3

    :cond_4
    iget-boolean v4, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    if-eqz v4, :cond_5

    return v3

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_0
    if-lez p3, :cond_a

    :try_start_0
    iget-object v4, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    if-nez v4, :cond_8

    invoke-direct {p0}, Lorg/tukaani/xz/XZInputStream;->prepareNextStream()V

    iget-boolean v4, p0, Lorg/tukaani/xz/XZInputStream;->endReached:Z

    if-eqz v4, :cond_8

    if-nez v2, :cond_7

    move v2, v3

    :cond_7
    return v2

    :cond_8
    iget-object v4, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;

    invoke-virtual {v4, p1, p2, p3}, Lorg/tukaani/xz/SingleXZInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_9

    add-int/2addr v2, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_9
    if-ne v1, v3, :cond_6

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/tukaani/xz/XZInputStream;->xzIn:Lorg/tukaani/xz/SingleXZInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/tukaani/xz/XZInputStream;->exception:Ljava/io/IOException;

    if-nez v2, :cond_a

    throw v0

    :cond_a
    return v2
.end method
