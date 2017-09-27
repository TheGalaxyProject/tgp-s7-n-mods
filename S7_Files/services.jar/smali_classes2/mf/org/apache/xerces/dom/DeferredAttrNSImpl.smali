.class public final Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrNSImpl;
.source "DeferredAttrNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x544e780ac09de522L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 67
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    .line 68
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncData(Z)V

    .line 69
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncChildren(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 125
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V

    .line 126
    return-void
.end method

.method protected synchronizeData()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncData(Z)V

    .line 94
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 95
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 99
    if-ltz v1, :cond_0

    .line 103
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->localName:Ljava/lang/String;

    .line 106
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v4

    .line 107
    and-int/lit8 v1, v4, 0x20

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->isSpecified(Z)V

    .line 108
    and-int/lit16 v1, v4, 0x200

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->isIdAttribute(Z)V

    .line 110
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->namespaceURI:Ljava/lang/String;

    .line 112
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->type:Ljava/lang/Object;

    .line 114
    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 107
    goto :goto_1

    :cond_2
    move v2, v3

    .line 108
    goto :goto_2
.end method
