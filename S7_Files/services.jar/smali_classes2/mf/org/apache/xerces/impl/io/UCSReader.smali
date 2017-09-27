.class public final Lmf/org/apache/xerces/impl/io/UCSReader;
.super Ljava/io/Reader;
.source "UCSReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final UCS2BE:S = 0x2s

.field public static final UCS2LE:S = 0x1s

.field public static final UCS4BE:S = 0x8s

.field public static final UCS4LE:S = 0x4s


# instance fields
.field protected final fBuffer:[B

.field protected final fEncoding:S

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IS)V
    .locals 1

    .prologue
    .line 91
    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;[BS)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;S)V
    .locals 1

    .prologue
    const/16 v0, 0x2000

    .line 78
    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;IS)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BS)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 104
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    .line 105
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    .line 106
    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    .line 107
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 323
    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 295
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xff

    const/4 v4, -0x1

    .line 127
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 128
    if-eq v0, v5, :cond_0

    .line 131
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 132
    if-eq v1, v5, :cond_1

    .line 136
    iget-short v2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    .line 151
    iget-short v2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    .line 154
    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0

    .line 129
    :cond_0
    return v4

    .line 133
    :cond_1
    return v4

    .line 137
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 138
    if-eq v2, v5, :cond_3

    .line 141
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 142
    if-eq v3, v5, :cond_4

    .line 145
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 148
    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    .line 139
    :cond_3
    return v4

    .line 143
    :cond_4
    return v4

    .line 146
    :cond_5
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0

    .line 152
    :cond_6
    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public read([CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 172
    iget-short v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v0, v10, :cond_0

    move v0, v1

    :goto_0
    shl-int v0, p3, v0

    .line 173
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v4, v4

    if-gt v0, v4, :cond_1

    .line 176
    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    invoke-virtual {v4, v5, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 177
    if-eq v0, v9, :cond_2

    .line 179
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v4, v10, :cond_3

    .line 195
    and-int/lit8 v4, v0, 0x1

    .line 196
    if-nez v4, :cond_7

    .line 209
    :goto_2
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v4, v10, :cond_9

    :goto_3
    shr-int v4, v0, v1

    move v1, v3

    .line 211
    :goto_4
    if-ge v1, v4, :cond_d

    .line 212
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 213
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    .line 215
    iget-short v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-ge v6, v10, :cond_a

    .line 226
    iget-short v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    if-eq v6, v2, :cond_c

    .line 230
    add-int v6, p2, v1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v6

    .line 211
    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_4

    :cond_0
    move v0, v2

    .line 172
    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v0, v0

    goto :goto_1

    .line 177
    :cond_2
    return v9

    .line 181
    :cond_3
    and-int/lit8 v4, v0, 0x3

    rsub-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v4, 0x3

    move v4, v3

    .line 182
    :goto_6
    if-ge v4, v5, :cond_6

    .line 183
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 184
    if-eq v6, v9, :cond_5

    .line 190
    iget-object v7, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v8, v0, v4

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 186
    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v7, v0, v4

    aput-byte v3, v6, v7

    .line 185
    add-int/lit8 v4, v4, 0x1

    :cond_5
    if-lt v4, v5, :cond_4

    .line 192
    :cond_6
    add-int/2addr v0, v5

    goto :goto_2

    .line 197
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 198
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 199
    if-eq v4, v9, :cond_8

    .line 203
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    goto :goto_2

    .line 200
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    aput-byte v3, v4, v0

    goto :goto_2

    :cond_9
    move v1, v2

    .line 209
    goto :goto_3

    .line 216
    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v0, v6, v0

    and-int/lit16 v6, v0, 0xff

    .line 217
    iget-object v8, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v0, v7, 0x1

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    .line 218
    iget-short v8, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v9, 0x8

    if-eq v8, v9, :cond_b

    .line 222
    add-int v8, p2, v1

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v7

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v8

    goto :goto_5

    .line 219
    :cond_b
    add-int v8, p2, v1

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v3, v5

    shl-int/lit8 v5, v6, 0x8

    add-int/2addr v3, v5

    add-int/2addr v3, v7

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v8

    goto :goto_5

    .line 227
    :cond_c
    add-int v6, p2, v1

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v5

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v6

    goto/16 :goto_5

    .line 234
    :cond_d
    return v4
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 312
    return-void
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-short v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 255
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    shl-long v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 256
    or-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    shr-long v0, v2, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x2

    .line 254
    goto :goto_0

    .line 257
    :cond_1
    shr-long v0, v2, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method
