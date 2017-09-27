.class public Lmf/org/apache/xml/serialize/IndentPrinter;
.super Lmf/org/apache/xml/serialize/Printer;
.source "IndentPrinter.java"


# instance fields
.field private _line:Ljava/lang/StringBuffer;

.field private _nextIndent:I

.field private _spaces:I

.field private _text:Ljava/lang/StringBuffer;

.field private _thisIndent:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 86
    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 87
    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 88
    return-void
.end method


# virtual methods
.method public breakLine()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->breakLine(Z)V

    .line 234
    return-void
.end method

.method public breakLine(Z)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 248
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 251
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 241
    :cond_2
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-gtz v0, :cond_1

    .line 245
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 255
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 256
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public enterDTD()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-eqz v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 107
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    .line 108
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    .line 109
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 313
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/IndentPrinter;->breakLine()V

    .line 315
    :goto_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_1
    :goto_1
    return-void

    .line 312
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 319
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 320
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1
.end method

.method public flushLine(Z)V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    :cond_2
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 293
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 299
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    .line 300
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_0

    .line 275
    :cond_3
    if-nez p1, :cond_2

    .line 277
    :try_start_1
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 278
    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v2

    if-gt v1, v2, :cond_5

    .line 282
    :cond_4
    :goto_1
    if-lez v0, :cond_2

    .line 283
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 284
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 278
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v1

    if-lez v1, :cond_4

    .line 279
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getNextIndent()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    return v0
.end method

.method public indent()V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 331
    return-void
.end method

.method public leaveDTD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 129
    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 126
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_docWriter:Ljava/io/Writer;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    .line 127
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_dtdWriter:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printSpace()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 220
    :goto_0
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    .line 221
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 211
    :cond_1
    :goto_1
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    if-lez v0, :cond_3

    .line 212
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 213
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    goto :goto_1

    .line 196
    :cond_2
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 197
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/IndentPrinter;->flushLine(Z)V

    .line 200
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_writer:Ljava/io/Writer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 204
    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    if-nez v1, :cond_1

    .line 205
    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_exception:Ljava/io/IOException;

    goto :goto_1

    .line 215
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public printText(C)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    return-void
.end method

.method public printText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    return-void
.end method

.method public printText(Ljava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    return-void
.end method

.method public printText([CII)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 163
    return-void
.end method

.method public setNextIndent(I)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 358
    return-void
.end method

.method public setThisIndent(I)V
    .locals 0

    .prologue
    .line 363
    iput p1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    .line 364
    return-void
.end method

.method public unindent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndent()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    .line 340
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    if-ltz v0, :cond_0

    .line 344
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_spaces:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_text:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 346
    :goto_1
    return-void

    .line 341
    :cond_0
    iput v2, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    goto :goto_0

    .line 345
    :cond_1
    iget v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_nextIndent:I

    iput v0, p0, Lmf/org/apache/xml/serialize/IndentPrinter;->_thisIndent:I

    goto :goto_1
.end method
