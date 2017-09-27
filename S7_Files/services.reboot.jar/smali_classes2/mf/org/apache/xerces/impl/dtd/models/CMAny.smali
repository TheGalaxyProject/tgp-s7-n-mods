.class public Lmf/org/apache/xerces/impl/dtd/models/CMAny;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMAny.java"


# instance fields
.field private fPosition:I

.field private final fType:I

.field private final fURI:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    .line 67
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fType:I

    .line 68
    iput-object p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fURI:Ljava/lang/String;

    .line 69
    iput p3, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    .line 70
    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 131
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    .line 132
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 142
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0
.end method

.method final getPosition()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    return v0
.end method

.method final getType()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fType:I

    return v0
.end method

.method final getURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fURI:Ljava/lang/String;

    return-object v0
.end method

.method public isNullable()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final setPosition(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x29

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "##any:uri="

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    if-gez v1, :cond_0

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, " (Pos:"

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 115
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMAny;->fPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
