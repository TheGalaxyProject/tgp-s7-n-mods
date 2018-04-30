.class public Lorg/tukaani/xz/common/DecoderUtil;
.super Lorg/tukaani/xz/common/Util;
.source "DecoderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/tukaani/xz/common/Util;-><init>()V

    return-void
.end method

.method public static areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z
    .locals 2

    iget v0, p0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    iget v1, p1, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    aget-byte v1, p0, p1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    :cond_0
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw v1

    :cond_1
    new-instance v0, Lorg/tukaani/xz/common/StreamFlags;

    invoke-direct {v0}, Lorg/tukaani/xz/common/StreamFlags;-><init>()V

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    iput v1, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    return-object v0
.end method

.method public static decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v6, 0x0

    const/16 v3, 0xa

    aget-byte v3, p0, v3

    sget-object v4, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_0

    const/16 v3, 0xb

    aget-byte v3, p0, v3

    sget-object v4, Lorg/tukaani/xz/XZ;->FOOTER_MAGIC:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v4, "XZ Stream Footer is corrupt"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v3, 0x6

    invoke-static {p0, v8, v3, v6}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v4, "XZ Stream Footer is corrupt"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/16 v3, 0x8

    :try_start_0
    invoke-static {p0, v3}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v8, :cond_3

    iget-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v6, v1, 0x8

    shl-int/2addr v3, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v4, "Unsupported options in XZ Stream Footer"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    return-object v2
.end method

.method public static decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    sget-object v3, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    new-instance v2, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v2}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    sget-object v3, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    invoke-static {p0, v2, v4, v3}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v3, "XZ Stream Header is corrupt"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    invoke-static {p0, v2}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string/jumbo v3, "Unsupported options in XZ Stream Header"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decodeVLI(Ljava/io/InputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_0

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    :cond_0
    and-int/lit8 v4, v0, 0x7f

    int-to-long v2, v4

    const/4 v1, 0x0

    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x9

    if-lt v1, v4, :cond_1

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v4

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    :cond_2
    if-nez v0, :cond_3

    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v4

    :cond_3
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    mul-int/lit8 v6, v1, 0x7

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_0

    :cond_4
    return-wide v2
.end method

.method public static isCRC32Valid([BIII)Z
    .locals 6

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    mul-int/lit8 v4, v1, 0x8

    ushr-long v4, v2, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int v5, p3, v1

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    return v4
.end method
