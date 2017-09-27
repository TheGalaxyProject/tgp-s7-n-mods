.class public Lmf/org/apache/xerces/impl/xs/XSConstraints;
.super Ljava/lang/Object;
.source "XSConstraints.java"


# static fields
.field private static final ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

.field static final OCCURRENCE_UNKNOWN:I = -0x2

.field static final STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v0, 0x0

    .line 58
    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 75
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    .line 107
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    .line 298
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    .line 301
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 305
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 310
    return-object v1

    .line 292
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 316
    :goto_0
    if-eqz p0, :cond_4

    .line 324
    :goto_1
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 326
    if-nez p3, :cond_5

    .line 332
    :goto_2
    return-object v0

    .line 302
    :cond_1
    iget-object p0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getParticle()Lmf/org/apache/xerces/xs/XSParticle;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object p0, v1

    goto :goto_0

    .line 307
    :cond_3
    return-object v1

    .line 320
    :cond_4
    sget-object p0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->STRING_TYPE:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_1

    .line 327
    :cond_5
    :try_start_1
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    return-object v1
.end method

.method private static addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 2

    .prologue
    .line 993
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 994
    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 995
    const/4 v1, 0x1

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 996
    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 998
    return-void
.end method

.method private static checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 5

    .prologue
    const/16 v4, 0xf

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 236
    if-eq p0, p1, :cond_1

    .line 240
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 246
    if-eq v0, p1, :cond_3

    .line 251
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne v0, v1, :cond_4

    .line 253
    :cond_0
    return v3

    .line 237
    :cond_1
    return v1

    .line 241
    :cond_2
    return v3

    .line 247
    :cond_3
    return v1

    .line 252
    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v1, :cond_0

    .line 258
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-eq v1, v4, :cond_5

    .line 262
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_6

    .line 276
    return v3

    .line 259
    :cond_5
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    return v0

    .line 264
    :cond_6
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-eq v1, v4, :cond_7

    move-object v1, p1

    .line 272
    :goto_0
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 273
    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 272
    invoke-static {v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    return v0

    .line 267
    :cond_7
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v1, :cond_8

    .line 270
    return v3

    .line 268
    :cond_8
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method public static checkComplexDerivationOk(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_0

    .line 176
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    return v0

    .line 175
    :cond_0
    if-eq p0, p1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 541
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x2

    .line 543
    if-eq v0, v2, :cond_0

    .line 546
    if-eq v0, v3, :cond_1

    .line 560
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 561
    :goto_0
    iget v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v2, :cond_4

    .line 562
    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v2, v2, v1

    invoke-static {p0, v2, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    :cond_0
    return-void

    .line 547
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 548
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    .line 550
    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    if-eq v2, v3, :cond_3

    .line 557
    :cond_2
    return-void

    .line 552
    :cond_3
    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    move v0, v1

    .line 553
    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 554
    aget-object v1, v2, v0

    invoke-static {p0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :cond_4
    return-void
.end method

.method private static checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1152
    return-void
.end method

.method private static checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 1411
    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1420
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v6

    move v2, v3

    .line 1422
    :goto_0
    if-ge v2, v5, :cond_4

    .line 1424
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v4, v3

    .line 1425
    :goto_1
    if-ge v4, v6, :cond_3

    .line 1426
    invoke-virtual {p4, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1428
    :try_start_0
    invoke-static {v0, p3, v1, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1412
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-MapAndSum.2"

    const/4 v0, 0x4

    .line 1413
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v3, 0x1

    .line 1414
    if-eq p2, v5, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v3

    const/4 v0, 0x2

    .line 1415
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v3, 0x3

    .line 1416
    if-eq p6, v5, :cond_2

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v4, v3

    .line 1412
    invoke-direct {v1, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "unbounded"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "unbounded"

    goto :goto_3

    .line 1429
    :catch_0
    move-exception v1

    .line 1425
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1435
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-MapAndSum.1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1437
    :cond_4
    return-void
.end method

.method private static checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1171
    if-nez p6, :cond_1

    .line 1182
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1187
    return-void

    .line 1171
    :cond_1
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-NSCompat.2"

    const/4 v0, 0x5

    .line 1173
    new-array v3, v0, [Ljava/lang/Object;

    .line 1174
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v0, v3, v4

    .line 1175
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    .line 1176
    if-eq p2, v5, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v7

    const/4 v0, 0x3

    .line 1177
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x4

    .line 1178
    if-eq p5, v5, :cond_3

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    .line 1172
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "unbounded"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "unbounded"

    goto :goto_1

    .line 1183
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSCompat.1"

    .line 1184
    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 1183
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 1224
    if-nez p7, :cond_1

    .line 1233
    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    .line 1235
    :goto_0
    if-ge v1, v2, :cond_4

    .line 1236
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    .line 1237
    const/4 v4, 0x0

    invoke-static {v0, p3, p4, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1224
    :cond_1
    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1225
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-NSRecurseCheckCardinality.2"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 1226
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    .line 1227
    if-eq p2, v5, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    const/4 v0, 0x2

    .line 1228
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    .line 1229
    if-eq p6, v5, :cond_3

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v4

    .line 1225
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "unbounded"

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "unbounded"

    goto :goto_2

    .line 1240
    :catch_0
    move-exception v0

    .line 1244
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSRecurseCheckCardinality.1"

    invoke-direct {v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1247
    :cond_4
    return-void
.end method

.method private static checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1194
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1207
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1213
    return-void

    .line 1195
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-NSSubset.2"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    .line 1196
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 1197
    if-eq p2, v5, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v6

    .line 1198
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/4 v4, 0x3

    .line 1199
    if-eq p5, v5, :cond_2

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v4

    .line 1195
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "unbounded"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "unbounded"

    goto :goto_1

    .line 1204
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSSubset.1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1208
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-NSSubset.3"

    .line 1209
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1210
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1208
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1065
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eq v0, v3, :cond_1

    .line 1067
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-NameAndTypeOK.1"

    const/4 v4, 0x4

    .line 1068
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1069
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v1, v4, v2

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v1, v4, v6

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    aput-object v1, v4, v7

    .line 1067
    invoke-direct {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1066
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 1075
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1083
    :cond_2
    invoke-static {p1, p2, p4, p5}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1096
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-eq v0, v6, :cond_9

    .line 1123
    :cond_3
    invoke-static {p0, p3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkIDConstraintRestriction(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 1128
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 1129
    iget-short v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    .line 1130
    and-int v4, v0, v3

    if-eq v4, v3, :cond_f

    .line 1132
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-NameAndTypeOK.6"

    .line 1133
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 1132
    invoke-direct {v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1075
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-NameAndTypeOK.2"

    .line 1077
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v4, v2, v1

    .line 1076
    invoke-direct {v0, v3, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1084
    :cond_6
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v4, "rcase-NameAndTypeOK.3"

    const/4 v0, 0x5

    .line 1085
    new-array v5, v0, [Ljava/lang/Object;

    .line 1086
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v0, v5, v1

    .line 1087
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 1088
    if-eq p2, v8, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v5, v6

    .line 1089
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v1, 0x4

    .line 1090
    if-eq p5, v8, :cond_8

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v1

    .line 1084
    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_7
    const-string/jumbo v0, "unbounded"

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "unbounded"

    goto :goto_1

    .line 1098
    :cond_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v6, :cond_c

    .line 1105
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_d

    :cond_a
    move v0, v2

    .line 1111
    :goto_2
    if-eqz v0, :cond_e

    .line 1112
    :cond_b
    if-eqz v0, :cond_3

    iget-object v0, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1113
    :goto_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-NameAndTypeOK.4.b"

    .line 1114
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1115
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1116
    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 1113
    invoke-direct {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1099
    :cond_c
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-NameAndTypeOK.4.a"

    .line 1100
    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1099
    invoke-direct {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1106
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v0, v2, :cond_a

    move v0, v1

    goto :goto_2

    .line 1111
    :cond_e
    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_3

    .line 1131
    :cond_f
    if-eqz v0, :cond_10

    .line 1139
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/16 v4, 0x19

    invoke-static {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    .line 1140
    if-eqz v0, :cond_11

    .line 1145
    return-void

    .line 1131
    :cond_10
    if-nez v3, :cond_4

    goto :goto_4

    .line 1141
    :cond_11
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-NameAndTypeOK.7"

    .line 1142
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    iget-object v1, p3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    .line 1141
    invoke-direct {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static checkOccurrenceRange(IIII)Z
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1157
    if-ge p0, p2, :cond_1

    .line 1162
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1158
    :cond_1
    if-ne p3, v0, :cond_3

    .line 1160
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1159
    :cond_3
    if-eq p1, v0, :cond_0

    if-le p1, p3, :cond_2

    goto :goto_0
.end method

.method private static checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1265
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    .line 1268
    :goto_0
    if-ge v2, v5, :cond_6

    .line 1270
    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v4, v1

    move v3, v1

    .line 1271
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1272
    invoke-virtual {p4, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1273
    add-int/lit8 v3, v3, 0x1

    .line 1275
    :try_start_0
    invoke-static {v0, p3, v1, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v3

    goto :goto_0

    .line 1257
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-Recurse.1"

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1258
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 1259
    if-eq p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v3, v4

    const/4 v0, 0x2

    .line 1260
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    const/4 v0, -0x1

    .line 1261
    if-eq p6, v0, :cond_2

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v3, v4

    .line 1257
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "unbounded"

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "unbounded"

    goto :goto_3

    .line 1276
    :catch_0
    move-exception v7

    .line 1279
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1271
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1280
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-Recurse.2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1283
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-Recurse.2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1288
    :cond_5
    invoke-virtual {p4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1289
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1287
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_6
    if-lt v1, v6, :cond_5

    .line 1294
    return-void

    .line 1290
    :cond_7
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-Recurse.2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private static checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 1355
    invoke-static {p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1364
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v6

    move v3, v0

    move v1, v0

    .line 1367
    :goto_0
    if-ge v3, v5, :cond_5

    .line 1369
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move v4, v1

    move v2, v1

    .line 1370
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1371
    invoke-virtual {p4, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1372
    add-int/lit8 v2, v2, 0x1

    .line 1376
    :try_start_0
    invoke-static {v0, p3, v1, p7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 1367
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 1356
    :cond_0
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-RecurseLax.1"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 1357
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    .line 1358
    if-eq p2, v5, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v3, v4

    const/4 v0, 0x2

    .line 1359
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    .line 1360
    if-eq p6, v5, :cond_2

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v3, v4

    .line 1356
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "unbounded"

    goto :goto_3

    :cond_2
    const-string/jumbo v0, "unbounded"

    goto :goto_4

    .line 1377
    :cond_3
    add-int/lit8 v0, v2, -0x1

    goto :goto_2

    .line 1378
    :catch_0
    move-exception v1

    .line 1370
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 1384
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "rcase-RecurseLax.2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1388
    :cond_5
    return-void
.end method

.method private static checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 1304
    move/from16 v0, p6

    invoke-static {p1, p2, p5, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkOccurrenceRange(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 1313
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v6

    .line 1315
    new-array v7, v6, [Z

    const/4 v1, 0x0

    move v3, v1

    .line 1317
    :goto_0
    if-ge v3, v5, :cond_5

    .line 1318
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v2, 0x0

    move v4, v2

    .line 1320
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1321
    invoke-virtual {p4, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1323
    :try_start_0
    move-object/from16 v0, p7

    invoke-static {v1, p3, v2, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    .line 1324
    aget-boolean v2, v7, v4

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 1327
    aput-boolean v2, v7, v4
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 1305
    :cond_0
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v3, "rcase-RecurseUnordered.1"

    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1306
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    const/4 v1, -0x1

    .line 1307
    if-eq p2, v1, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v4, v5

    const/4 v1, 0x2

    .line 1308
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x3

    const/4 v1, -0x1

    .line 1309
    move/from16 v0, p6

    if-eq v0, v1, :cond_2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    aput-object v1, v4, v5

    .line 1305
    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    const-string/jumbo v1, "unbounded"

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "unbounded"

    goto :goto_3

    .line 1325
    :cond_3
    :try_start_1
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v8, "rcase-RecurseUnordered.2"

    const/4 v9, 0x0

    invoke-direct {v2, v8, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1329
    :catch_0
    move-exception v2

    .line 1320
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 1335
    :cond_4
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-RecurseUnordered.2"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_5
    const/4 v1, 0x0

    move v2, v1

    .line 1339
    :goto_4
    if-ge v2, v6, :cond_8

    .line 1340
    invoke-virtual {p4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 1341
    aget-boolean v3, v7, v2

    if-eqz v3, :cond_7

    .line 1339
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1341
    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1342
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "rcase-RecurseUnordered.2"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 1346
    :cond_8
    return-void
.end method

.method private static checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 186
    if-eq p0, p1, :cond_1

    .line 191
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    .line 193
    :cond_0
    return v2

    .line 187
    :cond_1
    return v5

    .line 192
    :cond_2
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 198
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 199
    if-eq v0, p1, :cond_6

    .line 203
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-ne v0, v1, :cond_7

    .line 209
    :cond_3
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 211
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v0, :cond_9

    .line 216
    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-eq v0, v3, :cond_a

    .line 226
    :cond_5
    return v2

    .line 200
    :cond_6
    return v5

    .line 204
    :cond_7
    invoke-static {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    return v5

    .line 210
    :cond_8
    invoke-interface {p0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-eq v0, v3, :cond_4

    goto :goto_0

    .line 212
    :cond_9
    return v5

    .line 217
    :cond_a
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    .line 218
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v4

    move v1, v2

    .line 219
    :goto_1
    if-ge v1, v4, :cond_5

    .line 220
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 221
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    if-nez v0, :cond_b

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 222
    :cond_b
    return v5
.end method

.method public static checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p0, v0, :cond_0

    .line 156
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    move-object v0, p1

    .line 165
    :goto_0
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 164
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    return v0

    .line 151
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v0, :cond_1

    .line 151
    return v2

    .line 159
    :cond_3
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v0, :cond_4

    .line 162
    return v2

    .line 160
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method public static checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p0, v0, :cond_0

    .line 119
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p0, v0, :cond_2

    .line 125
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    .line 139
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkComplexDerivation(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    return v0

    .line 116
    :cond_0
    if-eq p0, p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 120
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-ne p1, v0, :cond_4

    :cond_3
    return v1

    .line 121
    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq p1, v0, :cond_3

    .line 120
    return v2

    .line 127
    :cond_5
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_6

    move-object v0, p1

    .line 135
    :goto_0
    check-cast p0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 136
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 135
    invoke-static {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivation(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)Z

    move-result v0

    return v0

    .line 130
    :cond_6
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq p1, v0, :cond_7

    .line 133
    return v2

    .line 131
    :cond_7
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method public static findElemInTable(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {p2, v1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_0

    .line 579
    if-eq p1, v0, :cond_1

    .line 582
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-ne v1, v0, :cond_2

    .line 589
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {p2, v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    :cond_1
    return-void

    .line 584
    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v1, "cos-element-consistent"

    const/4 v2, 0x2

    .line 585
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 584
    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 14

    .prologue
    .line 360
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    .line 361
    array-length v1, v5

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 362
    aget-object v2, v5, v1

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    goto :goto_0

    .line 365
    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 366
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 367
    const/4 v1, 0x3

    iput-short v1, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 368
    const/4 v1, 0x3

    iput-short v1, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 371
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_5

    .line 372
    aget-object v1, v5, v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRedefinedGroupDecls()[Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v6

    .line 373
    aget-object v1, v5, v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getRGLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v7

    const/4 v1, 0x0

    .line 374
    :cond_1
    :goto_2
    array-length v8, v6

    if-ge v1, v8, :cond_4

    .line 375
    add-int/lit8 v8, v1, 0x1

    aget-object v9, v6, v1

    .line 376
    iget-object v10, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 377
    add-int/lit8 v1, v8, 0x1

    aget-object v8, v6, v8

    .line 378
    iget-object v8, v8, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fModelGroup:Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 379
    iput-object v10, v3, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 380
    iput-object v8, v4, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 381
    if-eqz v8, :cond_2

    .line 387
    if-eqz v10, :cond_3

    .line 395
    :try_start_0
    invoke-static {v3, p1, v4, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 396
    :catch_0
    move-exception v8

    .line 397
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 398
    div-int/lit8 v11, v1, 0x2

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v7, v11

    .line 400
    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v8

    .line 398
    move-object/from16 v0, p3

    invoke-static {v0, v11, v10, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    div-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    const-string/jumbo v11, "src-redefine.6.2.2"

    const/4 v12, 0x2

    .line 403
    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    aput-object v9, v12, v13

    const/4 v9, 0x1

    aput-object v10, v12, v9

    .line 401
    move-object/from16 v0, p3

    invoke-static {v0, v8, v11, v12}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 382
    :cond_2
    if-eqz v10, :cond_1

    .line 383
    div-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    const-string/jumbo v10, "src-redefine.6.2.2"

    const/4 v11, 0x2

    .line 385
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    aput-object v9, v11, v12

    const/4 v9, 0x1

    const-string/jumbo v12, "rcase-Recurse.2"

    aput-object v12, v11, v9

    .line 383
    move-object/from16 v0, p3

    invoke-static {v0, v8, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 388
    :cond_3
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 389
    div-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v7, v8

    const-string/jumbo v10, "src-redefine.6.2.2"

    const/4 v11, 0x2

    .line 391
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XSGroupDecl;->fName:Ljava/lang/String;

    aput-object v9, v11, v12

    const/4 v9, 0x1

    const-string/jumbo v12, "rcase-Recurse.2"

    aput-object v12, v11, v9

    .line 389
    move-object/from16 v0, p3

    invoke-static {v0, v8, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 371
    :cond_4
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto/16 :goto_1

    .line 423
    :cond_5
    new-instance v6, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/SymbolHash;-><init>()V

    .line 424
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_11

    const/4 v2, 0x0

    .line 427
    aget-object v1, v5, v4

    iget-boolean v7, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    .line 428
    aget-object v1, v5, v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedComplexTypeDecls()[Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-result-object v8

    .line 429
    aget-object v1, v5, v4

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getUncheckedCTLocators()[Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    move-result-object v9

    const/4 v1, 0x0

    move v3, v1

    .line 431
    :goto_4
    array-length v1, v8

    if-ge v3, v1, :cond_f

    .line 434
    if-eqz v7, :cond_9

    .line 452
    :cond_6
    :goto_5
    aget-object v1, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_a

    .line 490
    :cond_7
    :goto_6
    aget-object v1, v8, v3

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v10}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Z)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v10

    .line 491
    const/4 v1, 0x0

    .line 492
    if-nez v10, :cond_d

    .line 511
    :goto_7
    if-eqz v7, :cond_e

    :cond_8
    move v1, v2

    .line 431
    :goto_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_4

    .line 436
    :cond_9
    aget-object v1, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v1, :cond_6

    .line 437
    invoke-virtual {v6}, Lmf/org/apache/xerces/util/SymbolHash;->clear()V

    .line 439
    :try_start_1
    aget-object v1, v8, v3

    aget-object v10, v8, v3

    iget-object v10, v10, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-static {v1, v10, v6, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkElementDeclsConsistent(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/util/SymbolHash;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 441
    :catch_1
    move-exception v1

    .line 443
    aget-object v10, v9, v3

    .line 444
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 445
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 443
    move-object/from16 v0, p3

    invoke-static {v0, v10, v11, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 453
    :cond_a
    aget-object v1, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eq v1, v10, :cond_7

    .line 454
    aget-object v1, v8, v3

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fDerivedBy:S

    const/4 v10, 0x2

    if-ne v1, v10, :cond_7

    .line 455
    aget-object v1, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_7

    .line 457
    aget-object v1, v8, v3

    iget-object v10, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 459
    aget-object v1, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 460
    if-eqz v10, :cond_b

    .line 467
    if-nez v1, :cond_c

    .line 483
    aget-object v1, v9, v3

    const-string/jumbo v10, "derivation-ok-restriction.5.4.2"

    const/4 v11, 0x1

    .line 485
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v8, v3

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 483
    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 461
    :cond_b
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 462
    aget-object v1, v9, v3

    const-string/jumbo v10, "derivation-ok-restriction.5.3.2"

    const/4 v11, 0x2

    .line 464
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v8, v3

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aget-object v13, v8, v3

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v13}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 462
    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 469
    :cond_c
    :try_start_2
    aget-object v1, v8, v3

    iget-object v10, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 471
    aget-object v1, v8, v3

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBaseType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 469
    invoke-static {v10, p1, v1, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    .line 473
    :catch_2
    move-exception v1

    .line 474
    aget-object v10, v9, v3

    .line 475
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 476
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 474
    move-object/from16 v0, p3

    invoke-static {v0, v10, v11, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    aget-object v1, v9, v3

    const-string/jumbo v10, "derivation-ok-restriction.5.4.2"

    const/4 v11, 0x1

    .line 479
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v8, v3

    iget-object v13, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fName:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 477
    move-object/from16 v0, p3

    invoke-static {v0, v1, v10, v11}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 494
    :cond_d
    :try_start_3
    invoke-interface {v10, p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/xs/XMLSchemaException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    goto/16 :goto_7

    .line 495
    :catch_3
    move-exception v10

    .line 496
    aget-object v11, v9, v3

    .line 497
    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 498
    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;->getArgs()[Ljava/lang/Object;

    move-result-object v10

    .line 496
    move-object/from16 v0, p3

    invoke-static {v0, v11, v12, v10}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 511
    :cond_e
    if-eqz v1, :cond_8

    .line 512
    add-int/lit8 v1, v2, 0x1

    aget-object v10, v8, v3

    aput-object v10, v8, v2

    goto/16 :goto_8

    .line 522
    :cond_f
    if-eqz v7, :cond_10

    .line 424
    :goto_9
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto/16 :goto_3

    .line 523
    :cond_10
    aget-object v1, v5, v4

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setUncheckedTypeNum(I)V

    .line 524
    aget-object v1, v5, v4

    const/4 v2, 0x1

    iput-boolean v2, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fFullChecked:Z

    goto :goto_9

    .line 527
    :cond_11
    return-void
.end method

.method private static gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1031
    iget v3, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 1032
    iget v4, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 1033
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v2, 0x3

    .line 1034
    if-eq v0, v2, :cond_1

    move v2, v0

    .line 1037
    :goto_0
    if-ne v2, v5, :cond_2

    .line 1039
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1040
    return-void

    .line 1035
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 1038
    if-eq v2, v0, :cond_0

    .line 1043
    if-eq v3, v5, :cond_5

    .line 1044
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1055
    :cond_4
    :goto_1
    return-void

    .line 1043
    :cond_5
    if-ne v4, v5, :cond_3

    .line 1046
    if-eq p0, v2, :cond_6

    .line 1051
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1052
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1047
    :cond_6
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    .line 1048
    :goto_2
    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v3, :cond_4

    .line 1049
    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v3, v3, v1

    invoke-static {v2, v3, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    .line 1048
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static getEmptySequence()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    return-object v0

    .line 61
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    .line 62
    const/16 v1, 0x66

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v1, 0x0

    .line 63
    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    .line 64
    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    .line 65
    sget-object v1, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 66
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    .line 67
    const/4 v2, 0x3

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    .line 68
    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    .line 69
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 70
    sput-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fEmptyParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    goto :goto_0
.end method

.method private static getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1002
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    if-ne v0, v2, :cond_1

    .line 1004
    :cond_0
    return-object p0

    .line 1003
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1006
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    if-eq v0, v2, :cond_3

    .line 1010
    :cond_2
    return-object p0

    .line 1006
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    if-ne v0, v2, :cond_2

    .line 1007
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ne v0, v2, :cond_2

    .line 1008
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    return-object v0
.end method

.method public static overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1

    .prologue
    .line 1506
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_0

    .line 1519
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_2

    .line 1525
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1526
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1525
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    return v0

    .line 1507
    :cond_0
    instance-of v0, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_1

    .line 1513
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1514
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1513
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    return v0

    .line 1508
    :cond_1
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1509
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1508
    invoke-static {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    return v0

    .line 1520
    :cond_2
    check-cast p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 1521
    check-cast p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 1520
    invoke-static {p1, p0, p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v0

    return v0
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1443
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eq v0, v1, :cond_2

    .line 1450
    :cond_0
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1451
    array-length v0, v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 1452
    aget-object v2, v1, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    .line 1453
    aget-object v2, v1, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    .line 1454
    return v5

    .line 1444
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 1445
    return v5

    .line 1460
    :cond_3
    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1461
    array-length v0, v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 1462
    aget-object v2, v1, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    .line 1463
    aget-object v2, v1, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    .line 1464
    return v5

    .line 1468
    :cond_5
    return v4
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1477
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1481
    invoke-virtual {p2, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    .line 1482
    array-length v0, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 1483
    aget-object v2, v1, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1484
    return v4

    .line 1478
    :cond_1
    return v4

    .line 1487
    :cond_2
    return v3
.end method

.method public static overlapUPA(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1493
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-result-object v0

    .line 1494
    if-nez v0, :cond_1

    .line 1497
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1495
    :cond_1
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1496
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1500
    return v3
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z

    move-result v0

    return v0
.end method

.method private static particleValidRestriction(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Z)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v7, -0x2

    const/4 v6, -0x2

    .line 619
    const/4 v13, 0x0

    .line 623
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 626
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 638
    :cond_1
    move-object/from16 v0, p0

    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x3

    .line 642
    if-eq v1, v3, :cond_6

    move v4, v1

    move-object v5, v2

    .line 662
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 663
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 668
    if-nez p1, :cond_9

    :cond_2
    move v9, v6

    move v8, v7

    move-object/from16 v10, p1

    move-object v7, v5

    .line 698
    :goto_1
    move-object/from16 v0, p2

    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v5, 0x3

    .line 702
    if-eq v1, v5, :cond_d

    move-object v12, v11

    move v11, v1

    .line 722
    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    .line 723
    move-object/from16 v0, p2

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    .line 725
    if-nez p3, :cond_10

    :cond_3
    move v1, v11

    move v15, v13

    move-object/from16 v14, p3

    move-object v11, v12

    .line 756
    :goto_3
    sparse-switch v4, :sswitch_data_0

    .line 988
    return v15

    .line 623
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->emptiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "cos-particle-restrict.a"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 626
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "cos-particle-restrict.b"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 643
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 648
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v2

    .line 649
    move-object/from16 v0, p0

    if-ne v2, v0, :cond_7

    .line 659
    :goto_4
    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v2

    move v4, v1

    move-object v5, v2

    goto :goto_0

    .line 652
    :cond_7
    iget-short v1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v3, 0x3

    .line 653
    if-eq v1, v3, :cond_8

    move-object/from16 p0, v2

    goto :goto_4

    .line 654
    :cond_8
    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move-object/from16 p0, v2

    goto :goto_4

    :cond_9
    const/4 v1, 0x1

    .line 668
    if-ne v4, v1, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 671
    iget-short v8, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v9, 0x1

    if-eq v8, v9, :cond_a

    move v9, v6

    move v8, v7

    move-object/from16 v10, p1

    move-object v7, v5

    goto :goto_1

    .line 675
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v8

    .line 676
    array-length v9, v8

    if-gtz v9, :cond_b

    move v9, v6

    move v8, v7

    move-object/from16 v10, p1

    move-object v7, v5

    goto/16 :goto_1

    .line 679
    :cond_b
    const/16 v5, 0x65

    .line 684
    new-instance v7, Ljava/util/Vector;

    array-length v4, v8

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v7, v4}, Ljava/util/Vector;-><init>(I)V

    const/4 v4, 0x0

    .line 685
    :goto_5
    array-length v6, v8

    if-ge v4, v6, :cond_c

    .line 686
    aget-object v6, v8, v4

    invoke-static {v7, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 685
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 688
    :cond_c
    invoke-static {v7, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 689
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 p1, 0x0

    move v4, v5

    move v9, v3

    move v8, v2

    move-object/from16 v10, p1

    .line 693
    goto/16 :goto_1

    .line 703
    :cond_d
    move-object/from16 v0, p2

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    .line 708
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->getNonUnaryGroup(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v5

    .line 709
    move-object/from16 v0, p2

    if-ne v5, v0, :cond_e

    .line 719
    :goto_6
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;

    move-result-object v5

    move v11, v1

    move-object v12, v5

    goto/16 :goto_2

    .line 712
    :cond_e
    iget-short v1, v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v6, 0x3

    .line 713
    if-eq v1, v6, :cond_f

    move-object/from16 p2, v5

    goto :goto_6

    .line 714
    :cond_f
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    move-object/from16 p2, v5

    goto :goto_6

    :cond_10
    const/4 v1, 0x1

    .line 725
    if-ne v11, v1, :cond_3

    .line 726
    move-object/from16 v0, p2

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 728
    iget-short v14, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fScope:S

    const/4 v15, 0x1

    if-eq v14, v15, :cond_11

    move v1, v11

    move v15, v13

    move-object/from16 v14, p3

    move-object v11, v12

    goto/16 :goto_3

    .line 732
    :cond_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v14

    .line 733
    array-length v15, v14

    if-gtz v15, :cond_12

    move v1, v11

    move v15, v13

    move-object/from16 v14, p3

    move-object v11, v12

    goto/16 :goto_3

    .line 735
    :cond_12
    const/16 v12, 0x65

    .line 737
    new-instance v13, Ljava/util/Vector;

    array-length v11, v14

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v13, v11}, Ljava/util/Vector;-><init>(I)V

    const/4 v11, 0x0

    .line 738
    :goto_7
    array-length v15, v14

    if-ge v11, v15, :cond_13

    .line 739
    aget-object v15, v14, v11

    invoke-static {v13, v15}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 738
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 741
    :cond_13
    invoke-static {v13, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->addElementToParticleVector(Ljava/util/Vector;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    .line 742
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ELEMENT_PARTICLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v13, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 p3, 0x0

    .line 748
    const/4 v1, 0x1

    move v15, v1

    move-object v11, v13

    move-object/from16 v14, p3

    move v1, v12

    goto/16 :goto_3

    .line 759
    :sswitch_0
    sparse-switch v1, :sswitch_data_1

    .line 805
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "Internal-Error"

    const/4 v3, 0x1

    .line 806
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "in particleValidRestriction"

    aput-object v5, v3, v4

    .line 805
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 764
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 765
    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 764
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNameAndTypeOK(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSElementDecl;II)V

    .line 766
    return v15

    .line 772
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    .line 773
    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move/from16 v7, p4

    .line 772
    invoke-static/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSCompat(Lmf/org/apache/xerces/impl/xs/XSElementDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;IIZ)V

    .line 775
    return v15

    .line 783
    :sswitch_3
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 784
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    move v12, v5

    move v13, v6

    .line 786
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 788
    return v15

    .line 795
    :sswitch_4
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 796
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x1

    const/4 v9, 0x1

    move v12, v5

    move v13, v6

    .line 798
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 800
    return v15

    .line 813
    :sswitch_5
    sparse-switch v1, :sswitch_data_2

    .line 834
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "Internal-Error"

    const/4 v3, 0x1

    .line 835
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "in particleValidRestriction"

    aput-object v5, v3, v4

    .line 834
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 818
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 819
    move-object/from16 v0, p2

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 818
    invoke-static/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSSubset(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;IILmf/org/apache/xerces/impl/xs/XSWildcardDecl;II)V

    .line 820
    return v15

    .line 828
    :sswitch_7
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "cos-particle-restrict.2"

    const/4 v3, 0x1

    .line 829
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "any:choice,sequence,all,elt"

    aput-object v5, v3, v4

    .line 828
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 842
    :sswitch_8
    sparse-switch v1, :sswitch_data_3

    .line 878
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "Internal-Error"

    const/4 v3, 0x1

    .line 879
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "in particleValidRestriction"

    aput-object v5, v3, v4

    .line 878
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_9
    const/4 v1, -0x2

    .line 847
    if-eq v8, v1, :cond_14

    :goto_8
    const/4 v1, -0x2

    .line 849
    if-eq v9, v1, :cond_15

    :goto_9
    move-object/from16 v11, p2

    move v12, v5

    move v13, v6

    move/from16 v14, p4

    .line 852
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    .line 858
    return v15

    .line 848
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v8

    goto :goto_8

    .line 850
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v9

    goto :goto_9

    :sswitch_a
    move v8, v2

    move v9, v3

    move v12, v5

    move v13, v6

    .line 863
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 865
    return v15

    .line 872
    :sswitch_b
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "cos-particle-restrict.2"

    const/4 v3, 0x1

    .line 873
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "all:choice,sequence,elt"

    aput-object v5, v3, v4

    .line 872
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 886
    :sswitch_c
    sparse-switch v1, :sswitch_data_4

    .line 921
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "Internal-Error"

    const/4 v3, 0x1

    .line 922
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "in particleValidRestriction"

    aput-object v5, v3, v4

    .line 921
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_d
    const/4 v1, -0x2

    .line 891
    if-eq v8, v1, :cond_16

    :goto_a
    const/4 v1, -0x2

    .line 893
    if-eq v9, v1, :cond_17

    :goto_b
    move-object/from16 v11, p2

    move v12, v5

    move v13, v6

    move/from16 v14, p4

    .line 896
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    .line 901
    return v15

    .line 892
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v8

    goto :goto_a

    .line 894
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v9

    goto :goto_b

    :sswitch_e
    move v8, v2

    move v9, v3

    move v12, v5

    move v13, v6

    .line 906
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseLax(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 908
    return v15

    .line 915
    :sswitch_f
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "cos-particle-restrict.2"

    const/4 v3, 0x1

    .line 916
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "choice:all,sequence,elt"

    aput-object v5, v3, v4

    .line 915
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 930
    :sswitch_10
    sparse-switch v1, :sswitch_data_5

    .line 980
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "Internal-Error"

    const/4 v3, 0x1

    .line 981
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "in particleValidRestriction"

    aput-object v5, v3, v4

    .line 980
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_11
    const/4 v1, -0x2

    .line 935
    if-eq v8, v1, :cond_18

    :goto_c
    const/4 v1, -0x2

    .line 937
    if-eq v9, v1, :cond_19

    :goto_d
    move-object/from16 v11, p2

    move v12, v5

    move v13, v6

    move/from16 v14, p4

    .line 940
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkNSRecurseCheckCardinality(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;IIZ)V

    .line 945
    return v15

    .line 936
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->minEffectiveTotalRange()I

    move-result v8

    goto :goto_c

    .line 938
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->maxEffectiveTotalRange()I

    move-result v9

    goto :goto_d

    :sswitch_12
    move v8, v2

    move v9, v3

    move v12, v5

    move v13, v6

    .line 950
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurseUnordered(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 952
    return v15

    :sswitch_13
    move v8, v2

    move v9, v3

    move v12, v5

    move v13, v6

    .line 957
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkRecurse(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 959
    return v15

    .line 964
    :sswitch_14
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int v8, v2, v1

    const/4 v1, -0x1

    .line 965
    if-eq v3, v1, :cond_1a

    .line 966
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int v9, v3, v1

    :goto_e
    move v12, v5

    move v13, v6

    .line 967
    invoke-static/range {v7 .. v14}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkMapAndSum(Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Ljava/util/Vector;IILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)V

    .line 969
    return v15

    :cond_1a
    move v9, v3

    .line 966
    goto :goto_e

    .line 974
    :sswitch_15
    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string/jumbo v2, "cos-particle-restrict.2"

    const/4 v3, 0x1

    .line 975
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "seq:elt"

    aput-object v5, v3, v4

    .line 974
    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x65 -> :sswitch_c
        0x66 -> :sswitch_10
        0x67 -> :sswitch_8
    .end sparse-switch

    .line 759
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_4
    .end sparse-switch

    .line 813
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x65 -> :sswitch_7
        0x66 -> :sswitch_7
        0x67 -> :sswitch_7
    .end sparse-switch

    .line 842
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_b
        0x2 -> :sswitch_9
        0x65 -> :sswitch_b
        0x66 -> :sswitch_b
        0x67 -> :sswitch_a
    .end sparse-switch

    .line 886
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_d
        0x65 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_f
    .end sparse-switch

    .line 930
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_11
        0x65 -> :sswitch_14
        0x66 -> :sswitch_13
        0x67 -> :sswitch_12
    .end sparse-switch
.end method

.method private static removePointlessChildren(Lmf/org/apache/xerces/impl/xs/XSParticleDecl;)Ljava/util/Vector;
    .locals 5

    .prologue
    .line 1015
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1017
    return-object v0

    .line 1016
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1019
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1021
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    const/4 v1, 0x0

    .line 1022
    :goto_0
    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    if-ge v1, v3, :cond_2

    .line 1023
    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    aget-object v4, v4, v1

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->gatherChildren(ILmf/org/apache/xerces/impl/xs/XSParticleDecl;Ljava/util/Vector;)V

    .line 1022
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    :cond_2
    return-object v2
.end method

.method static reportSchemaError(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 338
    if-nez p1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/TR/xml-schema-1"

    .line 343
    invoke-virtual {p0, v0, p2, p3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 346
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 339
    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method
