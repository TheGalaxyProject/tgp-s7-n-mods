.class public Lmf/org/apache/xerces/dom/TreeWalkerImpl;
.super Ljava/lang/Object;
.source "TreeWalkerImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/TreeWalker;


# instance fields
.field fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fEntityReferenceExpansion:Z

.field fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field fRoot:Lmf/org/w3c/dom/Node;

.field private fUseIsSameNode:Z

.field fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    .line 68
    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 69
    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    .line 70
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->useIsSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    .line 71
    iput p2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    .line 72
    iput-object p3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    .line 73
    iput-boolean p4, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    .line 74
    return-void
.end method

.method private isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 527
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    if-nez v1, :cond_0

    if-eq p1, p2, :cond_1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->isSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private useIsSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 515
    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_1

    .line 518
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 519
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    .line 520
    :goto_0
    if-nez p1, :cond_3

    :cond_0
    return v3

    .line 516
    :cond_1
    return v3

    .line 519
    :cond_2
    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    .line 520
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string/jumbo v1, "Core"

    const-string/jumbo v2, "3.0"

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)S
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 493
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-eqz v0, :cond_0

    .line 500
    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 505
    return v3

    .line 494
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 497
    return v3

    .line 495
    :cond_1
    return v2

    .line 501
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    return v0
.end method

.method public firstChild()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 137
    if-nez v0, :cond_1

    .line 140
    :goto_0
    return-object v0

    .line 134
    :cond_0
    return-object v1

    .line 138
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public getCurrentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 411
    if-eqz p1, :cond_2

    .line 413
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-eqz v0, :cond_3

    .line 416
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_4

    .line 418
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    const/4 v2, 0x1

    .line 420
    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    .line 423
    if-eq v1, v2, :cond_6

    .line 436
    :cond_1
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 411
    :cond_2
    return-object v2

    .line 414
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 415
    return-object v2

    .line 417
    :cond_4
    return-object v2

    .line 421
    :cond_5
    return-object v0

    .line 424
    :cond_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_7

    .line 431
    return-object v1

    .line 429
    :cond_7
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    if-eqz p1, :cond_2

    .line 451
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-eqz v0, :cond_3

    .line 455
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_4

    .line 458
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    const/4 v2, 0x1

    .line 460
    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    .line 463
    if-eq v1, v2, :cond_6

    .line 475
    :cond_1
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 449
    :cond_2
    return-object v2

    .line 452
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 453
    return-object v2

    .line 456
    :cond_4
    return-object v2

    .line 461
    :cond_5
    return-object v0

    .line 464
    :cond_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 467
    if-eqz v1, :cond_7

    .line 470
    return-object v1

    .line 468
    :cond_7
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 313
    if-nez p1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    const/4 v2, 0x1

    .line 333
    if-eq v1, v2, :cond_6

    .line 336
    if-eq v1, v3, :cond_7

    .line 346
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 318
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 320
    if-nez v0, :cond_4

    :cond_3
    return-object v2

    :cond_4
    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 322
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    .line 324
    if-eq v1, v3, :cond_5

    .line 328
    return-object v2

    .line 325
    :cond_5
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 334
    :cond_6
    return-object v0

    .line 337
    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_8

    .line 341
    return-object v1

    .line 339
    :cond_8
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    if-nez p1, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    const/4 v2, 0x1

    .line 285
    if-eq v1, v2, :cond_3

    .line 290
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 281
    :cond_2
    return-object v1

    .line 286
    :cond_3
    return-object v0
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 368
    if-nez p1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    const/4 v2, 0x1

    .line 387
    if-eq v1, v2, :cond_6

    .line 390
    if-eq v1, v3, :cond_7

    .line 400
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 373
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 374
    if-nez v0, :cond_4

    :cond_3
    return-object v2

    :cond_4
    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 376
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v1

    .line 378
    if-eq v1, v3, :cond_5

    .line 382
    return-object v2

    .line 379
    :cond_5
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    .line 388
    :cond_6
    return-object v0

    .line 391
    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_8

    .line 395
    return-object v1

    .line 393
    :cond_8
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    return v0
.end method

.method public lastChild()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 151
    if-nez v0, :cond_1

    .line 154
    :goto_0
    return-object v0

    .line 148
    :cond_0
    return-object v1

    .line 152
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 243
    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 250
    if-nez v0, :cond_2

    .line 256
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 257
    :goto_0
    if-eqz v0, :cond_4

    .line 258
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 259
    if-nez v1, :cond_3

    .line 263
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_0
    return-object v2

    .line 244
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 245
    return-object v0

    .line 251
    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 252
    return-object v0

    .line 260
    :cond_3
    iput-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 261
    return-object v1

    .line 268
    :cond_4
    return-object v2
.end method

.method public nextSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 180
    if-nez v0, :cond_1

    .line 183
    :goto_0
    return-object v0

    .line 177
    :cond_0
    return-object v1

    .line 181
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public parentNode()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 124
    :goto_0
    return-object v0

    .line 118
    :cond_0
    return-object v1

    .line 122
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    .line 210
    :goto_0
    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 193
    :cond_0
    return-object v3

    .line 198
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 199
    if-nez v0, :cond_2

    .line 203
    return-object v3

    .line 200
    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 201
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    .line 218
    :cond_3
    if-nez v0, :cond_4

    .line 224
    if-nez v2, :cond_5

    .line 230
    return-object v3

    .line 219
    :cond_4
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 220
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    .line 225
    :cond_5
    iput-object v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 226
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public previousSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 166
    if-nez v0, :cond_1

    .line 169
    :goto_0
    return-object v0

    .line 163
    :cond_0
    return-object v1

    .line 167
    :cond_1
    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setCurrentNode(Lmf/org/w3c/dom/Node;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    if-eqz p1, :cond_0

    .line 109
    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 110
    return-void

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    .line 105
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public setWhatShow(I)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    .line 87
    return-void
.end method
