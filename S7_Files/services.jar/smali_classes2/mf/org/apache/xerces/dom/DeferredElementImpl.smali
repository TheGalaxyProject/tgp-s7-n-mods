.class public Lmf/org/apache/xerces/dom/DeferredElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "DeferredElementImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x6a74ccb2df45c8baL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 79
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->needsSyncChildren(Z)V

    .line 82
    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 133
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 134
    return-void
.end method

.method protected final synchronizeData()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 101
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->needsSyncData(Z)V

    .line 105
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 108
    iget-boolean v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 109
    iput-boolean v1, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 111
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->setupDefaultAttributes()V

    .line 115
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 116
    if-ne v1, v5, :cond_1

    .line 126
    :cond_0
    iput-boolean v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 128
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v4

    move v2, v1

    .line 119
    :goto_0
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 120
    invoke-interface {v4, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 121
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    .line 122
    if-eq v1, v5, :cond_0

    move v2, v1

    goto :goto_0
.end method
