.class public final Lmf/org/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/16 v0, 0x800

    .line 87
    new-instance v1, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 114
    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 100
    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 128
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    .line 129
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    .line 130
    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 131
    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    .line 132
    return-void
.end method

.method private expectedByte(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 684
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "ExpectedByte"

    const/4 v5, 0x2

    .line 687
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 683
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidByte(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 696
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidByte"

    const/4 v5, 0x2

    .line 699
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 695
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidSurrogate(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    .prologue
    .line 706
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 707
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidHighSurrogate"

    const/4 v5, 0x1

    .line 710
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 706
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
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
    .line 672
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 673
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
    .line 643
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "UTF-8"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, -0x1

    .line 154
    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 155
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    if-eq v0, v6, :cond_0

    .line 263
    iput v6, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move v0, v2

    .line 270
    :goto_0
    return v0

    .line 161
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eqz v0, :cond_2

    .line 162
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v0, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    .line 163
    :goto_1
    if-eq v1, v6, :cond_3

    .line 169
    if-lt v1, v8, :cond_4

    .line 175
    and-int/lit16 v3, v1, 0xe0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_5

    .line 189
    :cond_1
    and-int/lit16 v3, v1, 0xf0

    const/16 v4, 0xe0

    if-eq v3, v4, :cond_9

    .line 216
    and-int/lit16 v3, v1, 0xf8

    const/16 v4, 0xf0

    if-eq v3, v4, :cond_14

    const/4 v0, 0x1

    const/4 v3, 0x1

    .line 257
    invoke-direct {p0, v0, v3, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move v0, v2

    .line 259
    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1

    .line 164
    :cond_3
    return v6

    .line 170
    :cond_4
    int-to-char v0, v1

    goto :goto_0

    .line 175
    :cond_5
    and-int/lit8 v3, v1, 0x1e

    if-eqz v3, :cond_1

    .line 176
    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v2, :cond_6

    .line 177
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    .line 178
    :goto_2
    if-eq v0, v6, :cond_7

    .line 181
    :goto_3
    and-int/lit16 v2, v0, 0xc0

    if-ne v2, v8, :cond_8

    .line 184
    :goto_4
    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x7c0

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    goto :goto_0

    .line 177
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_2

    .line 179
    :cond_7
    invoke-direct {p0, v7, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_3

    .line 182
    :cond_8
    invoke-direct {p0, v7, v7, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_4

    .line 190
    :cond_9
    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v2, :cond_c

    .line 191
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    move v9, v2

    move v2, v0

    move v0, v9

    .line 192
    :goto_5
    if-eq v2, v6, :cond_d

    .line 195
    :goto_6
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v8, :cond_e

    .line 198
    :cond_a
    :goto_7
    invoke-direct {p0, v7, v5, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 200
    :cond_b
    :goto_8
    iget v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v3, :cond_11

    .line 201
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    .line 202
    :goto_9
    if-eq v0, v6, :cond_12

    .line 205
    :goto_a
    and-int/lit16 v3, v0, 0xc0

    if-ne v3, v8, :cond_13

    .line 208
    :goto_b
    shl-int/lit8 v1, v1, 0xc

    const v3, 0xf000

    and-int/2addr v1, v3

    shl-int/lit8 v2, v2, 0x6

    and-int/lit16 v2, v2, 0xfc0

    or-int/2addr v1, v2

    .line 209
    and-int/lit8 v0, v0, 0x3f

    .line 208
    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 191
    :cond_c
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_5

    .line 193
    :cond_d
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_6

    :cond_e
    const/16 v3, 0xed

    .line 196
    if-eq v1, v3, :cond_10

    .line 197
    :cond_f
    and-int/lit8 v3, v1, 0xf

    if-nez v3, :cond_b

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_10
    const/16 v3, 0xa0

    .line 196
    if-lt v2, v3, :cond_f

    goto :goto_7

    .line 201
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_9

    .line 203
    :cond_12
    invoke-direct {p0, v5, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_a

    .line 206
    :cond_13
    invoke-direct {p0, v5, v5, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_b

    .line 217
    :cond_14
    iget v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v2, :cond_17

    .line 218
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    move v9, v2

    move v2, v0

    move v0, v9

    .line 219
    :goto_c
    if-eq v2, v6, :cond_18

    .line 222
    :goto_d
    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v8, :cond_19

    .line 224
    :cond_15
    invoke-direct {p0, v7, v5, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 226
    :cond_16
    :goto_e
    iget v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v3, :cond_1a

    .line 227
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    move v9, v3

    move v3, v0

    move v0, v9

    .line 228
    :goto_f
    if-eq v3, v6, :cond_1b

    .line 231
    :goto_10
    and-int/lit16 v4, v3, 0xc0

    if-ne v4, v8, :cond_1c

    .line 234
    :goto_11
    iget v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eq v0, v4, :cond_1d

    .line 235
    iget-object v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    .line 236
    :goto_12
    if-eq v0, v6, :cond_1e

    .line 239
    :goto_13
    and-int/lit16 v4, v0, 0xc0

    if-ne v4, v8, :cond_1f

    .line 242
    :goto_14
    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x1c

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    or-int/2addr v1, v4

    const/16 v4, 0x10

    .line 243
    if-gt v1, v4, :cond_20

    .line 246
    :goto_15
    add-int/lit8 v1, v1, -0x1

    .line 248
    shl-int/lit8 v1, v1, 0x6

    and-int/lit16 v1, v1, 0x3c0

    const v4, 0xd800

    .line 247
    or-int/2addr v1, v4

    .line 248
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3c

    .line 247
    or-int/2addr v1, v2

    .line 249
    shr-int/lit8 v2, v3, 0x4

    and-int/lit8 v2, v2, 0x3

    .line 247
    or-int/2addr v1, v2

    .line 250
    shl-int/lit8 v2, v3, 0x6

    and-int/lit16 v2, v2, 0x3c0

    const v3, 0xdc00

    or-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v2

    .line 252
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move v0, v1

    .line 253
    goto/16 :goto_0

    .line 218
    :cond_17
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_c

    :cond_18
    const/4 v3, 0x4

    .line 220
    invoke-direct {p0, v7, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_d

    .line 223
    :cond_19
    and-int/lit8 v3, v2, 0x30

    if-nez v3, :cond_16

    and-int/lit8 v3, v1, 0x7

    if-eqz v3, :cond_15

    goto :goto_e

    .line 227
    :cond_1a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    goto :goto_f

    :cond_1b
    const/4 v4, 0x4

    .line 229
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_10

    .line 232
    :cond_1c
    invoke-direct {p0, v5, v5, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_11

    .line 235
    :cond_1d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_12

    :cond_1e
    const/4 v4, 0x4

    const/4 v5, 0x4

    .line 237
    invoke-direct {p0, v4, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_13

    :cond_1f
    const/4 v4, 0x4

    const/4 v5, 0x4

    .line 240
    invoke-direct {p0, v4, v5, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_14

    .line 244
    :cond_20
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    goto :goto_15
.end method

.method public read([CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-eqz v0, :cond_1

    .line 322
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v1, 0x0

    .line 323
    iput v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move v1, p2

    :goto_0
    const/4 v2, 0x0

    move v4, v1

    move v1, v2

    .line 331
    :goto_1
    if-ge v1, v0, :cond_6

    .line 332
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v2, v1

    .line 333
    if-gez v3, :cond_5

    move v2, v0

    .line 340
    :goto_2
    if-ge v1, v0, :cond_32

    .line 341
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v5, v3, v1

    .line 345
    if-gez v5, :cond_7

    .line 352
    and-int/lit16 v8, v5, 0xff

    .line 353
    and-int/lit16 v3, v8, 0xe0

    const/16 v5, 0xc0

    if-eq v3, v5, :cond_8

    .line 387
    :cond_0
    and-int/lit16 v3, v8, 0xf0

    const/16 v5, 0xe0

    if-eq v3, v5, :cond_e

    .line 453
    and-int/lit16 v3, v8, 0xf8

    const/16 v5, 0xf0

    if-eq v3, v5, :cond_1d

    .line 563
    if-gt v4, p2, :cond_31

    const/4 v3, 0x1

    const/4 v5, 0x1

    .line 568
    invoke-direct {p0, v3, v5, v8}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move v3, v4

    .line 340
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    goto :goto_2

    .line 295
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    .line 300
    :goto_4
    iget v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, p2

    .line 307
    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    .line 308
    if-eq v1, v2, :cond_4

    .line 311
    sub-int v2, v0, p2

    add-int/2addr v1, v2

    move v10, v1

    move v1, v0

    move v0, v10

    .line 312
    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length p3, v0

    goto :goto_4

    .line 301
    :cond_3
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p1, p2

    const/4 v1, -0x1

    .line 302
    iput v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 303
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 309
    return v0

    .line 334
    :cond_5
    add-int/lit8 v2, v4, 0x1

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p1, v4

    .line 331
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_1

    :cond_6
    move v2, v0

    .line 340
    goto :goto_2

    .line 346
    :cond_7
    add-int/lit8 v3, v4, 0x1

    int-to-char v5, v5

    int-to-char v5, v5

    aput-char v5, p1, v4

    goto :goto_3

    .line 353
    :cond_8
    and-int/lit8 v3, v8, 0x1e

    if-eqz v3, :cond_0

    .line 355
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_9

    .line 359
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    .line 360
    if-eq v3, v5, :cond_a

    .line 368
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move v2, v3

    .line 370
    :goto_7
    and-int/lit16 v3, v2, 0xc0

    const/16 v6, 0x80

    if-ne v3, v6, :cond_c

    .line 379
    :goto_8
    shl-int/lit8 v3, v8, 0x6

    and-int/lit16 v3, v3, 0x7c0

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    .line 380
    add-int/lit8 v3, v4, 0x1

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, p1, v4

    .line 381
    add-int/lit8 v2, v5, -0x1

    goto :goto_3

    .line 356
    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    move v5, v2

    move v2, v3

    .line 357
    goto :goto_7

    .line 361
    :cond_a
    if-gt v4, p2, :cond_b

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 366
    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_6

    .line 362
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    .line 363
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 364
    sub-int v0, v4, p2

    return v0

    .line 371
    :cond_c
    if-gt v4, p2, :cond_d

    const/4 v3, 0x2

    const/4 v6, 0x2

    .line 377
    invoke-direct {p0, v3, v6, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto :goto_8

    .line 372
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 373
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    .line 374
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 375
    sub-int v0, v4, p2

    return v0

    .line 389
    :cond_e
    add-int/lit8 v5, v1, 0x1

    if-lt v5, v0, :cond_11

    .line 393
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    .line 394
    if-eq v1, v3, :cond_12

    .line 402
    :goto_9
    add-int/lit8 v3, v2, 0x1

    move v6, v1

    .line 404
    :goto_a
    and-int/lit16 v1, v6, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_14

    .line 407
    :cond_f
    :goto_b
    if-gt v4, p2, :cond_17

    const/4 v1, 0x2

    const/4 v2, 0x3

    .line 413
    invoke-direct {p0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 416
    :cond_10
    :goto_c
    add-int/lit8 v1, v5, 0x1

    if-lt v1, v0, :cond_18

    .line 420
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    .line 421
    if-eq v2, v5, :cond_19

    .line 430
    :goto_d
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    .line 432
    :goto_e
    and-int/lit16 v3, v2, 0xc0

    const/16 v7, 0x80

    if-ne v3, v7, :cond_1b

    .line 442
    :goto_f
    shl-int/lit8 v3, v8, 0xc

    const v7, 0xf000

    and-int/2addr v3, v7

    shl-int/lit8 v6, v6, 0x6

    and-int/lit16 v6, v6, 0xfc0

    or-int/2addr v3, v6

    .line 443
    and-int/lit8 v2, v2, 0x3f

    .line 442
    or-int/2addr v2, v3

    .line 444
    add-int/lit8 v3, v4, 0x1

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, p1, v4

    .line 445
    add-int/lit8 v2, v5, -0x2

    goto/16 :goto_3

    .line 390
    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    move v6, v1

    move v3, v2

    .line 391
    goto :goto_a

    .line 395
    :cond_12
    if-gt v4, p2, :cond_13

    const/4 v3, 0x2

    const/4 v6, 0x3

    .line 400
    invoke-direct {p0, v3, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_9

    .line 396
    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    .line 397
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 398
    sub-int v0, v4, p2

    return v0

    :cond_14
    const/16 v1, 0xed

    .line 405
    if-eq v8, v1, :cond_16

    .line 406
    :cond_15
    and-int/lit8 v1, v8, 0xf

    if-nez v1, :cond_10

    and-int/lit8 v1, v6, 0x20

    if-eqz v1, :cond_f

    goto :goto_c

    :cond_16
    const/16 v1, 0xa0

    .line 405
    if-lt v6, v1, :cond_15

    goto :goto_b

    .line 408
    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 409
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    .line 410
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 411
    sub-int v0, v4, p2

    return v0

    .line 417
    :cond_18
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    move v5, v3

    .line 418
    goto :goto_e

    .line 422
    :cond_19
    if-gt v4, p2, :cond_1a

    const/4 v5, 0x3

    const/4 v7, 0x3

    .line 428
    invoke-direct {p0, v5, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto :goto_d

    .line 423
    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 424
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    .line 425
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 426
    sub-int v0, v4, p2

    return v0

    .line 433
    :cond_1b
    if-gt v4, p2, :cond_1c

    const/4 v3, 0x3

    const/4 v7, 0x3

    .line 440
    invoke-direct {p0, v3, v7, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_f

    .line 434
    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 435
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 436
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    .line 437
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 438
    sub-int v0, v4, p2

    return v0

    .line 455
    :cond_1d
    add-int/lit8 v5, v1, 0x1

    if-lt v5, v0, :cond_20

    .line 459
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    .line 460
    if-eq v1, v3, :cond_21

    .line 468
    :goto_10
    add-int/lit8 v3, v2, 0x1

    move v7, v1

    .line 470
    :goto_11
    and-int/lit16 v1, v7, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_23

    .line 472
    :cond_1e
    if-gt v4, p2, :cond_24

    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 478
    invoke-direct {p0, v1, v2, v7}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    .line 481
    :cond_1f
    :goto_12
    add-int/lit8 v2, v5, 0x1

    if-lt v2, v0, :cond_25

    .line 485
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v5, -0x1

    .line 486
    if-eq v1, v5, :cond_26

    .line 495
    :goto_13
    add-int/lit8 v3, v3, 0x1

    move v6, v1

    .line 497
    :goto_14
    and-int/lit16 v1, v6, 0xc0

    const/16 v5, 0x80

    if-ne v1, v5, :cond_28

    .line 508
    :goto_15
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v0, :cond_2a

    .line 512
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    .line 513
    if-eq v2, v5, :cond_2b

    .line 523
    :goto_16
    add-int/lit8 v3, v3, 0x1

    move v5, v3

    .line 525
    :goto_17
    and-int/lit16 v3, v2, 0xc0

    const/16 v9, 0x80

    if-ne v3, v9, :cond_2d

    .line 538
    :goto_18
    shl-int/lit8 v3, v8, 0x2

    and-int/lit8 v3, v3, 0x1c

    shr-int/lit8 v8, v7, 0x4

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v3, v8

    const/16 v8, 0x10

    .line 539
    if-gt v3, v8, :cond_2f

    .line 542
    :goto_19
    add-int/lit8 v3, v3, -0x1

    .line 543
    and-int/lit8 v7, v7, 0xf

    .line 544
    and-int/lit8 v6, v6, 0x3f

    .line 545
    and-int/lit8 v2, v2, 0x3f

    .line 546
    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0x3c0

    const v8, 0xd800

    or-int/2addr v3, v8

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v3, v7

    shr-int/lit8 v7, v6, 0x4

    or-int/2addr v7, v3

    .line 547
    shl-int/lit8 v3, v6, 0x6

    and-int/lit16 v3, v3, 0x3c0

    const v6, 0xdc00

    or-int/2addr v3, v6

    or-int v6, v3, v2

    .line 550
    add-int/lit8 v3, v4, 0x1

    int-to-char v2, v7

    int-to-char v2, v2

    aput-char v2, p1, v4

    .line 551
    add-int/lit8 v2, v5, -0x2

    if-le v2, p3, :cond_30

    .line 556
    iput v6, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 557
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_3

    .line 456
    :cond_20
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    move v7, v1

    move v3, v2

    .line 457
    goto :goto_11

    .line 461
    :cond_21
    if-gt v4, p2, :cond_22

    const/4 v3, 0x2

    const/4 v6, 0x4

    .line 466
    invoke-direct {p0, v3, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_10

    .line 462
    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    .line 463
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 464
    sub-int v0, v4, p2

    return v0

    .line 471
    :cond_23
    and-int/lit8 v1, v7, 0x30

    if-nez v1, :cond_1f

    and-int/lit8 v1, v8, 0x7

    if-eqz v1, :cond_1e

    goto/16 :goto_12

    .line 473
    :cond_24
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 474
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    .line 475
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 476
    sub-int v0, v4, p2

    return v0

    .line 482
    :cond_25
    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    move v6, v1

    .line 483
    goto/16 :goto_14

    .line 487
    :cond_26
    if-gt v4, p2, :cond_27

    const/4 v5, 0x3

    const/4 v6, 0x4

    .line 493
    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_13

    .line 488
    :cond_27
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 489
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x2

    .line 490
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 491
    sub-int v0, v4, p2

    return v0

    .line 498
    :cond_28
    if-gt v4, p2, :cond_29

    const/4 v1, 0x3

    const/4 v5, 0x4

    .line 505
    invoke-direct {p0, v1, v5, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_15

    .line 499
    :cond_29
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 500
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 501
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    .line 502
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 503
    sub-int v0, v4, p2

    return v0

    .line 509
    :cond_2a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    move v5, v3

    .line 510
    goto/16 :goto_17

    .line 514
    :cond_2b
    if-gt v4, p2, :cond_2c

    const/4 v5, 0x4

    const/4 v9, 0x4

    .line 521
    invoke-direct {p0, v5, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    goto/16 :goto_16

    .line 515
    :cond_2c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 516
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v2, v7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 517
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x3

    .line 518
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 519
    sub-int v0, v4, p2

    return v0

    .line 526
    :cond_2d
    if-gt v4, p2, :cond_2e

    const/4 v3, 0x4

    const/4 v9, 0x4

    .line 534
    invoke-direct {p0, v3, v9, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_18

    .line 527
    :cond_2e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v3, v8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 528
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x1

    int-to-byte v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 529
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x2

    int-to-byte v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 530
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x3

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x4

    .line 531
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 532
    sub-int v0, v4, p2

    return v0

    .line 540
    :cond_2f
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    goto/16 :goto_19

    .line 552
    :cond_30
    add-int/lit8 v4, v3, 0x1

    int-to-char v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    move v3, v4

    .line 553
    goto/16 :goto_3

    .line 564
    :cond_31
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    const/4 v1, 0x0

    int-to-byte v2, v8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    .line 565
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    .line 566
    sub-int v0, v4, p2

    return v0

    .line 575
    :cond_32
    return v2
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
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
    const/4 v0, 0x0

    .line 660
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v0, -0x1

    .line 661
    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    .line 662
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
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 592
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v0, v0

    new-array v5, v0, [C

    move-wide v0, p1

    .line 594
    :cond_0
    array-length v2, v5

    int-to-long v6, v2

    cmp-long v2, v6, v0

    if-ltz v2, :cond_1

    move v2, v3

    :goto_0
    if-nez v2, :cond_2

    array-length v2, v5

    .line 595
    :goto_1
    invoke-virtual {p0, v5, v4, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v2

    .line 596
    if-gtz v2, :cond_3

    .line 604
    :goto_2
    sub-long v0, p1, v0

    .line 605
    return-wide v0

    :cond_1
    move v2, v4

    .line 594
    goto :goto_0

    :cond_2
    long-to-int v2, v0

    goto :goto_1

    .line 597
    :cond_3
    int-to-long v6, v2

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    .line 593
    cmp-long v2, v0, v6

    if-lez v2, :cond_4

    move v2, v3

    :goto_3
    if-nez v2, :cond_0

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_3
.end method
