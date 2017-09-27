.class public abstract Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.super Ljava/lang/Object;
.source "CMNode.java"


# instance fields
.field private fCompactedForUPA:Z

.field private fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fFollowPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fMaxStates:I

.field private final fType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 134
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFollowPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 135
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/4 v0, -0x1

    .line 136
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fCompactedForUPA:Z

    .line 34
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fType:I

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
.end method

.method protected abstract calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
.end method

.method public final firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 59
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFirstPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fCompactedForUPA:Z

    return v0
.end method

.method public abstract isNullable()Z
.end method

.method public final lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fLastPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    goto :goto_0
.end method

.method final setFollowPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fFollowPos:Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    .line 78
    return-void
.end method

.method public setIsCompactUPAModel(Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fCompactedForUPA:Z

    .line 91
    return-void
.end method

.method public final setMaxStates(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fMaxStates:I

    .line 83
    return-void
.end method

.method public final type()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->fType:I

    return v0
.end method
