.class public Lorg/tukaani/xz/common/DecoderUtil;
.super Lorg/tukaani/xz/common/Util;
.source "DecoderUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/tukaani/xz/common/Util;-><init>()V

    return-void
.end method

.method public static areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z
    .locals 2
    .param p0, "a"    # Lorg/tukaani/xz/common/StreamFlags;
    .param p1, "b"    # Lorg/tukaani/xz/common/StreamFlags;

    .prologue
    .line 94
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
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;
        }
    .end annotation

    .prologue
    .line 83
    aget-byte v1, p0, p1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 84
    :cond_0
    new-instance v1, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>()V

    throw v1

    .line 86
    :cond_1
    new-instance v0, Lorg/tukaani/xz/common/StreamFlags;

    invoke-direct {v0}, Lorg/tukaani/xz/common/StreamFlags;-><init>()V

    .line 87
    .local v0, "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    iput v1, v0, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    .line 89
    return-object v0
.end method

.method public static decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;
    .locals 9
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 55
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

    .line 58
    :cond_0
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v4, "XZ Stream Footer is corrupt"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    :cond_1
    const/4 v3, 0x6

    invoke-static {p0, v8, v3, v6}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v3

    if-nez v3, :cond_2

    .line 62
    new-instance v3, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v4, "XZ Stream Footer is corrupt"

    invoke-direct {v3, v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_2
    const/16 v3, 0x8

    :try_start_0
    invoke-static {p0, v3}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    .local v2, "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 74
    iget-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v6, v1, 0x8

    shl-int/2addr v3, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    iput-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    .end local v2    # "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    new-instance v3, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 69
    const-string/jumbo v4, "Unsupported options in XZ Stream Footer"

    .line 68
    invoke-direct {v3, v4}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    .end local v0    # "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    .restart local v1    # "i":I
    .restart local v2    # "streamFlags":Lorg/tukaani/xz/common/StreamFlags;
    :cond_3
    iget-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    iput-wide v4, v2, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    .line 78
    return-object v2
.end method

.method public static decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;
    .locals 5
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 38
    aget-byte v2, p0, v1

    sget-object v3, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 39
    new-instance v2, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v2}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v2

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    .line 42
    sget-object v3, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    .line 41
    const/4 v4, 0x2

    invoke-static {p0, v2, v4, v3}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v2

    if-nez v2, :cond_2

    .line 43
    new-instance v2, Lorg/tukaani/xz/CorruptedInputException;

    const-string/jumbo v3, "XZ Stream Header is corrupt"

    invoke-direct {v2, v3}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_2
    :try_start_0
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v2

    invoke-static {p0, v2}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFlags([BI)Lorg/tukaani/xz/common/StreamFlags;
    :try_end_0
    .catch Lorg/tukaani/xz/UnsupportedOptionsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/tukaani/xz/UnsupportedOptionsException;
    new-instance v2, Lorg/tukaani/xz/UnsupportedOptionsException;

    .line 49
    const-string/jumbo v3, "Unsupported options in XZ Stream Header"

    .line 48
    invoke-direct {v2, v3}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static decodeVLI(Ljava/io/InputStream;)J
    .locals 8
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 98
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 99
    .local v0, "b":I
    if-ne v0, v7, :cond_0

    .line 100
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 102
    :cond_0
    and-int/lit8 v4, v0, 0x7f

    int-to-long v2, v4

    .line 103
    .local v2, "num":J
    const/4 v1, 0x0

    .line 105
    .local v1, "i":I
    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_4

    .line 106
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x9

    if-lt v1, v4, :cond_1

    .line 107
    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v4

    .line 109
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 110
    if-ne v0, v7, :cond_2

    .line 111
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 113
    :cond_2
    if-nez v0, :cond_3

    .line 114
    new-instance v4, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v4}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v4

    .line 116
    :cond_3
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    mul-int/lit8 v6, v1, 0x7

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    goto :goto_0

    .line 119
    :cond_4
    return-wide v2
.end method

.method public static isCRC32Valid([BIII)Z
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "ref_off"    # I

    .prologue
    .line 24
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 25
    .local v0, "crc32":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 28
    .local v2, "value":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    .line 29
    mul-int/lit8 v4, v1, 0x8

    ushr-long v4, v2, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    add-int v5, p3, v1

    aget-byte v5, p0, v5

    if-eq v4, v5, :cond_0

    .line 30
    const/4 v4, 0x0

    return v4

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_1
    const/4 v4, 0x1

    return v4
.end method
