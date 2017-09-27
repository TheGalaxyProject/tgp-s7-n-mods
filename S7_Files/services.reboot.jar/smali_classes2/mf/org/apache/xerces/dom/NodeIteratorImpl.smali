.class public Lmf/org/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;
.source "NodeIteratorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/NodeIterator;


# instance fields
.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEntityReferenceExpansion:Z

.field private fForward:Z

.field private fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 94
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    .line 95
    iput-object p2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 97
    iput p3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    .line 98
    iput-object p4, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    .line 99
    iput-boolean p5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    .line 100
    return-void
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 233
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-eqz v0, :cond_1

    .line 236
    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    :cond_0
    return v3

    .line 234
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    return v3

    :cond_2
    return v2

    .line 237
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    if-ne v0, v2, :cond_0

    .line 236
    return v2
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    .line 369
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lmf/org/w3c/dom/traversal/NodeIterator;)V

    .line 370
    return-void
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    return v0
.end method

.method matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq v0, v1, :cond_2

    .line 250
    if-eq p1, v0, :cond_1

    .line 249
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_0
    return-object v2

    .line 250
    :cond_1
    return-object v0

    .line 252
    :cond_2
    return-object v2
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 131
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object v2, v0

    move v0, v1

    .line 144
    :goto_0
    if-nez v0, :cond_8

    .line 147
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v0, :cond_4

    .line 152
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-eqz v0, :cond_5

    .line 157
    :cond_1
    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 161
    :goto_1
    iput-boolean v5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 164
    if-eqz v0, :cond_6

    .line 167
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    .line 168
    if-nez v2, :cond_7

    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INVALID_STATE_ERR"

    .line 134
    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 138
    :cond_3
    return-object v4

    .line 147
    :cond_4
    if-eqz v2, :cond_0

    .line 149
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 153
    :cond_5
    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 155
    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_6
    return-object v4

    .line 170
    :cond_7
    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 171
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    .line 178
    :cond_8
    return-object v4
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    if-eqz p1, :cond_2

    .line 267
    if-nez p2, :cond_3

    .line 275
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq p1, v0, :cond_4

    .line 280
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 281
    if-nez v0, :cond_5

    .line 285
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 286
    :goto_0
    if-nez v0, :cond_6

    .line 297
    :cond_1
    return-object v2

    .line 263
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0

    .line 269
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 271
    return-object v0

    .line 276
    :cond_4
    return-object v2

    .line 281
    :cond_5
    return-object v0

    .line 286
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq v0, v1, :cond_1

    .line 287
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 288
    if-nez v1, :cond_7

    .line 291
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_7
    return-object v1
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 187
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_2

    :cond_0
    return-object v3

    .line 188
    :cond_1
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "INVALID_STATE_ERR"

    .line 190
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const/16 v2, 0xb

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    move-object v2, v0

    move v0, v1

    .line 200
    :goto_0
    if-nez v0, :cond_7

    .line 202
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v0, :cond_4

    .line 207
    :cond_3
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 211
    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 215
    if-eqz v0, :cond_5

    .line 218
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    .line 219
    if-nez v2, :cond_6

    move v4, v2

    move-object v2, v0

    move v0, v4

    goto :goto_0

    .line 202
    :cond_4
    if-eqz v2, :cond_3

    .line 204
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_1

    .line 215
    :cond_5
    return-object v3

    .line 221
    :cond_6
    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 222
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0

    .line 227
    :cond_7
    return-object v3
.end method

.method previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eq p1, v0, :cond_1

    .line 311
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_2

    .line 319
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_3

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 308
    :cond_1
    return-object v1

    .line 314
    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 315
    return-object v0

    .line 320
    :cond_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-eqz v1, :cond_5

    .line 325
    :cond_4
    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 321
    :cond_5
    if-eqz v0, :cond_4

    .line 322
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method public removeNode(Lmf/org/w3c/dom/Node;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_1

    .line 347
    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v1, :cond_2

    .line 352
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 353
    if-nez v1, :cond_3

    .line 359
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    .line 365
    :goto_0
    return-void

    .line 341
    :cond_0
    return-void

    .line 345
    :cond_1
    return-void

    .line 348
    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 355
    :cond_3
    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method
