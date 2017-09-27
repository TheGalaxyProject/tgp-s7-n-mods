.class public Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;
.super Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;
.source "DeferredProcessingInstructionImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x40714d8bf480c7ccL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->fNodeIndex:I

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->needsSyncData(Z)V

    .line 63
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->needsSyncData(Z)V

    .line 86
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 87
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->target:Ljava/lang/String;

    .line 88
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;->data:Ljava/lang/String;

    .line 90
    return-void
.end method
