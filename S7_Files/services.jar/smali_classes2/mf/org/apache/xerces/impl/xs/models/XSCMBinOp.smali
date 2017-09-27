.class public Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "XSCMBinOp.java"


# instance fields
.field private fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 42
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 48
    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 49
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 50
    return-void

    .line 43
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 111
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 120
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0
.end method

.method final getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method final getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->type()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_3

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_BST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 77
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fLeftChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->fRightChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3
.end method
