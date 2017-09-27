.class public Lmf/org/apache/xerces/dom/AttributeMap;
.super Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
.source "AttributeMap.java"


# static fields
.field static final serialVersionUID:J = 0x7b21d4678ec641a7L


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 54
    if-nez p2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 57
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    goto :goto_0
.end method

.method private final remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 299
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    .line 300
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v0

    if-nez v0, :cond_3

    .line 335
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 341
    :cond_1
    :goto_1
    iput-object v2, p1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 342
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 346
    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 347
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 350
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p1, v0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 352
    return-object p1

    .line 302
    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_3
    if-eqz p3, :cond_0

    .line 308
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v0

    .line 311
    if-nez v0, :cond_5

    .line 332
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 312
    :cond_5
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 313
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v3, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_4

    .line 314
    invoke-interface {v1, v6}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 315
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 322
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 323
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 324
    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 326
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 328
    invoke-virtual {v2, v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    .line 320
    check-cast v1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method protected final addItem(Lmf/org/w3c/dom/Node;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 572
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 575
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 578
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 579
    if-gez v1, :cond_0

    .line 585
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    .line 586
    if-gez v1, :cond_1

    .line 590
    rsub-int/lit8 v1, v1, -0x1

    .line 591
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 594
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 599
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    .line 600
    return v1

    .line 580
    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 587
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 592
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto :goto_0
.end method

.method protected cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 488
    iget-object v3, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    .line 489
    if-nez v3, :cond_1

    .line 508
    :cond_0
    return-void

    .line 490
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 491
    if-eqz v4, :cond_0

    .line 492
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_0
    move v2, v0

    .line 498
    :goto_1
    if-ge v2, v4, :cond_0

    .line 499
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 500
    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 501
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 502
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 504
    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 498
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 493
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto :goto_0
.end method

.method public cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 479
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    .line 480
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 481
    return-object v0
.end method

.method protected final internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    .line 283
    if-ltz v1, :cond_1

    .line 292
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 279
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    if-nez p2, :cond_2

    .line 288
    return-object v2

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    .line 285
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected final internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    .line 394
    iget-boolean v0, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    .line 398
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 399
    if-ltz v4, :cond_3

    .line 408
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 410
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v1

    if-nez v1, :cond_5

    .line 414
    :goto_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v1

    if-nez v1, :cond_6

    .line 446
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 452
    :cond_1
    :goto_1
    iput-object v3, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 453
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 456
    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 458
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 461
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3, v0, v1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    .line 463
    return-object v0

    .line 394
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 395
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 400
    :cond_3
    if-nez p3, :cond_4

    .line 404
    return-object v2

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    .line 401
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 411
    :cond_5
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    .line 418
    if-nez v1, :cond_8

    .line 443
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 419
    :cond_8
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 421
    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    .line 422
    if-gez v1, :cond_a

    .line 440
    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 422
    :cond_a
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_9

    .line 423
    invoke-interface {v5, v7}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 424
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 425
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    .line 432
    :goto_2
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 433
    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 434
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isIdAttribute()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 437
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 436
    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_b
    move-object v2, v1

    .line 430
    check-cast v2, Lmf/org/apache/xerces/dom/AttrNSImpl;

    iput-object p1, v2, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    goto :goto_2
.end method

.method moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/AttributeMap;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 516
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 517
    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 518
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v3

    if-nez v3, :cond_1

    .line 516
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 515
    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 519
    :cond_1
    invoke-direct {p1, v0, v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    .line 520
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 524
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 521
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 528
    :cond_3
    return-void
.end method

.method protected reconcileDefaults(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 539
    :goto_0
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 540
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 541
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 539
    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 538
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 542
    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    goto :goto_2

    .line 546
    :cond_2
    if-eqz p1, :cond_5

    .line 549
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v0, :cond_6

    .line 550
    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    .line 568
    :cond_4
    return-void

    .line 547
    :cond_5
    return-void

    .line 549
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    .line 554
    :goto_3
    if-ge v2, v3, :cond_4

    .line 555
    iget-object v0, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 556
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v4

    .line 557
    if-ltz v4, :cond_7

    .line 554
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 558
    :cond_7
    rsub-int/lit8 v4, v4, -0x1

    .line 559
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 560
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 561
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 562
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    .line 563
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method protected removeItem(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 256
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    if-ltz v0, :cond_3

    .line 270
    check-cast p1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 257
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 258
    :goto_1
    if-ge v1, v2, :cond_0

    .line 259
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 261
    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    .line 266
    invoke-static {v0, v1, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 75
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 76
    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 90
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 92
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v3

    if-nez v3, :cond_4

    .line 103
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 104
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 106
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    .line 108
    if-gez v2, :cond_7

    .line 116
    rsub-int/lit8 v2, v2, -0x1

    .line 117
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 120
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 124
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    .line 128
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    :goto_2
    return-object v1

    .line 77
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    if-ne v0, v3, :cond_3

    .line 85
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    .line 86
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    .line 78
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "WRONG_DOCUMENT_ERR"

    .line 82
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 93
    :cond_4
    if-nez v2, :cond_6

    .line 98
    :cond_5
    return-object p1

    .line 93
    :cond_6
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INUSE_ATTRIBUTE_ERR"

    .line 94
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 109
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 110
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 112
    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 114
    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    goto/16 :goto_1

    .line 118
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto/16 :goto_0

    .line 129
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto/16 :goto_2
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 145
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 146
    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 160
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 162
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v3

    if-nez v3, :cond_4

    .line 172
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 173
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 175
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 177
    if-gez v2, :cond_7

    .line 187
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    .line 188
    if-gez v2, :cond_8

    .line 192
    rsub-int/lit8 v2, v2, -0x1

    .line 193
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 196
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 202
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    .line 206
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 209
    :goto_2
    return-object v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    if-ne v0, v3, :cond_3

    .line 155
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    .line 156
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    .line 148
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "WRONG_DOCUMENT_ERR"

    .line 152
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 163
    :cond_4
    if-nez v2, :cond_6

    .line 168
    :cond_5
    return-object p1

    .line 163
    :cond_6
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v0, v2, :cond_5

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INUSE_ATTRIBUTE_ERR"

    .line 164
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 178
    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 179
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iput-object v2, v1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 181
    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    .line 183
    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    goto/16 :goto_1

    .line 189
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 190
    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 194
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    goto/16 :goto_0

    .line 207
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto/16 :goto_2
.end method
