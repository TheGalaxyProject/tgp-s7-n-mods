.class public Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMUniOp.java"


# instance fields
.field private final fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;


# direct methods
.method public constructor <init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 39
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 47
    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    .line 48
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ImplementationMessages.VAL_UST"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 83
    return-void
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setTo(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    .line 89
    return-void
.end method

.method final getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    return-object v0
.end method

.method public isNullable()Z
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->type()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMUniOp;->fChild:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v0

    return v0
.end method
