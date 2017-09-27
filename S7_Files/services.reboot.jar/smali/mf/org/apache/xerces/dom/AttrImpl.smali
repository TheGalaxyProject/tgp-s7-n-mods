.class public Lmf/org/apache/xerces/dom/AttrImpl;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Attr;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field static final DTD_URI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field static final serialVersionUID:J = 0x64ff9c955f6bcfc6L


# instance fields
.field protected name:Ljava/lang/String;

.field transient type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 158
    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 150
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 154
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    .line 155
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    .line 1234
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1218
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1220
    return-void

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1161
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_1

    .line 1174
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    .line 1163
    iget-object v1, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1166
    if-nez v0, :cond_3

    .line 1167
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1168
    :goto_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0

    .line 1166
    :cond_3
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 1175
    :cond_4
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0
.end method

.method checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1196
    if-nez p1, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1199
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1200
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 229
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 235
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    :cond_0
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 249
    return-object v0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    .line 238
    :cond_2
    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 243
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lmf/org/w3c/dom/Node;

    :goto_1
    if-eqz v1, :cond_0

    .line 245
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 244
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-object p0

    .line 633
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getElement()Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 642
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    .line 646
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0

    .line 654
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getLength()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1019
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move v2, v1

    move-object v1, v0

    move v0, v2

    .line 1024
    :goto_0
    if-eqz v1, :cond_1

    .line 1025
    add-int/lit8 v0, v0, 0x1

    .line 1024
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1020
    return v0

    .line 1027
    :cond_1
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-object v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-object v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_0
.end method

