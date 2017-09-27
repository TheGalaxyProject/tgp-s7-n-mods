.class public Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;
.super Lmf/org/apache/xerces/impl/dtd/models/CMNode;
.source "CMLeaf.java"


# instance fields
.field private final fElement:Lmf/org/apache/xerces/xni/QName;

.field private fPosition:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 39
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    .line 66
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/QName;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;-><init>(I)V

    .line 39
    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    .line 57
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    .line 58
    iput p2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    .line 59
    return-void
.end method


# virtual methods
.method protected calcFirstPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0
.end method

.method protected calcLastPos(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 137
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->setBit(I)V

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto :goto_0
.end method

.method final getElement()Lmf/org/apache/xerces/xni/QName;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method final getPosition()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    return v0
.end method

.method public isNullable()Z
    .locals 2

    .prologue
    .line 97
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

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
    .line 85
    iput p1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x29

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/QName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " ("

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    if-gez v1, :cond_0

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, " (Pos:"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 110
    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/models/CMLeaf;->fPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
