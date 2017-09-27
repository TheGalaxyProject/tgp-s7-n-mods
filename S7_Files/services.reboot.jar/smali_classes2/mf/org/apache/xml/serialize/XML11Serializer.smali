.class public Lmf/org/apache/xml/serialize/XML11Serializer;
.super Lmf/org/apache/xml/serialize/XMLSerializer;
.source "XML11Serializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fDOML1:Z

.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespaceCounter:I

.field protected fNamespaces:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>()V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 132
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    if-nez p2, :cond_0

    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    invoke-direct {p2, v0, v2, v1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 171
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 157
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 111
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    .line 113
    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    .line 123
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    .line 143
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5d

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 191
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_3

    .line 197
    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_4

    .line 201
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v1

    .line 202
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 204
    add-int v2, p2, p3

    move v0, p2

    .line 205
    :goto_1
    if-ge v0, v2, :cond_9

    .line 206
    aget-char v3, p1, v0

    .line 207
    if-eq v3, v6, :cond_5

    .line 213
    :cond_1
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 223
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-nez v4, :cond_8

    .line 228
    :cond_2
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "]]>&#x"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, ";<![CDATA["

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 205
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_3
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    .line 240
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_a

    .line 251
    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    .line 258
    :goto_3
    return-void

    .line 198
    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 207
    :cond_5
    add-int/lit8 v4, v0, 0x2

    if-ge v4, v2, :cond_1

    .line 208
    add-int/lit8 v4, v0, 0x1

    :try_start_1
    aget-char v4, p1, v4

    if-ne v4, v6, :cond_1

    add-int/lit8 v4, v0, 0x2

    aget-char v4, p1, v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    .line 209
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "]]]]><![CDATA[>"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 210
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 215
    :cond_6
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_7

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    :cond_7
    aget-char v4, p1, v0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_2

    .line 223
    :cond_8
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    .line 233
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_3

    .line 245
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v6

    .line 246
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 247
    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    .line 248
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected final printCDATAText(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 298
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 301
    :goto_0
    if-ge v0, v1, :cond_a

    .line 302
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 304
    if-eq v2, v7, :cond_2

    .line 348
    :cond_0
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 358
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-nez v3, :cond_9

    .line 364
    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "]]>&#x"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, ";<![CDATA["

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 301
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_2
    add-int/lit8 v3, v0, 0x2

    if-ge v3, v1, :cond_0

    .line 306
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    .line 307
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 308
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_4

    .line 343
    :cond_3
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]]]><![CDATA[>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 344
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 311
    :cond_4
    iget-short v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    :cond_5
    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "SplittingCDATA"

    .line 331
    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 335
    invoke-virtual {p0, v2, v6, v5, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 339
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_2

    .line 312
    :cond_6
    iget-short v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "EndingCDATA"

    .line 315
    invoke-static {v2, v3, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 322
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 319
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4, v5, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 324
    iget-object v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v2

    .line 325
    if-nez v2, :cond_3

    .line 326
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 350
    :cond_7
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_8

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is an invalid XML character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 351
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v6}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto/16 :goto_1

    .line 359
    :cond_9
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 360
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1

    .line 369
    :cond_a
    return-void
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    .line 265
    :goto_0
    if-ge v0, v2, :cond_9

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 267
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    .line 276
    if-ne v3, v4, :cond_3

    .line 277
    :cond_0
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    .line 265
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_2

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v3, v4, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_3
    const/16 v4, 0xd

    .line 276
    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    const/16 v4, 0x85

    if-eq v3, v4, :cond_0

    const/16 v4, 0x2028

    if-eq v3, v4, :cond_0

    const/16 v4, 0x3c

    .line 279
    if-eq v3, v4, :cond_5

    const/16 v4, 0x26

    .line 282
    if-eq v3, v4, :cond_6

    const/16 v4, 0x22

    .line 285
    if-eq v3, v4, :cond_7

    const/16 v4, 0x20

    .line 288
    if-ge v3, v4, :cond_8

    .line 292
    :cond_4
    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_1

    .line 280
    :cond_5
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_6
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_7
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 288
    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v5, v3

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 289
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 295
    :cond_9
    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 431
    if-nez p2, :cond_2

    .line 461
    :goto_0
    if-ge v0, v1, :cond_9

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 463
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 472
    if-nez p3, :cond_8

    .line 476
    :cond_0
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    .line 461
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    .line 436
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ge v0, v1, :cond_9

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 438
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 447
    if-nez p3, :cond_5

    .line 451
    :cond_3
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    goto :goto_2

    .line 440
    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is an invalid XML character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    .line 447
    :cond_5
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    .line 465
    :cond_6
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_7

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is an invalid XML character"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    .line 466
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_1

    .line 472
    :cond_8
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 480
    :cond_9
    return-void
.end method

.method protected printText([CIIZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 485
    if-nez p4, :cond_2

    .line 515
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_9

    .line 516
    add-int/lit8 v1, p2, 0x1

    aget-char v2, p1, p2

    .line 517
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 526
    if-nez p5, :cond_8

    .line 530
    :cond_0
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    move p3, v0

    move p2, v1

    goto :goto_0

    .line 495
    :cond_1
    add-int/lit8 p2, v1, 0x1

    aget-char v0, p1, v1

    invoke-virtual {p0, v2, v0, v4}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    .line 490
    :cond_2
    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_9

    .line 491
    add-int/lit8 v1, p2, 0x1

    aget-char v2, p1, p2

    .line 492
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    if-nez p5, :cond_5

    .line 505
    :cond_3
    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    move p3, v0

    move p2, v1

    goto :goto_1

    .line 494
    :cond_4
    add-int/lit8 p3, v0, -0x1

    if-gtz v0, :cond_1

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The character \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' is an invalid XML character"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move p2, v1

    .line 499
    goto :goto_1

    .line 501
    :cond_5
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 502
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move p3, v0

    move p2, v1

    .line 503
    goto :goto_1

    .line 519
    :cond_6
    add-int/lit8 p3, v0, -0x1

    if-gtz v0, :cond_7

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The character \'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' is an invalid XML character"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move p2, v1

    .line 524
    goto :goto_0

    .line 520
    :cond_7
    add-int/lit8 p2, v1, 0x1

    aget-char v0, p1, v1

    invoke-virtual {p0, v2, v0, v4}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto/16 :goto_0

    .line 526
    :cond_8
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move p3, v0

    move p2, v1

    .line 528
    goto/16 :goto_0

    .line 534
    :cond_9
    return-void
.end method

.method protected final printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0xd

    .line 374
    if-ne p1, v0, :cond_1

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    .line 394
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x85

    .line 374
    if-eq p1, v0, :cond_0

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    .line 377
    if-eq p1, v0, :cond_3

    const/16 v0, 0x26

    .line 380
    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e

    .line 383
    if-eq p1, v0, :cond_5

    .line 388
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-nez v0, :cond_6

    .line 392
    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&lt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&amp;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&gt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_6
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->reset()Z

    .line 538
    const/4 v0, 0x1

    return v0
.end method

.method protected final surrogates(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' is an invalid XML character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    int-to-char v0, p1

    int-to-char v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 404
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    if-nez p3, :cond_4

    .line 415
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0

    .line 400
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' is an invalid XML character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' is an invalid XML character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_1

    .line 410
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "]]>&#x"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, ";<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0
.end method
