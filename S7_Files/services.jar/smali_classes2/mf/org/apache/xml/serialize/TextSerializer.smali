.class public Lmf/org/apache/xml/serialize/TextSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "TextSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "text"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 214
    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 215
    invoke-virtual {p0, p1, v2, v2}, Lmf/org/apache/xml/serialize/TextSerializer;->printText(Ljava/lang/String;ZZ)V

    .line 216
    return-void
.end method

.method public characters([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    .line 201
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/TextSerializer;->printText([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public comment([CII)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    :goto_0
    return-object v0

    .line 375
    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v1, :cond_1

    .line 380
    :goto_1
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_0

    .line 376
    :cond_1
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    goto :goto_1
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 103
    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/TextSerializer;->endElement(Ljava/lang/String;)V

    .line 104
    return-void

    :cond_0
    move-object p3, p2

    .line 103
    goto :goto_0
.end method

.method public endElementIO(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    .line 170
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 172
    iput-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    .line 173
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto :goto_0
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    return-object v0
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    return-void
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 259
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    iget-boolean v2, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    .line 281
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v3

    if-nez v3, :cond_2

    .line 292
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    :goto_1
    return-void

    .line 266
    :cond_1
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0, v5, v5, v1, v2}, Lmf/org/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    .line 285
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 286
    :goto_2
    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 288
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    .line 290
    :cond_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V

    goto :goto_1

    .line 294
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    .line 295
    iput-boolean v4, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    goto :goto_1
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 364
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 316
    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_0

    .line 325
    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_0

    .line 342
    :pswitch_3
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    .line 353
    :pswitch_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 354
    :goto_1
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    .line 356
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    if-nez p1, :cond_0

    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "text"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    .line 83
    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    .line 242
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->serializePreRoot()V

    .line 243
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {p0, p3, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    .line 96
    return-void

    :cond_0
    move-object p3, p2

    .line 95
    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-virtual {p0, v1, v2, p1, v0}, Lmf/org/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    .line 145
    return-void

    .line 125
    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
