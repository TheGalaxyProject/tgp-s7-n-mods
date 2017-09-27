.class public Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;
.super Ljava/lang/Object;
.source "XSComplexTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field private static final CT_HAS_TYPE_ID:S = 0x2s

.field private static final CT_IS_ABSTRACT:S = 0x1s

.field private static final CT_IS_ANONYMOUS:S = 0x4s

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4


# instance fields
.field fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

.field fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field fBlock:S

.field fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field fContentType:S

.field fDerivedBy:S

.field fFinal:S

.field fMiscFlags:S

.field fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

.field fTargetNamespace:Ljava/lang/String;

.field fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 59
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    .line 62
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    .line 65
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    .line 69
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 72
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 75
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    .line 78
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 81
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 84
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 87
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 90
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 94
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 105
    return-void
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, p4

    .line 372
    :goto_0
    if-nez v3, :cond_1

    .line 395
    :cond_0
    :goto_1
    return v0

    .line 372
    :cond_1
    if-eq v3, v2, :cond_0

    .line 375
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 384
    :cond_2
    invoke-direct {p0, p1, p2, p3, v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    .line 385
    if-nez v2, :cond_6

    .line 387
    invoke-direct {p0, p1, p2, p3, v3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v2

    .line 388
    if-eqz v2, :cond_7

    .line 392
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    move-object v2, v3

    move-object v3, p4

    goto :goto_0

    .line 376
    :cond_3
    if-eqz p1, :cond_5

    .line 377
    :cond_4
    if-eqz p1, :cond_2

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    move v0, v1

    .line 379
    goto :goto_1

    .line 376
    :cond_5
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 386
    :cond_6
    return v1

    .line 389
    :cond_7
    return v1
.end method

.method private isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move v2, v3

    move-object v0, p4

    .line 481
    :goto_0
    if-nez v0, :cond_1

    .line 531
    :cond_0
    return v3

    .line 481
    :cond_1
    if-eq v0, v1, :cond_0

    .line 483
    if-nez p1, :cond_4

    .line 491
    :cond_2
    :goto_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 499
    :cond_3
    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v1, :cond_8

    move-object v1, v0

    .line 523
    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_c

    move v1, v2

    .line 528
    :goto_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    move v2, v1

    move-object v1, v0

    move-object v0, p4

    goto :goto_0

    .line 484
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "anySimpleType"

    .line 485
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "anyType"

    .line 487
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 492
    :cond_5
    if-eqz p1, :cond_7

    .line 493
    :cond_6
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    :goto_3
    return v2

    .line 492
    :cond_7
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    .line 500
    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 508
    :cond_9
    :goto_4
    and-int/lit8 v1, p3, 0x2

    if-nez v1, :cond_b

    .line 515
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 514
    and-int/2addr v0, v2

    return v0

    :cond_a
    const-string/jumbo v1, "anyType"

    .line 501
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo p2, "anySimpleType"

    goto :goto_4

    .line 510
    :cond_b
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    .line 512
    and-int/lit8 v1, p3, 0x1

    .line 510
    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 509
    and-int/2addr v0, v2

    return v0

    .line 524
    :cond_c
    or-int/lit8 v1, v2, 0x1

    goto :goto_2
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v0, p4

    .line 418
    :goto_0
    if-nez v0, :cond_1

    .line 457
    :cond_0
    return v3

    .line 418
    :cond_1
    if-eq v0, v1, :cond_0

    .line 421
    if-nez p1, :cond_4

    .line 429
    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 431
    :cond_3
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 437
    :goto_1
    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v1, :cond_8

    move-object v1, v0

    .line 448
    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getDerivationMethod()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 453
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p4

    move-object v1, v0

    move-object v0, p4

    goto :goto_0

    .line 422
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "anySimpleType"

    .line 423
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    return v3

    .line 430
    :cond_5
    if-eqz p1, :cond_3

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    :cond_6
    const/4 v0, 0x1

    return v0

    .line 431
    :cond_7
    if-eqz p1, :cond_6

    goto :goto_1

    .line 438
    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 442
    :cond_9
    :goto_2
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_a
    const-string/jumbo v1, "anyType"

    .line 439
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo p2, "anySimpleType"

    goto :goto_2

    .line 449
    :cond_b
    return v3
.end method


# virtual methods
.method appendTypeInfo(Ljava/lang/StringBuffer;)V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    .line 206
    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EMPTY"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SIMPLE"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ELEMENT"

    aput-object v1, v0, v5

    const-string/jumbo v1, "MIXED"

    aput-object v1, v0, v2

    .line 207
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "EMPTY"

    aput-object v2, v1, v3

    const-string/jumbo v2, "EXTENSION"

    aput-object v2, v1, v4

    const-string/jumbo v2, "RESTRICTION"

    aput-object v2, v1, v5

    const-string/jumbo v2, "Complex type name=\'"

    .line 209
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v2, :cond_0

    :goto_0
    const-string/jumbo v2, " content type=\'"

    .line 213
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " isAbstract=\'"

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " hasTypeId=\'"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->containsTypeID()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " final=\'"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " block=\'"

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v0, :cond_1

    :goto_1
    const-string/jumbo v0, " derivedBy=\'"

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\'. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    return-void

    :cond_0
    const-string/jumbo v2, " base type name=\'"

    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, " particle=\'"

    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public containsTypeID()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    if-eqz p2, :cond_4

    .line 248
    if-nez p1, :cond_5

    .line 256
    :cond_0
    :goto_0
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 259
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v0, :cond_6

    .line 264
    :cond_2
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v0, :cond_a

    :cond_3
    return v1

    .line 246
    :cond_4
    return v1

    .line 249
    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "anyType"

    .line 250
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return v2

    .line 260
    :cond_6
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_2

    .line 261
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    .line 257
    :cond_7
    if-eqz p1, :cond_9

    .line 258
    :cond_8
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 257
    :cond_9
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 265
    :cond_a
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_3

    .line 264
    return v2
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_1

    .line 230
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v0, :cond_2

    .line 234
    :goto_0
    if-ne p0, p1, :cond_4

    .line 240
    :cond_0
    :goto_1
    if-eq p0, p1, :cond_5

    return v1

    .line 228
    :cond_1
    return v1

    .line 231
    :cond_2
    return v2

    .line 236
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_0

    .line 237
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne p0, v0, :cond_3

    goto :goto_1

    .line 240
    :cond_5
    return v2
.end method

.method public getAbstract()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getAnonymous()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    return-object v0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;

    move-result-object v0

    return-object v0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    .locals 1

    .prologue
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 174
    :cond_0
    if-nez p2, :cond_1

    .line 185
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p0, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_1
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v0, :cond_3

    .line 182
    :cond_2
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 176
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p1, p0, v0}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;->getContentModel(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->isCompactedForUPA()Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getContentType()S
    .locals 1

    .prologue
    .line 661
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    return v0
.end method

.method public getDerivationMethod()S
    .locals 1

    .prologue
    .line 606
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    return v0
.end method

.method public getFinal()S
    .locals 1

    .prologue
    .line 629
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    return v0
.end method

.method public getFinalSet()S
    .locals 1

    .prologue
    .line 140
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getParticle()Lmf/org/apache/xerces/xs/XSParticle;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0
.end method

.method public getProhibitedSubstitutions()S
    .locals 1

    .prologue
    .line 697
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    return v0
.end method

.method public getSimpleType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    .prologue
    .line 132
    const/16 v0, 0xf

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    if-eqz p2, :cond_6

    .line 290
    if-nez p1, :cond_7

    .line 299
    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_8

    .line 307
    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_9

    .line 315
    :cond_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_a

    .line 316
    :cond_3
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_b

    .line 341
    :cond_4
    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_12

    .line 348
    :cond_5
    return v2

    .line 287
    :cond_6
    return v2

    .line 291
    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "anyType"

    .line 292
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    if-ne p3, v1, :cond_0

    const/4 v0, 0x2

    .line 294
    if-ne p3, v0, :cond_0

    .line 295
    return v1

    .line 300
    :cond_8
    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    .line 301
    if-eqz v0, :cond_1

    .line 302
    return v1

    .line 308
    :cond_9
    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByExtension(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    .line 309
    if-eqz v0, :cond_2

    .line 310
    return v1

    .line 315
    :cond_a
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_3

    goto :goto_0

    .line 317
    :cond_b
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_4

    .line 319
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 324
    :cond_c
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    const-string/jumbo v1, "anyType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 326
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_11

    .line 330
    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_4

    .line 331
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_f
    const-string/jumbo v0, "anyType"

    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo p2, "anySimpleType"

    goto :goto_1

    .line 325
    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_0

    .line 326
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_e

    .line 328
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 342
    :cond_12
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_5

    .line 343
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_5

    .line 344
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_5

    .line 345
    invoke-direct {p0, p1, p2, p3, p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    return v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isFinal(S)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isProhibitedSubstitution(S)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 688
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 537
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    .line 538
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 539
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 540
    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    .line 541
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    .line 542
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    .line 544
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 547
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->reset()V

    .line 548
    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    .line 549
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 550
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 551
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fCMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 552
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fUPACMValidator:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    .line 553
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_0

    .line 557
    :goto_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 558
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->clearXSObjectList()V

    goto :goto_0
.end method

.method public setContainsTypeID()V
    .locals 1

    .prologue
    .line 162
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 163
    return-void
.end method

.method public setIsAbstractType()V
    .locals 1

    .prologue
    .line 159
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 160
    return-void
.end method

.method public setIsAnonymous()V
    .locals 1

    .prologue
    .line 165
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    .line 166
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 716
    return-void
.end method

.method public setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V
    .locals 1

    .prologue
    .line 113
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fTargetNamespace:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 115
    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    .line 116
    int-to-short v0, p5

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fFinal:S

    .line 117
    int-to-short v0, p6

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    .line 118
    int-to-short v0, p7

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    .line 119
    if-nez p8, :cond_0

    .line 121
    :goto_0
    iput-object p9, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAttrGrp:Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    .line 122
    iput-object p10, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 123
    iput-object p11, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 124
    iput-object p12, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 125
    return-void

    .line 120
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fMiscFlags:S

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 201
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->appendTypeInfo(Ljava/lang/StringBuffer;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
