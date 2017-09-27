.class public abstract Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.super Ljava/lang/Object;
.source "BaseMarkupSerializer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lmf/org/apache/xml/serialize/DOMSerializer;
.implements Lmf/org/apache/xml/serialize/Serializer;


# instance fields
.field protected _docTypePublicId:Ljava/lang/String;

.field protected _docTypeSystemId:Ljava/lang/String;

.field private _elementStateCount:I

.field private _elementStates:[Lmf/org/apache/xml/serialize/ElementState;

.field protected _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field protected _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field protected _indenting:Z

.field private _output:Ljava/io/OutputStream;

.field private _preRoot:Ljava/util/Vector;

.field protected _prefixes:Ljava/util/Hashtable;

.field private _prepared:Z

.field protected _printer:Lmf/org/apache/xml/serialize/Printer;

.field protected _started:Z

.field private _writer:Ljava/io/Writer;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected final fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

.field protected final fStrBuffer:Ljava/lang/StringBuffer;

.field protected features:S


# direct methods
.method protected constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    .line 133
    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/16 v0, 0xa

    .line 252
    new-array v0, v0, [Lmf/org/apache/xml/serialize/ElementState;

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    const/4 v0, 0x0

    .line 253
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    new-instance v2, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v2}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v2, v1, v0

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    .line 256
    return-void
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 271
    return-object p0
.end method

.method public asDOMSerializer()Lmf/org/apache/xml/serialize/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 279
    return-object p0
.end method

.method public asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 263
    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 864
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 865
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!ATTLIST "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 868
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 870
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 871
    if-nez p4, :cond_0

    .line 875
    :goto_0
    if-nez p5, :cond_1

    .line 880
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 881
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_2

    .line 886
    :goto_2
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 873
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 876
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " \""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p0, p5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 882
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected characters(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1306
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 1311
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_1

    .line 1315
    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    .line 1319
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    .line 1320
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 1321
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printCDATAText(Ljava/lang/String;)V

    .line 1322
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 1341
    :goto_1
    return-void

    .line 1311
    :cond_1
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    .line 1328
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_3

    .line 1338
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v3, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 1316
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1317
    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    goto :goto_0

    .line 1333
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v1

    .line 1334
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 1335
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v4, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 1336
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_1
.end method

.method public characters([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5d

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 490
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_4

    .line 496
    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_5

    .line 500
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v1

    .line 501
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 503
    add-int v2, p2, p3

    move v0, p2

    .line 504
    :goto_1
    if-ge v0, v2, :cond_b

    .line 505
    aget-char v3, p1, v0

    .line 506
    if-eq v3, v6, :cond_6

    .line 512
    :cond_1
    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x20

    .line 522
    if-ge v3, v4, :cond_9

    :cond_2
    const/16 v4, 0xa

    .line 523
    if-ne v3, v4, :cond_a

    .line 524
    :cond_3
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 504
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 490
    :cond_4
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    .line 539
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_c

    .line 549
    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    .line 555
    :goto_4
    return-void

    .line 497
    :cond_5
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 506
    :cond_6
    add-int/lit8 v4, v0, 0x2

    if-ge v4, v2, :cond_1

    .line 507
    add-int/lit8 v4, v0, 0x1

    :try_start_1
    aget-char v4, p1, v4

    if-ne v4, v6, :cond_1

    add-int/lit8 v4, v0, 0x2

    aget-char v4, p1, v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_1

    .line 508
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "]]]]><![CDATA[>"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 509
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 514
    :cond_7
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_8

    .line 518
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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    .line 515
    :cond_8
    aget-char v4, p1, v0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_3

    .line 522
    :cond_9
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x7f

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_a
    const/16 v4, 0xd

    .line 523
    if-eq v3, v4, :cond_3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    .line 528
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v5, "]]>&#x"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 529
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 530
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, ";<![CDATA["

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 533
    :cond_b
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_4

    .line 544
    :cond_c
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v6

    .line 545
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    .line 546
    iget-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    .line 547
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1850
    return-void
.end method

.method protected cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 336
    return-void
.end method

.method final clearDocumentState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1780
    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 1781
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 650
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const-string/jumbo v1, "-->"

    .line 656
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 657
    if-gez v1, :cond_2

    .line 660
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v2, "<!--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 672
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v1, :cond_5

    .line 674
    :cond_0
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 675
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5, v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 676
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    .line 677
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v1, :cond_6

    .line 681
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 682
    iput-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 683
    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 684
    return-void

    .line 651
    :cond_1
    return-void

    .line 658
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 665
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v1, :cond_4

    .line 667
    :goto_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 666
    :cond_4
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    goto :goto_3

    .line 672
    :cond_5
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_0

    .line 673
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    .line 678
    :cond_6
    iput-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public comment([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1263
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 1264
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    :goto_0
    return-object v0

    .line 1266
    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v1, :cond_2

    .line 1273
    :cond_1
    :goto_1
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v1, :cond_3

    .line 1280
    :goto_2
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 1284
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    goto :goto_0

    .line 1266
    :cond_2
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_1

    .line 1267
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "]]>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1268
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    goto :goto_1

    .line 1274
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1275
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    goto :goto_2
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 845
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 846
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!ELEMENT "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 849
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 851
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_0

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endCDATA()V
    .locals 2

    .prologue
    .line 700
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 701
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 702
    return-void
.end method

.method public endDTD()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 755
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    .line 757
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public endNonEscaping()V
    .locals 2

    .prologue
    .line 718
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 719
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 720
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 814
    return-void
.end method

.method public endPreserving()V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 737
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 738
    return-void
.end method

.method protected enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1715
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 1728
    :goto_0
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 1729
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v2

    .line 1730
    iput-object p1, v0, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    .line 1731
    iput-object p2, v0, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    .line 1732
    iput-object p3, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    .line 1733
    iput-boolean p4, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 1734
    const/4 v2, 0x1

    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 1735
    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 1736
    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 1737
    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 1738
    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 1739
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iput-object v1, v0, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 1741
    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    .line 1742
    return-object v0

    .line 1720
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    new-array v2, v0, [Lmf/org/apache/xml/serialize/ElementState;

    move v0, v1

    .line 1721
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1722
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 1721
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1723
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v0, v0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1724
    new-instance v3, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v3}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v3, v2, v0

    .line 1723
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1725
    :cond_2
    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    goto :goto_0
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 911
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    const/4 v0, 0x0

    .line 912
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected fatalError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1833
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_0

    .line 1838
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1834
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v2, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1835
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1840
    return-void
.end method

.method protected getElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 2

    .prologue
    .line 1699
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract getEntityRef(I)Ljava/lang/String;
.end method

.method protected getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1795
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    .line 1800
    :cond_0
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-eqz v0, :cond_3

    .line 1803
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    move v1, v0

    :goto_0
    if-lez v1, :cond_5

    .line 1804
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v0, v0, v1

    iget-object v0, v0, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_4

    .line 1803
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1796
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1797
    if-eqz v0, :cond_0

    .line 1798
    return-object v0

    .line 1801
    :cond_3
    return-object v2

    .line 1805
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v0, v0, v1

    iget-object v0, v0, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1806
    if-eqz v0, :cond_1

    .line 1807
    return-object v0

    .line 1810
    :cond_5
    return-object v2
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 564
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    .line 569
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_1

    .line 577
    :cond_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setThisIndent(I)V

    .line 571
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_0

    .line 572
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    aget-char v2, p1, p2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    add-int/lit8 p2, p2, 0x1

    move p3, v0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 893
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 894
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " \""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "\">"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 899
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected isDocumentState()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1775
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected leaveElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1755
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-gtz v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "Internal"

    .line 1762
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1763
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1757
    :cond_0
    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    .line 1759
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 1760
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 1822
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    .line 1823
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    .line 1824
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    .line 1825
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    int-to-short v2, p2

    iput-short v2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    .line 1826
    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;)V

    iput-object v0, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    .line 1827
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 955
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 956
    if-nez p2, :cond_1

    .line 966
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!NOTATION "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " SYSTEM "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 971
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 972
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_2

    .line 977
    :goto_1
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!NOTATION "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " PUBLIC "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 960
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 961
    if-eqz p3, :cond_0

    .line 962
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 963
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 973
    :cond_2
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 341
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    if-nez v0, :cond_1

    .line 344
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 353
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    .line 355
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    .line 359
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 363
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    .line 364
    new-instance v0, Lmf/org/apache/xml/serialize/Printer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    .line 369
    :goto_1
    iput v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    .line 370
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v0, v0, v3

    .line 371
    iput-object v4, v0, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    .line 372
    iput-object v4, v0, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    .line 373
    iput-object v4, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 375
    iput-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 376
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 377
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    .line 378
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 379
    iput-object v4, v0, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    .line 381
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    .line 383
    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    .line 384
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    .line 385
    return-void

    .line 342
    :cond_1
    return-void

    .line 344
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "NoWriterSupplied"

    .line 345
    invoke-static {v0, v1, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    goto :goto_0

    .line 360
    :cond_4
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    .line 361
    new-instance v0, Lmf/org/apache/xml/serialize/IndentPrinter;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/IndentPrinter;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    goto :goto_1
.end method

.method protected printCDATAText(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x52

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1402
    :goto_0
    if-ge v0, v1, :cond_c

    .line 1403
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1404
    if-eq v2, v9, :cond_3

    .line 1447
    :cond_0
    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x20

    .line 1457
    if-ge v2, v3, :cond_a

    :cond_1
    const/16 v3, 0xa

    .line 1458
    if-ne v2, v3, :cond_b

    .line 1459
    :cond_2
    :goto_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1402
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1405
    :cond_3
    add-int/lit8 v3, v0, 0x2

    if-ge v3, v1, :cond_0

    .line 1406
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_0

    .line 1407
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_0

    .line 1408
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_5

    .line 1442
    :cond_4
    :goto_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, "]]]]><![CDATA[>"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1443
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 1411
    :cond_5
    iget-short v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_6

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "SplittingCDATA"

    .line 1430
    invoke-static {v2, v3, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1437
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1434
    invoke-virtual {p0, v2, v7, v6, v3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1438
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "EndingCDATA"

    .line 1412
    invoke-static {v2, v3, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1416
    iget-short v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_7

    const-string/jumbo v3, "cdata-section-not-splitted"

    .line 1423
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v5, 0x2

    invoke-virtual {p0, v2, v5, v3, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1424
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1425
    new-instance v0, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {v0, v8, v2}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v0, "wf-invalid-character"

    .line 1418
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    .line 1419
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    .line 1420
    new-instance v0, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {v0, v8, v2}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 1449
    :cond_8
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_9

    .line 1453
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

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1450
    :cond_9
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v2, v3, v7}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto/16 :goto_2

    .line 1457
    :cond_a
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0xd

    .line 1458
    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    .line 1464
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v4, "]]>&#x"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1465
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1466
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v3, ";<![CDATA["

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1469
    :cond_c
    return-void
.end method

.method protected printDoctypeURL(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x22

    .line 1611
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    const/4 v0, 0x0

    .line 1612
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1613
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1614
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1615
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1612
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1613
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_0

    .line 1617
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 1619
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1620
    return-void
.end method

.method protected printEscaped(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 1631
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getEntityRef(I)Ljava/lang/String;

    move-result-object v0

    .line 1632
    if-nez v0, :cond_2

    const/16 v0, 0x20

    .line 1636
    if-ge p1, v0, :cond_3

    :cond_0
    const/16 v0, 0xa

    .line 1637
    if-ne p1, v0, :cond_4

    .line 1640
    :cond_1
    :goto_0
    if-lt p1, v3, :cond_5

    .line 1643
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int v1, p1, v3

    shr-int/lit8 v1, v1, 0xa

    const v2, 0xd800

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1644
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int v1, p1, v3

    and-int/lit16 v1, v1, 0x3ff

    const v2, 0xdc00

    add-int/2addr v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1649
    :goto_1
    return-void

    .line 1633
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1634
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    .line 1636
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    .line 1637
    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    .line 1647
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_1

    .line 1641
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0xfc00

    const v5, 0xdc00

    const v4, 0xd800

    const/4 v1, 0x0

    .line 1673
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1674
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1675
    and-int v2, v0, v6

    if-eq v2, v4, :cond_1

    .line 1682
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    .line 1673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1675
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1676
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1677
    and-int v3, v2, v6

    if-ne v3, v5, :cond_0

    .line 1678
    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const/high16 v3, 0x10000

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    sub-int/2addr v0, v5

    .line 1679
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1684
    :cond_2
    return-void
.end method

.method final printHex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1655
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1659
    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    const/4 v0, 0x0

    .line 1565
    if-nez p2, :cond_3

    .line 1583
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1584
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    .line 1585
    if-ne v1, v2, :cond_6

    .line 1586
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    .line 1583
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1571
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1572
    if-ne v1, v3, :cond_5

    .line 1573
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 1570
    :goto_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1596
    :cond_4
    return-void

    .line 1572
    :cond_5
    if-eq v1, v4, :cond_2

    if-nez p3, :cond_2

    .line 1575
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_2

    :cond_6
    const/16 v2, 0xc

    .line 1585
    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    .line 1588
    if-nez p3, :cond_7

    .line 1592
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_1

    .line 1589
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1
.end method

.method protected printText([CIIZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0xa

    .line 1521
    if-nez p4, :cond_3

    .line 1542
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_4

    .line 1543
    aget-char v1, p1, p2

    .line 1544
    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x20

    .line 1545
    if-ne v1, v2, :cond_6

    .line 1546
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    move p3, v0

    .line 1547
    goto :goto_0

    .line 1527
    :cond_1
    aget-char v1, p1, p2

    .line 1528
    add-int/lit8 p2, p2, 0x1

    .line 1529
    if-ne v1, v3, :cond_5

    .line 1530
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move p3, v0

    .line 1526
    :cond_3
    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-gtz p3, :cond_1

    .line 1556
    :cond_4
    return-void

    .line 1529
    :cond_5
    if-eq v1, v4, :cond_2

    if-nez p5, :cond_2

    .line 1533
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    move p3, v0

    goto :goto_1

    :cond_6
    const/16 v2, 0xc

    .line 1545
    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    if-eq v1, v4, :cond_0

    .line 1548
    if-nez p5, :cond_7

    .line 1552
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    move p3, v0

    goto :goto_0

    .line 1549
    :cond_7
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move p3, v0

    .line 1550
    goto :goto_0
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 584
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 596
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const-string/jumbo v1, "?>"

    .line 600
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 601
    if-gez v1, :cond_0

    .line 604
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v2, "<?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    :goto_0
    if-nez p2, :cond_1

    .line 613
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v2, "?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_3

    .line 622
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    .line 623
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5, v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 624
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    .line 625
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v1, :cond_5

    .line 629
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 630
    return-void

    .line 602
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 606
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "?>"

    .line 607
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 608
    if-gez v1, :cond_2

    .line 611
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 609
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 618
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v0, :cond_4

    .line 620
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    .line 619
    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    goto :goto_3

    .line 626
    :cond_5
    iput-boolean v5, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public reset()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-gt v0, v2, :cond_0

    .line 328
    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    .line 329
    iput-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 330
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 331
    return v2

    :cond_0
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "ResetInMiddle"

    .line 324
    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public serialize(Lmf/org/w3c/dom/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 451
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 452
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 453
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    .line 454
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    .line 455
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 456
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 458
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 429
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 430
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 431
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    .line 432
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 433
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public serialize(Lmf/org/w3c/dom/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 407
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    .line 408
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 409
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    .line 410
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    .line 411
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected abstract serializeElement(Lmf/org/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 998
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 1003
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1245
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1007
    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1008
    if-eqz v0, :cond_0

    .line 1009
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v1, :cond_3

    .line 1022
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v1, :cond_4

    .line 1024
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 1011
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    .line 1012
    packed-switch v1, :pswitch_data_1

    .line 1018
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_2

    .line 1023
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1031
    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1032
    iget-short v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_5

    .line 1058
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_5
    if-eqz v0, :cond_0

    .line 1034
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v1, :cond_7

    .line 1052
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->startCDATA()V

    .line 1053
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    goto :goto_0

    .line 1035
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_6

    .line 1038
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    .line 1039
    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 1044
    :pswitch_3
    return-void

    .line 1065
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1067
    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v1, :cond_9

    .line 1083
    :cond_8
    :goto_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1070
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8

    .line 1071
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    .line 1072
    packed-switch v1, :pswitch_data_3

    goto :goto_2

    .line 1076
    :pswitch_5
    return-void

    .line 1092
    :pswitch_6
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    .line 1093
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    .line 1095
    iget-short v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 1097
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v0, :cond_d

    .line 1118
    :cond_b
    :goto_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    .line 1120
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1096
    :cond_c
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1125
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1126
    :goto_4
    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1128
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    .line 1098
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 1099
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 1100
    packed-switch v0, :pswitch_data_4

    goto :goto_3

    .line 1102
    :pswitch_7
    return-void

    .line 1105
    :pswitch_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1106
    :goto_5
    if-eqz v0, :cond_e

    .line 1107
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1108
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_5

    .line 1110
    :cond_e
    return-void

    .line 1137
    :pswitch_9
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v0, :cond_10

    .line 1149
    :cond_f
    :goto_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1138
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_f

    .line 1139
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 1140
    packed-switch v0, :pswitch_data_5

    goto :goto_6

    .line 1143
    :pswitch_a
    return-void

    .line 1154
    :pswitch_b
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-nez v0, :cond_12

    .line 1174
    :cond_11
    :goto_7
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 1155
    :cond_12
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 1156
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    .line 1157
    packed-switch v0, :pswitch_data_6

    goto :goto_7

    .line 1159
    :pswitch_c
    return-void

    .line 1162
    :pswitch_d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1163
    :goto_8
    if-eqz v0, :cond_13

    .line 1164
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1165
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_8

    .line 1167
    :cond_13
    return-void

    :pswitch_e
    move-object v0, p1

    .line 1182
    check-cast v0, Lmf/org/w3c/dom/Document;

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    .line 1183
    if-nez v3, :cond_14

    .line 1234
    :goto_9
    :pswitch_f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1235
    :goto_a
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 1237
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_a

    .line 1188
    :cond_14
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 1189
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 1190
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    .line 1191
    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    .line 1192
    if-nez v0, :cond_16

    .line 1194
    :cond_15
    :goto_b
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 1195
    :catch_0
    move-exception v0

    .line 1198
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :try_start_1
    const-string/jumbo v0, "getPublicId"

    const/4 v2, 0x0

    .line 1203
    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1204
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_17

    move-object v2, v1

    :goto_c
    :try_start_2
    const-string/jumbo v0, "getSystemId"

    const/4 v5, 0x0

    .line 1212
    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1213
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-nez v4, :cond_18

    move-object v0, v1

    .line 1220
    :goto_d
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 1221
    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 1222
    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    .line 1223
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V

    goto :goto_9

    .line 1192
    :cond_16
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 1193
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    .line 1205
    :try_start_4
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v0

    .line 1207
    goto :goto_c

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_c

    :cond_18
    const/4 v4, 0x0

    .line 1214
    :try_start_5
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_d

    .line 1216
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_d

    .line 1003
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_e
        :pswitch_0
        :pswitch_f
    .end packed-switch

    .line 1012
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1039
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 1072
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 1100
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1140
    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_a
        :pswitch_a
    .end packed-switch

    .line 1157
    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method protected serializePreRoot()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1383
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v1, :cond_0

    .line 1391
    :goto_0
    return-void

    :cond_0
    move v1, v0

    .line 1384
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1385
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 1386
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_1

    .line 1384
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1387
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_2

    .line 1389
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 779
    return-void
.end method

.method public setOutputByteStream(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 285
    if-eqz p1, :cond_0

    .line 290
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    .line 291
    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    .line 292
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 293
    return-void

    :cond_0
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "ArgumentIsNull"

    const/4 v2, 0x1

    .line 287
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "output"

    aput-object v4, v2, v3

    .line 286
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutputCharStream(Ljava/io/Writer;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 298
    if-eqz p1, :cond_0

    .line 303
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    .line 304
    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    .line 305
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 306
    return-void

    :cond_0
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "ArgumentIsNull"

    const/4 v2, 0x1

    .line 300
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "writer"

    aput-object v4, v2, v3

    .line 299
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 5

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 316
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    .line 317
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    .line 318
    return-void

    :cond_0
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v1, "ArgumentIsNull"

    const/4 v2, 0x1

    .line 313
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "format"

    aput-object v4, v2, v3

    .line 312
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 314
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 791
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    .line 792
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    .line 793
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 794
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startCDATA()V
    .locals 2

    .prologue
    .line 691
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 692
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 693
    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 826
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 827
    iput-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    .line 828
    iput-object p3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 470
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 767
    return-void
.end method

.method public startNonEscaping()V
    .locals 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 710
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    .line 711
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 807
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    return-void

    .line 806
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    goto :goto_0

    :cond_1
    const-string/jumbo p1, ""

    goto :goto_1
.end method

.method public startPreserving()V
    .locals 2

    .prologue
    .line 727
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 728
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 729
    return-void
.end method

.method protected surrogates(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
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

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    .line 1499
    :goto_0
    return-void

    .line 1474
    :cond_0
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1479
    int-to-char v0, p1

    int-to-char v1, p2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    .line 1480
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1485
    if-nez p3, :cond_4

    .line 1491
    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_0

    .line 1476
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

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
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

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    .line 1485
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_1

    .line 1486
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v2, "]]>&#x"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1487
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, ";<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 924
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    .line 925
    if-eqz p2, :cond_0

    .line 931
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " PUBLIC "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 936
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    .line 938
    :goto_0
    if-nez p4, :cond_1

    .line 942
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    .line 943
    iget-boolean v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-nez v0, :cond_2

    .line 948
    :goto_2
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, "<!ENTITY "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " SYSTEM "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 945
    :catch_0
    move-exception v0

    .line 946
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 939
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v1, " NDATA "

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    .line 944
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
