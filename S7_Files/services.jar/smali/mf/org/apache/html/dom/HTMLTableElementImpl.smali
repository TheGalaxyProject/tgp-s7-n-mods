.class public Lmf/org/apache/html/dom/HTMLTableElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableElement;


# static fields
.field private static final serialVersionUID:J = -0x195056a14d41939cL


# instance fields
.field private _bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

.field private _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 399
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;

    .line 386
    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 387
    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 388
    return-object v0
.end method

.method public declared-synchronized createCaption()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 3

    .prologue
    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getCaption()Lmf/org/w3c/dom/html/HTMLTableCaptionElement;

    move-result-object v0

    .line 72
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableCaptionElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v2, "CAPTION"

    invoke-direct {v1, v0, v2}, Lmf/org/apache/html/dom/HTMLTableCaptionElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 76
    return-object v1

    :cond_0
    monitor-exit p0

    .line 73
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTFoot()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 3

    .prologue
    monitor-enter p0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getTFoot()Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v2, "TFOOT"

    invoke-direct {v1, v0, v2}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 172
    return-object v1

    :cond_0
    monitor-exit p0

    .line 169
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTHead()Lmf/org/w3c/dom/html/HTMLElement;
    .locals 3

    .prologue
    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getTHead()Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0

    .line 120
    if-nez v0, :cond_0

    .line 122
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v2, "THEAD"

    invoke-direct {v1, v0, v2}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 124
    return-object v1

    :cond_0
    monitor-exit p0

    .line 121
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteCaption()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getCaption()Lmf/org/w3c/dom/html/HTMLTableCaptionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteRow(I)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 358
    :goto_0
    if-eqz v2, :cond_4

    .line 360
    instance-of v1, v2, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-nez v1, :cond_1

    .line 370
    instance-of v1, v2, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    if-nez v1, :cond_3

    .line 376
    :cond_0
    :goto_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    .line 362
    :cond_1
    if-eqz p1, :cond_2

    .line 367
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 364
    :cond_2
    invoke-virtual {p0, v2}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 365
    return-void

    .line 372
    :cond_3
    :try_start_1
    move-object v0, v2

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    move-object v1, v0

    invoke-virtual {v1, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->deleteRowX(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p1

    .line 373
    if-gez p1, :cond_0

    monitor-exit p0

    .line 374
    return-void

    :cond_4
    monitor-exit p0

    .line 378
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deleteTFoot()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getTFoot()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 181
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 183
    return-void

    .line 182
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTHead()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getTHead()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    .line 135
    return-void

    .line 134
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 203
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "bgcolor"

    .line 215
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "border"

    .line 227
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCaption()Lmf/org/w3c/dom/html/HTMLTableCaptionElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 48
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableCaptionElement;

    if-nez v1, :cond_1

    .line 51
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "CAPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    check-cast v0, Lmf/org/w3c/dom/html/HTMLTableCaptionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    .line 53
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCellPadding()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "cellpadding"

    .line 239
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellSpacing()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "cellspacing"

    .line 251
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrame()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "frame"

    .line 263
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    goto :goto_0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "rules"

    .line 275
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "summary"

    .line 287
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTBodies()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLTableElementImpl;->_bodies:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    goto :goto_0
.end method

.method public declared-synchronized getTFoot()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 142
    :goto_0
    if-eqz v0, :cond_2

    .line 144
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v1, :cond_1

    .line 147
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TFOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    .line 149
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTHead()Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_2

    .line 96
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v1, :cond_1

    .line 99
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "THEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lmf/org/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    .line 101
    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 299
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertRow(I)Lmf/org/w3c/dom/html/HTMLElement;
    .locals 3

    .prologue
    .line 313
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v2, "TR"

    invoke-direct {v1, v0, v2}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V

    .line 316
    return-object v1
.end method

.method insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move v2, p1

    .line 326
    :goto_0
    if-eqz v1, :cond_4

    .line 328
    instance-of v3, v1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-nez v3, :cond_1

    .line 337
    instance-of v3, v1, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    if-nez v3, :cond_2

    .line 344
    :cond_0
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 330
    :cond_1
    if-nez v2, :cond_0

    .line 332
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 333
    return-void

    :cond_2
    move-object v0, v1

    .line 340
    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    invoke-virtual {v0, v2, p2}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    move-result v0

    .line 341
    if-ltz v0, :cond_3

    move v2, v0

    move-object v0, v1

    goto :goto_1

    .line 342
    :cond_3
    return-void

    .line 346
    :cond_4
    if-nez v0, :cond_5

    .line 349
    invoke-virtual {p0, p2}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 350
    :goto_2
    return-void

    .line 347
    :cond_5
    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 209
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "bgcolor"

    .line 221
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "border"

    .line 233
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public declared-synchronized setCaption(Lmf/org/w3c/dom/html/HTMLTableCaptionElement;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 59
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->deleteCaption()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-nez p1, :cond_2

    :goto_0
    monitor-exit p0

    .line 64
    return-void

    .line 59
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lmf/org/w3c/dom/html/HTMLTableCaptionElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CAPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTM016 Argument \'caption\' is not an element of type <CAPTION>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 63
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setCellPadding(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "cellpadding"

    .line 245
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public setCellSpacing(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "cellspacing"

    .line 257
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public setFrame(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "frame"

    .line 269
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public setRules(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "rules"

    .line 281
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "summary"

    .line 293
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public declared-synchronized setTFoot(Lmf/org/w3c/dom/html/HTMLTableSectionElement;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 155
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->deleteTFoot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    if-nez p1, :cond_2

    :goto_0
    monitor-exit p0

    .line 160
    return-void

    .line 155
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lmf/org/w3c/dom/html/HTMLTableSectionElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TFOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTM018 Argument \'tFoot\' is not an element of type <TFOOT>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 159
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setTHead(Lmf/org/w3c/dom/html/HTMLTableSectionElement;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 107
    if-nez p1, :cond_1

    .line 109
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->deleteTHead()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-nez p1, :cond_2

    :goto_0
    monitor-exit p0

    .line 112
    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lmf/org/w3c/dom/html/HTMLTableSectionElement;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "THEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTM017 Argument \'tHead\' is not an element of type <THEAD>."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 305
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method
