.class Lorg/tukaani/xz/SimpleInputStream;
.super Ljava/io/InputStream;
.source "SimpleInputStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private final filterBuf:[B

.field private filtered:I

.field private in:Ljava/io/InputStream;

.field private pos:I

.field private final simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

.field private final tempBuf:[B

.field private unfiltered:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/tukaani/xz/SimpleInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/tukaani/xz/SimpleInputStream;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/simple/SimpleFilter;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iput v1, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iput v1, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iput v1, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput-boolean v1, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    iput-object v3, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    new-array v2, v0, [B

    iput-object v2, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-boolean v2, Lorg/tukaani/xz/SimpleInputStream;->-assertionsDisabled:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    return-void
.end method

.method static getMemoryUsage()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v0

    :cond_1
    iget v0, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

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

    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

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

    iget-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lorg/tukaani/xz/SimpleInputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/tukaani/xz/SimpleInputStream;->tempBuf:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_1
    add-int v5, p2, p3

    if-ltz v5, :cond_0

    add-int v5, p2, p3

    array-length v8, p1

    if-gt v5, v8, :cond_0

    if-nez p3, :cond_2

    return v7

    :cond_2
    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    if-nez v5, :cond_3

    new-instance v4, Lorg/tukaani/xz/XZIOException;

    const-string/jumbo v5, "Stream closed"

    invoke-direct {v4, v5}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    if-eqz v5, :cond_4

    iget-object v4, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v4

    :cond_4
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    invoke-static {v5, v8, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    add-int/2addr v5, v0

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v5, v0

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v3, v0

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v5, v8

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v8

    const/16 v8, 0x1000

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget-object v9, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v10, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v11, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v5, v8, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    :cond_5
    if-eqz p3, :cond_6

    iget-boolean v5, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    if-eqz v5, :cond_8

    :cond_6
    if-lez v3, :cond_7

    :goto_1
    return v3

    :cond_7
    move v3, v4

    goto :goto_1

    :cond_8
    sget-boolean v5, Lorg/tukaani/xz/SimpleInputStream;->-assertionsDisabled:Z

    if-nez v5, :cond_a

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    if-nez v5, :cond_9

    move v5, v6

    :goto_2
    if-nez v5, :cond_a

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iput-object v1, p0, Lorg/tukaani/xz/SimpleInputStream;->exception:Ljava/io/IOException;

    throw v1

    :cond_9
    move v5, v7

    goto :goto_2

    :cond_a
    :try_start_1
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v5, v8

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v8

    rsub-int v2, v5, 0x1000

    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->in:Ljava/io/InputStream;

    iget-object v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v9, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v10, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v8, v9, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v4, :cond_b

    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/tukaani/xz/SimpleInputStream;->endReached:Z

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    const/4 v5, 0x0

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    goto :goto_0

    :cond_b
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget-object v5, p0, Lorg/tukaani/xz/SimpleInputStream;->simpleFilter:Lorg/tukaani/xz/simple/SimpleFilter;

    iget-object v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filterBuf:[B

    iget v9, p0, Lorg/tukaani/xz/SimpleInputStream;->pos:I

    iget v10, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    invoke-interface {v5, v8, v9, v10}, Lorg/tukaani/xz/simple/SimpleFilter;->code([BII)I

    move-result v5

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sget-boolean v5, Lorg/tukaani/xz/SimpleInputStream;->-assertionsDisabled:Z

    if-nez v5, :cond_d

    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    if-gt v5, v8, :cond_c

    move v5, v6

    :goto_3
    if-nez v5, :cond_d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_c
    move v5, v7

    goto :goto_3

    :cond_d
    iget v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I

    iget v8, p0, Lorg/tukaani/xz/SimpleInputStream;->filtered:I

    sub-int/2addr v5, v8

    iput v5, p0, Lorg/tukaani/xz/SimpleInputStream;->unfiltered:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
