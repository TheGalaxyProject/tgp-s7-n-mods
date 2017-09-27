.class public Lmf/org/apache/xerces/impl/xs/models/CMBuilder;
.super Ljava/lang/Object;
.source "CMBuilder.java"


# static fields
.field private static final fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;


# instance fields
.field private fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

.field private fLeafCount:I

.field private final fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

.field private fParticleCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 54
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 55
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    .line 56
    return-void
.end method

.method private buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 333
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 334
    iget v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 335
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x2

    .line 338
    if-ne v0, v5, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0, p1, v4, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    return-object v0

    .line 339
    :cond_1
    if-eq v0, v6, :cond_0

    const/4 v5, 0x3

    .line 342
    if-eq v0, v5, :cond_3

    .line 383
    :cond_2
    :goto_0
    return-object v2

    .line 343
    :cond_3
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 344
    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-eq v5, v6, :cond_4

    :goto_1
    move v4, v1

    .line 360
    :goto_2
    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v4, v3, :cond_9

    .line 362
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 364
    if-nez v3, :cond_7

    .line 360
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 344
    :cond_4
    if-eq v4, v6, :cond_6

    .line 345
    :cond_5
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v1

    invoke-direct {p0, v0, v4, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    return-object v0

    .line 344
    :cond_6
    if-ne v3, v6, :cond_5

    goto :goto_1

    .line 365
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 366
    if-eqz v2, :cond_8

    .line 370
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v6, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v5, v6, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v3

    .line 368
    goto :goto_3

    .line 374
    :cond_9
    if-eqz v2, :cond_2

    .line 377
    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v4, 0x65

    if-ne v3, v4, :cond_2

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v0, :cond_2

    .line 378
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    goto :goto_0
.end method

.method private buildCompactSyntaxTree2(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 389
    if-eq p2, v0, :cond_4

    .line 392
    :cond_0
    if-eqz p2, :cond_5

    .line 397
    :cond_1
    if-eqz p2, :cond_6

    .line 402
    :cond_2
    if-eq p2, v0, :cond_7

    .line 410
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v3, v5, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMRepeatingLeafNode(ILjava/lang/Object;IIII)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 411
    if-eqz p2, :cond_8

    .line 415
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v8, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    .line 389
    :cond_4
    if-ne p3, v0, :cond_0

    .line 390
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_5
    if-ne p3, v0, :cond_1

    .line 394
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_6
    if-ne p3, v1, :cond_2

    .line 399
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v7, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    .line 402
    :cond_7
    if-ne p3, v1, :cond_3

    .line 404
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v8, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v7, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0
.end method

.method private buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 11

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 144
    iget v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 145
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 148
    if-nez p2, :cond_2

    move v1, v2

    move v5, v4

    move v4, v0

    .line 167
    :goto_0
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 170
    if-ne v0, v6, :cond_7

    .line 178
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v2, v3, v6, v7}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 181
    if-nez v7, :cond_8

    .line 226
    :cond_1
    :goto_1
    return-object v7

    .line 151
    :cond_2
    if-gt v0, v3, :cond_3

    move v1, v0

    move v0, v2

    .line 161
    :goto_2
    if-gt v4, v3, :cond_6

    move v5, v4

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 152
    :cond_3
    if-le v4, v0, :cond_5

    :cond_4
    move v0, v3

    move v1, v3

    .line 155
    goto :goto_2

    .line 152
    :cond_5
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->getMaxOccursUnbounded()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    move v1, v6

    .line 158
    goto :goto_2

    :cond_6
    move v4, v1

    move v5, v6

    move v1, v3

    .line 163
    goto :goto_0

    .line 171
    :cond_7
    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    .line 185
    if-ne v0, v3, :cond_1

    .line 187
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    move v6, v1

    move v1, v2

    move-object v10, v7

    move v7, v2

    move-object v2, v10

    .line 199
    :goto_3
    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v7, v3, :cond_b

    .line 201
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v7

    invoke-direct {p0, v3, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 203
    if-nez v3, :cond_9

    move v3, v6

    .line 199
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v3

    goto :goto_3

    .line 182
    :cond_8
    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    goto :goto_1

    .line 204
    :cond_9
    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v8

    or-int/2addr v6, v8

    .line 205
    add-int/lit8 v1, v1, 0x1

    .line 206
    if-eqz v2, :cond_a

    .line 210
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    iget-short v9, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    invoke-virtual {v8, v9, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    move v3, v6

    goto :goto_4

    :cond_a
    move-object v2, v3

    move v3, v6

    .line 208
    goto :goto_4

    .line 215
    :cond_b
    if-nez v2, :cond_c

    move-object v7, v2

    goto :goto_1

    .line 218
    :cond_c
    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v7, 0x65

    if-eq v3, v7, :cond_e

    .line 221
    :cond_d
    :goto_5
    invoke-direct {p0, v2, v4, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v7

    .line 222
    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setIsCompactUPAModel(Z)V

    goto :goto_1

    .line 218
    :cond_e
    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v0, :cond_d

    .line 219
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    goto :goto_5
.end method

.method private copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    .prologue
    .line 302
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v0

    const/16 v1, 0x65

    .line 304
    if-ne v0, v1, :cond_1

    .line 306
    :cond_0
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    .line 307
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    .line 308
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 307
    invoke-virtual {v1, v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    .line 325
    :goto_0
    return-object p1

    :cond_1
    const/16 v1, 0x66

    .line 305
    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    .line 311
    if-ne v0, v1, :cond_3

    .line 314
    :cond_2
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    .line 315
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    .line 312
    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    .line 313
    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    .line 319
    if-ne v0, v1, :cond_5

    .line 321
    :cond_4
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    .line 322
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->type()I

    move-result v1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMLeafNode(ILjava/lang/Object;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    .line 320
    if-eq v0, v1, :cond_4

    goto :goto_0
.end method

.method private expandContentModel(Lmf/org/apache/xerces/impl/dtd/models/CMNode;II)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 237
    if-eq p2, v5, :cond_4

    .line 240
    :goto_0
    if-eqz p2, :cond_5

    .line 244
    :cond_0
    if-eqz p2, :cond_6

    .line 248
    :cond_1
    if-eq p2, v5, :cond_7

    .line 252
    :cond_2
    if-eq p3, v1, :cond_8

    .line 269
    if-gtz p2, :cond_9

    .line 272
    :goto_1
    if-gt p3, p2, :cond_a

    move-object p1, v0

    .line 284
    :cond_3
    :goto_2
    return-object p1

    .line 237
    :cond_4
    if-eq p3, v5, :cond_3

    goto :goto_0

    .line 240
    :cond_5
    if-ne p3, v5, :cond_0

    .line 242
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    .line 244
    :cond_6
    if-ne p3, v1, :cond_1

    .line 246
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    .line 248
    :cond_7
    if-ne p3, v1, :cond_2

    .line 250
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v4, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    .line 257
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, v4, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    .line 263
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, p1, v3, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 262
    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    .line 270
    :cond_9
    invoke-direct {p0, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_1

    .line 273
    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1, v3, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMUniOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    .line 274
    if-eqz v0, :cond_b

    .line 278
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v3, 0x66

    .line 279
    sub-int v4, p3, p2

    invoke-direct {p0, v1, v4, v5}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v1

    .line 278
    invoke-virtual {v2, v3, v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2

    .line 275
    :cond_b
    sub-int v0, p3, p2

    invoke-direct {p0, v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_2
.end method

.method private multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 288
    if-eqz p2, :cond_0

    .line 291
    if-eq p2, v4, :cond_1

    .line 294
    div-int/lit8 v0, p2, 0x2

    .line 295
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    const/16 v2, 0x66

    .line 296
    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    .line 297
    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, v4}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->multiNodes(Lmf/org/apache/xerces/impl/dtd/models/CMNode;IZ)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 295
    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->getCMBinOpNode(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 289
    return-object v0

    .line 292
    :cond_1
    if-nez p3, :cond_2

    :goto_0
    return-object p1

    :cond_2
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->copyNode(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object p1

    goto :goto_0
.end method

.method private useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 426
    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 427
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 428
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v4, 0x3

    .line 430
    if-eq v0, v4, :cond_1

    .line 449
    :cond_0
    return v5

    .line 431
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 432
    if-eq v3, v5, :cond_3

    .line 433
    :cond_2
    iget v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-eq v1, v5, :cond_4

    .line 441
    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-eqz v0, :cond_9

    return v2

    .line 432
    :cond_3
    if-ne v1, v5, :cond_2

    move v1, v2

    .line 443
    :goto_0
    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v3, :cond_0

    .line 444
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_4
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v0, v0, v2

    .line 435
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 436
    if-ne v1, v5, :cond_7

    .line 438
    :cond_5
    iget v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-eq v1, v5, :cond_8

    .line 436
    :cond_6
    :goto_1
    return v2

    :cond_7
    const/4 v3, 0x2

    .line 437
    if-eq v1, v3, :cond_5

    goto :goto_1

    .line 439
    :cond_8
    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v0, v5, :cond_6

    .line 436
    return v5

    .line 441
    :cond_9
    return v5

    .line 445
    :cond_a
    return v2
.end method


# virtual methods
.method createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 116
    new-instance v6, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;

    iget v1, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    invoke-direct {v6, v1, v4}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;-><init>(ZI)V

    move v5, v2

    .line 117
    :goto_1
    iget v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v5, v1, :cond_3

    .line 119
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v1, v1, v5

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 120
    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v5

    iget v4, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-eqz v4, :cond_2

    move v4, v2

    .line 119
    :goto_2
    invoke-virtual {v6, v1, v4}, Lmf/org/apache/xerces/impl/xs/models/XSAllCM;->addElement(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Z)V

    .line 117
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 110
    return-object v0

    :cond_1
    move v1, v3

    .line 116
    goto :goto_0

    :cond_2
    move v4, v3

    .line 120
    goto :goto_2

    .line 122
    :cond_3
    return-object v6
.end method

.method createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    .line 127
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fParticleCount:I

    .line 129
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->useRepeatingLeafNodes(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    .line 130
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fLeafCount:I

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;-><init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    return-object v1

    .line 129
    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->buildCompactSyntaxTree(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_1
    return-object v1
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentType()S

    move-result v0

    const/4 v1, 0x1

    .line 73
    if-ne v0, v1, :cond_1

    .line 75
    :cond_0
    return-object v2

    .line 74
    :cond_1
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 82
    if-eqz v0, :cond_3

    .line 88
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 93
    :cond_2
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createDFACM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    .line 98
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fNodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->resetNodeCount()V

    .line 102
    if-eqz v0, :cond_5

    .line 105
    :goto_1
    return-object v0

    .line 83
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    return-object v0

    .line 89
    :cond_4
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/16 v2, 0x67

    if-ne v1, v2, :cond_2

    .line 90
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->createAllCM(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fEmptyCM:Lmf/org/apache/xerces/impl/xs/models/XSEmptyCM;

    goto :goto_1
.end method

.method public setDeclPool(Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->fDeclPool:Lmf/org/apache/xerces/impl/xs/XSDeclarationPool;

    .line 60
    return-void
.end method
