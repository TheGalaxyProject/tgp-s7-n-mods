.class public Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;
.super Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
.source "DeferredElementDefinitionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5d06afa0904b42f7L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 63
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    .line 64
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncData(Z)V

    .line 65
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncChildren(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v2

    .line 100
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    .line 103
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncChildren(Z)V

    .line 107
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 108
    new-instance v1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    .line 112
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    .line 113
    if-eq v1, v3, :cond_0

    .line 115
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->attributes:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 114
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    .line 122
    return-void
.end method

.method protected synchronizeData()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncData(Z)V

    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 91
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;->name:Ljava/lang/String;

    .line 93
    return-void
.end method
