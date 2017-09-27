.class public Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
.super Ljava/lang/Object;
.source "XIncludeTextReader.java"


# instance fields
.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fReader:Ljava/io/Reader;

.field private fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field private fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 85
    iput-object p2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 86
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 87
    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [C

    invoke-direct {v0, v1, v2, v2}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 88
    return-void
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Lmf/org/apache/xerces/impl/io/ASCIIReader;

    .line 286
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    .line 287
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 285
    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lmf/org/apache/xerces/impl/io/Latin1Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 6

    .prologue
    .line 276
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF16Reader;

    .line 277
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    shl-int/lit8 v2, v1, 0x1

    .line 279
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    .line 280
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v1, p1

    move v3, p2

    .line 276
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    .prologue
    .line 268
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;

    .line 269
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    .line 270
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    .line 271
    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 268
    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 523
    iput-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    goto :goto_0
.end method

.method protected consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xfe

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 329
    new-array v0, v3, [B

    .line 331
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    const-string/jumbo v1, "UTF-8"

    .line 332
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "UTF-16"

    .line 347
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 366
    :goto_0
    return-object p2

    .line 333
    :cond_0
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 334
    if-eq v1, v3, :cond_1

    .line 344
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 335
    :cond_1
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 336
    aget-byte v2, v0, v5

    and-int/lit16 v2, v2, 0xff

    .line 337
    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xef

    .line 338
    if-eq v1, v3, :cond_3

    .line 340
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_3
    const/16 v1, 0xbb

    .line 338
    if-ne v2, v1, :cond_2

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 348
    :cond_4
    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 349
    if-eq v1, v4, :cond_6

    .line 360
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 350
    :cond_6
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    .line 351
    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    .line 352
    if-eq v1, v6, :cond_8

    :cond_7
    const/16 v2, 0xff

    .line 355
    if-ne v1, v2, :cond_5

    if-ne v0, v6, :cond_5

    const-string/jumbo v0, "UTF-16LE"

    .line 356
    return-object v0

    :cond_8
    const/16 v2, 0xff

    .line 352
    if-ne v0, v2, :cond_7

    const-string/jumbo v0, "UTF-16BE"

    .line 353
    return-object v0
.end method

.method protected getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 303
    new-array v1, v3, [B

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 310
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 311
    if-eq v2, v3, :cond_0

    .line 315
    :goto_0
    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getEncodingName([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0xfe

    const/16 v5, 0x3f

    const/16 v4, 0x3c

    const/4 v0, 0x0

    .line 383
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    .line 384
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 385
    if-eq v0, v2, :cond_a

    .line 389
    :cond_0
    if-eq v0, v3, :cond_b

    :cond_1
    const/4 v2, 0x2

    .line 395
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    .line 396
    if-eq v0, v3, :cond_c

    :cond_2
    const/4 v3, 0x3

    .line 401
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 402
    if-eqz v0, :cond_d

    .line 406
    :cond_3
    if-eq v0, v4, :cond_e

    .line 410
    :cond_4
    if-eqz v0, :cond_f

    .line 414
    :cond_5
    if-eqz v0, :cond_10

    .line 418
    :cond_6
    if-eqz v0, :cond_11

    .line 423
    :cond_7
    if-eq v0, v4, :cond_12

    :cond_8
    const/16 v4, 0x4c

    .line 428
    if-eq v0, v4, :cond_13

    :cond_9
    const/4 v0, 0x0

    .line 435
    return-object v0

    .line 385
    :cond_a
    if-ne v1, v3, :cond_0

    const-string/jumbo v0, "UTF-16BE"

    .line 387
    return-object v0

    .line 389
    :cond_b
    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "UTF-16LE"

    .line 391
    return-object v0

    :cond_c
    const/16 v3, 0xbb

    .line 396
    if-ne v1, v3, :cond_2

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    const-string/jumbo v0, "UTF-8"

    .line 397
    return-object v0

    .line 402
    :cond_d
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v4, :cond_3

    const-string/jumbo v0, "ISO-10646-UCS-4"

    .line 404
    return-object v0

    .line 406
    :cond_e
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    const-string/jumbo v0, "ISO-10646-UCS-4"

    .line 408
    return-object v0

    .line 410
    :cond_f
    if-nez v1, :cond_5

    if-ne v2, v4, :cond_5

    if-nez v3, :cond_5

    const-string/jumbo v0, "ISO-10646-UCS-4"

    .line 412
    return-object v0

    .line 414
    :cond_10
    if-ne v1, v4, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    const-string/jumbo v0, "ISO-10646-UCS-4"

    .line 416
    return-object v0

    .line 418
    :cond_11
    if-ne v1, v4, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v5, :cond_7

    const-string/jumbo v0, "UTF-16BE"

    .line 421
    return-object v0

    .line 423
    :cond_12
    if-nez v1, :cond_8

    if-ne v2, v5, :cond_8

    if-nez v3, :cond_8

    const-string/jumbo v0, "UTF-16LE"

    .line 426
    return-object v0

    :cond_13
    const/16 v0, 0x6f

    .line 428
    if-ne v1, v0, :cond_9

    const/16 v0, 0xa7

    if-ne v2, v0, :cond_9

    const/16 v0, 0x94

    if-ne v3, v0, :cond_9

    const-string/jumbo v0, "CP037"

    .line 431
    return-object v0
.end method

.method protected getReader(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x22

    const/4 v5, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 107
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    if-nez v0, :cond_4

    .line 113
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_5

    move-object v4, v0

    .line 117
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_6

    .line 125
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 131
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_7

    .line 150
    :cond_0
    :goto_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 153
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 156
    if-nez v3, :cond_9

    move v0, v5

    .line 160
    :goto_2
    if-ne v0, v5, :cond_a

    .line 185
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v6

    :cond_1
    :goto_3
    const-string/jumbo v3, "text/xml"

    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "application/xml"

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v0, "+xml"

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    move-object v0, v6

    .line 218
    :cond_2
    :goto_4
    if-nez v0, :cond_11

    move-object v0, v2

    .line 224
    :cond_3
    :goto_5
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "UTF-16BE"

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "UTF-16LE"

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 243
    invoke-static {v1}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_15

    const-string/jumbo v1, "ASCII"

    .line 256
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "ISO8859_1"

    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 262
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    .line 108
    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "UTF-8"

    move-object v4, v0

    .line 115
    goto/16 :goto_0

    .line 118
    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 120
    instance-of v1, v0, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_3

    .line 121
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    .line 123
    goto :goto_5

    .line 131
    :cond_7
    instance-of v0, p1, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 132
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 133
    check-cast p1, Lmf/org/apache/xerces/util/HTTPInputSource;

    .line 136
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v7

    .line 137
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 138
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 143
    :cond_8
    invoke-virtual {p1}, Lmf/org/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v2

    .line 144
    if-nez v2, :cond_0

    .line 145
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto/16 :goto_1

    :cond_9
    const/16 v0, 0x3b

    .line 156
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto/16 :goto_2

    .line 162
    :cond_a
    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 166
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "charset="

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object v0, v6

    .line 183
    goto/16 :goto_3

    :cond_b
    const/16 v3, 0x8

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v10, :cond_d

    .line 173
    :cond_c
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_1

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_1

    .line 177
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 172
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_c

    goto :goto_7

    .line 197
    :cond_e
    if-nez v0, :cond_2

    const-string/jumbo v0, "US-ASCII"

    goto/16 :goto_4

    .line 206
    :cond_f
    if-nez v0, :cond_2

    .line 211
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 215
    :cond_10
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_11
    move-object v4, v0

    move-object v0, v2

    .line 219
    goto/16 :goto_5

    .line 233
    :cond_12
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 236
    :cond_13
    invoke-direct {p0, v0, v9}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 239
    :cond_14
    invoke-direct {p0, v0, v8}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 250
    :cond_15
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v0

    .line 251
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 252
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "EncodingDeclInvalid"

    .line 254
    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v8

    .line 252
    invoke-interface {v0, v2, v4, v5}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    :cond_16
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    .line 260
    :cond_17
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method protected isValid(I)Z
    .locals 1

    .prologue
    .line 534
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 447
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getReader(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    .line 448
    iput-object v11, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 449
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 450
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-boolean v8, v1, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    :goto_0
    const/4 v1, -0x1

    .line 451
    if-eq v0, v1, :cond_9

    move v1, v0

    move v0, v4

    .line 452
    :goto_1
    if-ge v0, v1, :cond_6

    .line 453
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v5, v2, v0

    .line 454
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 455
    :cond_0
    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 486
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "InvalidCharInContent"

    .line 488
    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 486
    invoke-virtual {v2, v3, v6, v7, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_2

    .line 458
    :cond_1
    add-int/lit8 v3, v0, 0x1

    if-lt v3, v1, :cond_2

    .line 463
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v2, -0x1

    .line 464
    if-ne v0, v2, :cond_3

    .line 468
    :goto_3
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 479
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "InvalidCharInContent"

    .line 481
    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    .line 479
    invoke-virtual {v2, v5, v6, v7, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move v0, v3

    .line 484
    goto :goto_2

    .line 459
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v0, v3

    goto :goto_3

    .line 465
    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v2, v1, 0x1

    int-to-char v7, v0

    int-to-char v7, v7

    aput-char v7, v6, v1

    move v1, v2

    goto :goto_3

    .line 470
    :cond_4
    int-to-char v0, v0

    invoke-static {v5, v0}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 471
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v3

    goto :goto_2

    .line 472
    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "InvalidCharInContent"

    .line 474
    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    .line 472
    invoke-virtual {v2, v5, v6, v7, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move v0, v3

    .line 477
    goto :goto_2

    .line 493
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-nez v0, :cond_8

    .line 500
    :cond_7
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    goto/16 :goto_0

    .line 493
    :cond_8
    if-lez v1, :cond_7

    .line 494
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput v4, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    .line 495
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    .line 496
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    .line 497
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    .line 498
    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    invoke-virtual {v2, v11, v8}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    .line 496
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_4

    .line 503
    :cond_9
    return-void
.end method

.method protected setBufferSize(I)V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    new-array v1, v1, [C

    iput-object v1, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    goto :goto_0
.end method

.method public setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    .line 99
    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    .line 512
    return-void
.end method
