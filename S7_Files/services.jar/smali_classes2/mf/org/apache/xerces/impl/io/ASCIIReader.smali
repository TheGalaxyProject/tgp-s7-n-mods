.class public final Lmf/org/apache/xerces/impl/io/ASCIIReader;
.super Ljava/io/Reader;
.source "ASCIIReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 94
    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    .prologue
    const/16 v0, 0x800

    .line 80
    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 107
    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    .line 108
    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    .line 109
    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 110
    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    .line 111
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
    .line 247
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 248
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
    .line 219
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 220
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v0, 0x80

    .line 132
    if-ge v6, v0, :cond_0

    .line 137
    return v6

    .line 133
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 134
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidASCII"

    const/4 v5, 0x1

    .line 135
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 133
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public read([CII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 155
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length v0, v0

    if-gt p3, v0, :cond_0

    .line 158
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    invoke-virtual {v0, v1, v6, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v0, v6

    .line 159
    :goto_1
    if-ge v0, v1, :cond_2

    .line 160
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    aget-byte v7, v2, v0

    .line 161
    if-ltz v7, :cond_1

    .line 166
    add-int v2, p2, v0

    int-to-char v3, v7

    int-to-char v3, v3

    aput-char v3, p1, v2

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fBuffer:[B

    array-length p3, v0

    goto :goto_0

    .line 162
    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    .line 163
    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "InvalidASCII"

    const/4 v5, 0x1

    .line 164
    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 162
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 168
    :cond_2
    return v1
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
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
    .line 236
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 237
    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/ASCIIReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
