.class public Lmf/org/apache/xml/serialize/Printer;
.super Ljava/lang/Object;
.source "Printer.java"


# static fields
.field private static final BufferSize:I = 0x1000


# instance fields
.field private final _buffer:[C

.field protected _docWriter:Ljava/io/Writer;

.field protected _dtdWriter:Ljava/io/StringWriter;

.field protected _exception:Ljava/io/IOException;

.field protected final _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field private _pos:I

.field protected _writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 97
    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    .line 103
    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 108
    iput-object p1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    .line 109
    iput-object p2, p0, Lmf/org/apache/xml/serialize/Printer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    .line 110
    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    .line 111
    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    .line 112
    iput-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    .line 113
    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 114
    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    :try_start_0
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 282
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0xa

    aput-char v2, v0, v1

    .line 283
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 291
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 287
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 289
    :goto_1
    throw v0

    .line 288
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public breakLine(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    .line 298
    return-void
.end method

.method public enterDTD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    .line 139
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    .line 140
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    .line 141
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    goto :goto_0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 325
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 326
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    iput v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 335
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 330
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 332
    :goto_0
    throw v0

    .line 331
    :cond_0
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public flushLine(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 306
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_0
    :goto_0
    iput v4, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 314
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 310
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 311
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_0
.end method

.method public getException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    return-object v0
.end method

.method public getNextIndent()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 352
    return v0
.end method

.method public indent()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 161
    return-object v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/Printer;->flushLine(Z)V

    .line 158
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    .line 159
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printSpace()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 262
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 263
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 271
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 267
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 269
    :goto_1
    throw v0

    .line 268
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public printText(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    :try_start_0
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    .line 242
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    .line 243
    iget v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 251
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write([C)V

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 247
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 249
    :goto_1
    throw v0

    .line 248
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public printText(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 170
    :goto_0
    if-ge v0, v1, :cond_2

    .line 171
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_0

    .line 175
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 176
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    const/4 v2, 0x0

    .line 173
    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 181
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 183
    :goto_2
    throw v0

    .line 182
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_2

    .line 185
    :cond_2
    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 192
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 193
    :goto_0
    if-ge v0, v1, :cond_2

    .line 194
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v3, 0x1000

    if-eq v2, v3, :cond_0

    .line 198
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v3, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 199
    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    const/4 v2, 0x0

    .line 196
    iput v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 204
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 206
    :goto_2
    throw v0

    .line 205
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_2

    .line 208
    :cond_2
    return-void
.end method

.method public printText([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_2

    .line 216
    :try_start_0
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_0

    .line 220
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    iget v2, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    aget-char v3, p1, p2

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 221
    add-int/lit8 p2, p2, 0x1

    .line 222
    iget v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I

    move p3, v0

    goto :goto_0

    .line 217
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/Printer;->_buffer:[C

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write([C)V

    const/4 v1, 0x0

    .line 218
    iput v1, p0, Lmf/org/apache/xml/serialize/Printer;->_pos:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 224
    :catch_0
    move-exception v0

    .line 227
    iget-object v1, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 229
    :goto_2
    throw v0

    .line 228
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xml/serialize/Printer;->_exception:Ljava/io/IOException;

    goto :goto_2

    .line 231
    :cond_2
    return-void
.end method

.method public setNextIndent(I)V
    .locals 0

    .prologue
    .line 358
    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public unindent()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method
