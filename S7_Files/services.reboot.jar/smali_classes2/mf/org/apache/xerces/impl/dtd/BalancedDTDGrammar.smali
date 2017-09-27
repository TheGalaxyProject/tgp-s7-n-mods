.class final Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;
.super Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.source "BalancedDTDGrammar.java"


# instance fields
.field private fDepth:I

.field private fGroupIndexStack:[[I

.field private fGroupIndexStackSizes:[I

.field private fMixed:Z

.field private fOpStack:[S


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 62
    return-void
.end method

.method private addContentSpecNodes(II)I
    .locals 3

    .prologue
    .line 231
    if-eq p1, p2, :cond_0

    .line 234
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 235
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-short v1, v1, v2

    .line 236
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v2

    .line 237
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v0

    .line 235
    invoke-virtual {p0, v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v0

    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v0, v0, v1

    aget v0, v0, p1

    return v0
.end method

.method private addToCurrentGroup(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v0, v0, v1

    .line 271
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v3, v1, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v1, v2

    .line 272
    if-eqz v0, :cond_0

    .line 276
    array-length v1, v0

    if-eq v3, v1, :cond_1

    .line 282
    :goto_0
    aput p1, v0, v3

    .line 283
    return-void

    :cond_0
    const/16 v0, 0x8

    .line 273
    new-array v0, v0, [I

    .line 274
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v0, v1, v2

    goto :goto_0

    .line 277
    :cond_1
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 278
    array-length v2, v0

    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput-object v1, v0, v2

    move-object v0, v1

    goto :goto_0
.end method

.method private initializeContentModelStacks()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 260
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, -0x1

    aput-short v2, v0, v1

    .line 261
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aput v3, v0, v1

    .line 262
    return-void

    .line 245
    :cond_0
    new-array v0, v1, [S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 246
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    .line 247
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    goto :goto_0

    .line 250
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 251
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 253
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[I

    .line 254
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    .line 256
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 257
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    goto :goto_0
.end method


# virtual methods
.method protected final addContentSpecToElement(Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    aget v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 220
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fCurrentElementIndex:I

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->setContentSpecIndex(II)V

    .line 221
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    aget-object v0, v0, v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    .line 131
    return-void
.end method

.method public final endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 206
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    .line 207
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    .line 208
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    .line 209
    return-void
.end method

.method public final endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v0, v0, v1

    .line 192
    if-gtz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addUniqueLeafNode(Ljava/lang/String;)I

    move-result v0

    .line 193
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 194
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addToCurrentGroup(I)V

    .line 195
    return-void

    .line 192
    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNodes(II)I

    move-result v0

    goto :goto_0
.end method

.method public final occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 169
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStackSizes:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 171
    if-eq p1, v5, :cond_2

    .line 174
    if-eq p1, v6, :cond_3

    const/4 v1, 0x4

    .line 177
    if-ne p1, v1, :cond_0

    .line 178
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p0, v6, v2, v4}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    .line 172
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fGroupIndexStack:[[I

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    invoke-virtual {p0, v5, v2, v4}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->addContentSpecNode(SII)I

    move-result v2

    aput v2, v1, v0

    goto :goto_0
.end method

.method public final pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    .line 118
    return-void
.end method

.method public final separator(SLmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 149
    if-eq p1, v0, :cond_1

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, 0x4

    aput-short v2, v0, v1

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fOpStack:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    const/4 v2, 0x5

    aput-short v2, v0, v1

    goto :goto_0
.end method

.method public final startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 81
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    .line 82
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    .line 83
    return-void
.end method

.method public final startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fDepth:I

    .line 100
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->initializeContentModelStacks()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;->fMixed:Z

    .line 102
    return-void
.end method
