.class public Lmf/org/apache/html/dom/HTMLBuilder;
.super Ljava/lang/Object;
.source "HTMLBuilder.java"

# interfaces
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field protected _current:Lmf/org/apache/xerces/dom/ElementImpl;

.field protected _document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

.field private _done:Z

.field private _ignoreWhitespace:Z

.field protected _preRootNodes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_ignoreWhitespace:Z

    .line 72
    iput-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    .line 42
    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 177
    return-void

    .line 175
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM009 State error: character data found outside of root element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 186
    return-void

    .line 184
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM010 State error: character data found outside of root element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-nez v0, :cond_1

    .line 100
    iput-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    .line 102
    return-void

    .line 97
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM002 State error: document never started or missing document element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM003 State error: document ended before end of document element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 167
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM007 State error: endElement called with no current node."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HTM008 State error: mismatch in closing tag name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_2
    iput-object v2, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_0
.end method

.method public getHTMLDocument()Lmf/org/w3c/dom/html/HTMLDocument;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 192
    iget-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_ignoreWhitespace:Z

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_2

    .line 209
    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_4

    .line 212
    :cond_1
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 213
    :goto_0
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 206
    :goto_1
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    new-instance v1, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;

    invoke-direct {v1, v2, p1, p2}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    goto :goto_1

    .line 209
    :cond_4
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-boolean v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    .line 89
    iput-boolean v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_done:Z

    .line 90
    return-void

    .line 87
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM001 State error: startDocument fired twice on one builder."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 111
    if-eqz p1, :cond_1

    .line 116
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_6

    .line 140
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 141
    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 142
    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 146
    :goto_0
    if-nez p2, :cond_7

    :cond_0
    monitor-exit p0

    .line 151
    return-void

    .line 112
    :cond_1
    :try_start_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM004 Argument \'tagName\' is null."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 119
    :cond_2
    :try_start_2
    new-instance v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    .line 120
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 121
    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 122
    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_current:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_0

    .line 123
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM005 State error: Document.getDocumentElement returns null."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_4
    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_5

    .line 129
    iget-object v4, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_document:Lmf/org/apache/html/dom/HTMLDocumentImpl;

    iget-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Node;

    invoke-virtual {v4, v1, v0}, Lmf/org/apache/html/dom/HTMLDocumentImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v1, v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lmf/org/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    move-object v1, v0

    .line 133
    goto :goto_0

    .line 139
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "HTM006 State error: startElement called after end of document element."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    .line 148
    :goto_2
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 149
    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
