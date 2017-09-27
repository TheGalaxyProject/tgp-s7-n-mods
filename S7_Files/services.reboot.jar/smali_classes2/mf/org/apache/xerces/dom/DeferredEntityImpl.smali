.class public Lmf/org/apache/xerces/dom/DeferredEntityImpl;
.super Lmf/org/apache/xerces/dom/EntityImpl;
.source "DeferredEntityImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x420f8ee1ad39e3c6L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/EntityImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 85
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    .line 86
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncData(Z)V

    .line 87
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncChildren(Z)V

    .line 89
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncChildren(Z)V

    .line 143
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->isReadOnly(Z)V

    .line 145
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 146
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 147
    invoke-virtual {p0, v2, v2}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->setReadOnly(ZZ)V

    .line 149
    return-void
.end method

.method protected synchronizeData()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->needsSyncData(Z)V

    .line 115
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 116
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->name:Ljava/lang/String;

    .line 119
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->publicId:Ljava/lang/String;

    .line 120
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->systemId:Ljava/lang/String;

    .line 121
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 122
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 124
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->notationName:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->version:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->encoding:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->baseURI:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredEntityImpl;->inputEncoding:Ljava/lang/String;

    .line 135
    return-void
.end method
