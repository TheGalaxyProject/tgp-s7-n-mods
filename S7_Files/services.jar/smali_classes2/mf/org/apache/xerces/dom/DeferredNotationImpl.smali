.class public Lmf/org/apache/xerces/dom/DeferredNotationImpl;
.super Lmf/org/apache/xerces/dom/NotationImpl;
.source "DeferredNotationImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x4f2d6dee39d1f240L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/NotationImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 72
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->needsSyncData(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->needsSyncData(Z)V

    .line 101
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 102
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->name:Ljava/lang/String;

    .line 104
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 106
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->publicId:Ljava/lang/String;

    .line 107
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->systemId:Ljava/lang/String;

    .line 108
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 110
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredNotationImpl;->baseURI:Ljava/lang/String;

    .line 113
    return-void
.end method