.method public getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 0

    .prologue
    .line 302
    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v0

    return v0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 294
    return-object v1

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    .line 292
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 440
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 453
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 456
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-eq v1, v3, :cond_5

    .line 460
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 463
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 465
    if-nez v0, :cond_6

    :cond_0
    if-eqz v1, :cond_7

    :goto_3
    return-object v1

    .line 441
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    .line 447
    return-object v0

    .line 450
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_5
    move-object v1, v0

    .line 457
    check-cast v1, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 465
    :cond_6
    if-eqz v1, :cond_0

    .line 467
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 468
    :goto_4
    if-eqz v1, :cond_a

    .line 469
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_8

    .line 475
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    :goto_5
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_4

    :cond_7
    const-string/jumbo v1, ""

    goto :goto_3

    :cond_8
    move-object v0, v1

    .line 470
    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    .line 471
    if-eqz v0, :cond_9

    .line 472
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    const-string/jumbo v0, ""

    .line 471
    return-object v0

    .line 479
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasChildNodes()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    return v1

    .line 611
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    .line 613
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 704
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 715
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    .line 716
    iget-boolean v0, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 718
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 753
    if-eq p1, p2, :cond_6

    .line 761
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_7

    .line 765
    :goto_0
    if-nez v0, :cond_8

    .line 798
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    .line 801
    invoke-virtual {v5, p0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object v0, p1

    .line 804
    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 806
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v1

    .line 807
    if-nez v1, :cond_11

    :goto_1
    move-object v1, p2

    .line 812
    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    .line 815
    iput-object p0, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 816
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 820
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v2, Lmf/org/apache/xerces/dom/ChildNode;

    .line 821
    if-eqz v2, :cond_12

    .line 828
    if-eqz v1, :cond_13

    .line 837
    if-eq p2, v2, :cond_14

    .line 848
    iget-object v2, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 849
    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 850
    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 851
    iput-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 852
    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 857
    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    .line 860
    invoke-virtual {v5, p0, v0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 862
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 864
    return-object p1

    .line 736
    :cond_1
    if-nez v0, :cond_3

    .line 747
    :cond_2
    :goto_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 748
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/AttrImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_3

    .line 737
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 738
    :goto_4
    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {v5, p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 738
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    .line 741
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 750
    :cond_5
    return-object p1

    .line 755
    :cond_6
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 756
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 757
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 758
    return-object p1

    .line 762
    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    .line 766
    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_b

    .line 770
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-ne v0, v5, :cond_c

    .line 774
    invoke-virtual {v5, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 779
    if-nez p2, :cond_e

    :cond_9
    move-object v1, p0

    move v0, v4

    .line 788
    :goto_5
    if-nez v0, :cond_f

    .line 792
    :cond_a
    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    .line 793
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 794
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_b
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 767
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 768
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_c
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "WRONG_DOCUMENT_ERR"

    .line 771
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 772
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_d
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    .line 775
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 776
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 779
    :cond_e
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p0, :cond_9

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    .line 780
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 781
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 788
    :cond_f
    if-eqz v1, :cond_a

    .line 790
    if-ne p1, v1, :cond_10

    move v0, v3

    .line 788
    :goto_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v1

    goto :goto_5

    :cond_10
    move v0, v4

    .line 790
    goto :goto_6

    .line 808
    :cond_11
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_1

    .line 823
    :cond_12
    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 824
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 825
    iput-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_2

    .line 830
    :cond_13
    iget-object v1, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 831
    iput-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 832
    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 833
    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_2

    .line 839
    :cond_14
    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 840
    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 841
    iget-object v1, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 842
    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 843
    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 844
    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto/16 :goto_2
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 899
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    .line 900
    iget-boolean v0, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    .line 911
    :cond_0
    check-cast p1, Lmf/org/apache/xerces/dom/ChildNode;

    .line 914
    invoke-virtual {v1, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 918
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eq p1, v0, :cond_4

    .line 929
    iget-object v2, p1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 930
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 931
    iput-object v0, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 932
    if-eqz v0, :cond_5

    .line 938
    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 943
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    .line 946
    iput-object v1, p1, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 947
    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 948
    iput-object v3, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 949
    iput-object v3, p1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 951
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    .line 954
    invoke-virtual {v1, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 956
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    .line 958
    return-object p1

    .line 901
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 905
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eq v0, p0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    .line 906
    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 907
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 902
    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 903
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 920
    :cond_4
    invoke-virtual {p1, v4}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 922
    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 923
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 924
    if-eqz v0, :cond_1

    .line 925
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 926
    iget-object v2, p1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0

    .line 934
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 935
    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    .prologue
    .line 1069
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    return v0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1039
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1048
    if-ltz p1, :cond_4

    .line 1051
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move v3, v1

    move-object v1, v0

    move v0, v3

    .line 1052
    :goto_0
    if-lt v0, p1, :cond_5

    .line 1055
    :cond_0
    return-object v1

    .line 1040
    :cond_1
    if-eqz p1, :cond_3

    .line 1041
    :cond_2
    return-object v2

    .line 1040
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1044
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    .line 1045
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0

    .line 1049
    :cond_4
    return-object v2

    .line 1052
    :cond_5
    if-eqz v1, :cond_0

    .line 1053
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 662
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    .line 663
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method protected makeChildNode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 183
    :goto_1
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    .line 177
    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 178
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    .line 179
    iput-object v0, v0, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 180
    iput-object p0, v0, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 181
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    goto :goto_1
.end method

.method public normalize()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 539
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move-object v1, v0

    .line 544
    :goto_0
    if-eqz v1, :cond_7

    .line 545
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 552
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v4, :cond_2

    move-object v1, v2

    goto :goto_0

    .line 555
    :cond_2
    if-nez v2, :cond_5

    .line 564
    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 565
    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v1, v2

    goto :goto_0

    .line 555
    :cond_5
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v4, :cond_3

    move-object v0, v1

    .line 557
    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 564
    :cond_6
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v2

    goto :goto_0

    .line 571
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    .line 572
    return-void
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 883
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_FOUND_ERR"

    const/4 v2, 0x0

    .line 885
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 886
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method rename(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    .line 169
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 986
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    .line 995
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 996
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 998
    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 999
    if-ne p1, p2, :cond_0

    .line 1004
    :goto_0
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1006
    return-object p2

    .line 1000
    :cond_0
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setIdAttribute(Z)V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    .line 214
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 196
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    :cond_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 198
    :goto_1
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 198
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method public setReadOnly(ZZ)V
    .locals 3

    .prologue
    .line 1109
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    .line 1111
    if-nez p2, :cond_1

    .line 1129
    :cond_0
    return-void

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1117
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1121
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1122
    :goto_1
    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 1123
    :goto_2
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    .line 1114
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_0

    .line 1118
    :cond_3
    return-void

    .line 1125
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    goto :goto_2
.end method

.method public setSpecified(Z)V
    .locals 1

    .prologue
    .line 581
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 586
    return-void

    .line 582
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    .line 594
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 339
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    .line 341
    iget-boolean v0, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    .line 346
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    const-string/jumbo v0, ""

    .line 350
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_3

    .line 353
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_4

    .line 356
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v1, :cond_5

    move-object v1, v2

    move-object v3, v0

    .line 407
    :goto_2
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 408
    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    if-nez v0, :cond_c

    .line 424
    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    .line 426
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    .line 428
    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    if-nez v0, :cond_e

    .line 432
    :cond_1
    :goto_4
    return-void

    .line 341
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 342
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 351
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    goto :goto_0

    .line 354
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    goto :goto_1

    .line 357
    :cond_5
    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    if-nez v0, :cond_7

    .line 381
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 386
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 388
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 389
    iput-object v2, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 390
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 391
    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    move-object v0, v1

    .line 394
    :goto_5
    iput-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 395
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    move-object v1, v2

    .line 397
    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_6
    move-object v3, v0

    goto :goto_2

    .line 360
    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 374
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 375
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 376
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_7

    .line 361
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/TextImpl;

    .line 365
    iput-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 366
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    .line 367
    iput-object v1, v1, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 368
    iput-object p0, v1, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 369
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    .line 370
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    .line 371
    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_6

    :cond_9
    move-object v0, v1

    move-object v1, v2

    .line 379
    goto :goto_6

    .line 382
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    .line 397
    :cond_b
    if-eqz v5, :cond_6

    .line 398
    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    move-object v3, v0

    goto/16 :goto_2

    .line 412
    :cond_c
    if-eqz v1, :cond_d

    .line 416
    iput-object p1, v1, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    .line 418
    :goto_8
    invoke-virtual {p0, v1, v2, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    .line 419
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    .line 421
    invoke-virtual {v4, p0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 413
    :cond_d
    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    move-object v1, v0

    .line 414
    goto :goto_8

    .line 428
    :cond_e
    if-eqz v5, :cond_1

    .line 429
    invoke-virtual {v4, p1, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4
.end method

.method protected synchronizeChildren()V
    .locals 1

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    .line 1142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
