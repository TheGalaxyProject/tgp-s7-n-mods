.class public final Lmf/org/apache/xerces/impl/io/UTF16Reader;
.super Ljava/io/Reader;
.source "UTF16Reader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field protected final fIsBigEndian:Z

.field private final fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 6

    .prologue
    .line 107
    new-array v2, p2, [B

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 6

    .prologue
    const/16 v2, 0x1000

    .line 80
    new-instance v4, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 6

    .prologue
    const/16 v2, 0x1000

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 92
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 122
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    .line 123
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    .line 124
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    .line 125
    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 126
    iput-object p5, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    .line 127
    return-void
.end method

.method private expectedTwoBytes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 318
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ExpectedByte"

    const/4 v5, 0x2

    .line 321
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "2"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "2"

    aput-object v7, v5, v6

    .line 317
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private processBE([CII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 297
    :goto_0
    if-ge v0, p3, :cond_0

    .line 298
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v4, v1, 0xff

    .line 299
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    .line 300
    add-int/lit8 v2, p2, 0x1

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 297
    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method private processLE([CII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 307
    :goto_0
    if-ge v0, p3, :cond_0

    .line 308
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    and-int/lit16 v4, v1, 0xff

    .line 309
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v3, v2, 0xff

    .line 310
    add-int/lit8 v2, p2, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, p2

    .line 307
    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    .line 312
    :cond_0
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
    .line 287
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 288
    return-void
.end method

.method public mark(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "UTF-16"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 147
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 148
    if-eq v0, v2, :cond_0

    .line 151
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 152
    if-eq v1, v2, :cond_1

    .line 156
    :goto_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    if-nez v2, :cond_2

    .line 160
    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0

    .line 149
    :cond_0
    return v2

    .line 153
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    goto :goto_0

    .line 157
    :cond_2
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public read([CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 178
    shl-int/lit8 v0, p3, 0x1

    .line 179
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 182
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 183
    if-eq v0, v3, :cond_1

    .line 187
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 194
    :goto_1
    shr-int/lit8 v0, v0, 0x1

    .line 195
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fIsBigEndian:Z

    if-nez v1, :cond_4

    .line 199
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->processLE([CII)V

    .line 201
    :goto_2
    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    array-length v0, v0

    goto :goto_0

    .line 184
    :cond_1
    return v3

    .line 188
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 189
    if-eq v2, v3, :cond_3

    .line 192
    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fBuffer:[B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    move v0, v1

    goto :goto_1

    .line 190
    :cond_3
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    goto :goto_3

    .line 196
    :cond_4
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->processBE([CII)V

    goto :goto_2
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    const/4 v6, 0x1

    .line 215
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    shl-long v2, p1, v6

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 216
    and-long v2, v0, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF16Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    .line 218
    if-eq v2, v3, :cond_1

    .line 221
    :goto_0
    add-long/2addr v0, v8

    .line 223
    :cond_0
    shr-long/2addr v0, v6

    return-wide v0

    .line 219
    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/io/UTF16Reader;->expectedTwoBytes()V

    goto :goto_0
.end method
