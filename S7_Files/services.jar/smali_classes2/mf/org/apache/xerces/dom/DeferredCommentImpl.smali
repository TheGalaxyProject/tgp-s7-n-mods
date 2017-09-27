.class public Lmf/org/apache/xerces/dom/DeferredCommentImpl;
.super Lmf/org/apache/xerces/dom/CommentImpl;
.source "DeferredCommentImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5a305cde0e08f6daL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/CommentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 57
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->fNodeIndex:I

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->needsSyncData(Z)V

    .line 60
    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->fNodeIndex:I

    return v0
.end method

.method protected synchronizeData()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->needsSyncData(Z)V

    .line 83
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 84
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredCommentImpl;->data:Ljava/lang/String;

    .line 86
    return-void
.end method
