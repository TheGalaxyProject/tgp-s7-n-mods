.class public Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;
.super Ljava/lang/Object;
.source "XSAttributeGroupDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;


# static fields
.field private static final INITIAL_SIZE:I = 0x5


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field fAttrUseNum:I

.field protected fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

.field public fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

.field public fIDAttrName:Ljava/lang/String;

.field public fName:Ljava/lang/String;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field public fTargetNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    const/4 v0, 0x5

    .line 52
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 54
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 56
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    .line 65
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 42
    return-void
.end method

.method static final resize([Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 314
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 315
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    return-object v0
.end method


# virtual methods
.method public addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-short v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    .line 90
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    aput-object p1, v0, v1

    .line 92
    return-object v3

    .line 76
    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    return-object v0

    .line 81
    :cond_2
    iget-object v0, p1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->resize([Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;I)[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    goto :goto_1
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 104
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v1, :cond_2

    .line 105
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v1, p1, :cond_1

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v1, p2, :cond_0

    .line 107
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v0, v1, v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 110
    return-object v0
.end method

.method public getAttributeUseNoProhibited(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v1, :cond_2

    .line 115
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v1, p1, :cond_1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    if-ne v1, p2, :cond_0

    .line 117
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v0, v1, v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 121
    return-object v0
.end method

.method public getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUses:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getAttributeWildcard()Lmf/org/apache/xerces/xs/XSWildcard;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x5

    return v0
.end method

.method public removeProhibitedAttrs()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 125
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-eqz v1, :cond_0

    .line 128
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    new-array v3, v1, [Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move v2, v0

    .line 129
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v2, v1, :cond_2

    .line 130
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v2

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 129
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 125
    :cond_0
    return-void

    .line 131
    :cond_1
    add-int/lit8 v1, v0, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v4, v4, v2

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_1

    .line 134
    :cond_2
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 135
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    .line 157
    return-void
.end method

.method public replaceAttributeUse(Lmf/org/apache/xerces/xs/XSAttributeUse;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object p2, v1, v0

    goto :goto_1

    .line 101
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 321
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fName:Ljava/lang/String;

    .line 322
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fTargetNamespace:Ljava/lang/String;

    move v0, v1

    .line 324
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v2, :cond_0

    .line 325
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aput-object v3, v2, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    .line 328
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    .line 329
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 330
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    .line 332
    return-void
.end method

.method setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    .line 398
    return-void
.end method

.method public validRestrictionOf(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)[Ljava/lang/Object;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    move v3, v4

    .line 178
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v3, v0, :cond_e

    .line 180
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v5, v0, v3

    .line 181
    iget-object v6, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 184
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    .line 185
    if-nez v0, :cond_1

    .line 251
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_b

    .line 256
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 190
    :cond_1
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v1

    if-nez v1, :cond_3

    .line 199
    :cond_2
    iget-short v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-eq v1, v10, :cond_0

    .line 203
    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 207
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 208
    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    .line 209
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v8}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v8

    .line 207
    invoke-static {v1, v2, v8}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkSimpleDerivationOk(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    .line 209
    if-eqz v1, :cond_5

    .line 219
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-nez v1, :cond_6

    .line 220
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v1

    .line 221
    :goto_1
    iget-short v2, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    if-nez v2, :cond_7

    .line 222
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v2

    .line 224
    :goto_2
    if-ne v1, v10, :cond_0

    .line 226
    if-ne v2, v10, :cond_8

    .line 232
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v1, :cond_9

    .line 233
    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 234
    :goto_3
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v1, :cond_a

    .line 235
    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 236
    :goto_4
    iget-object v2, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    .line 237
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    iget-object v3, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    .line 238
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v12

    const/4 v0, 0x4

    const-string/jumbo v1, "derivation-ok-restriction.2.1.3.b"

    aput-object v1, v2, v0

    .line 239
    return-object v2

    .line 190
    :cond_3
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getRequired()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x4

    .line 191
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v4

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v0, v1, v11

    .line 192
    iget-short v0, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-eqz v0, :cond_4

    const-string/jumbo v0, "prohibited"

    :goto_5
    aput-object v0, v1, v10

    const-string/jumbo v0, "derivation-ok-restriction.2.1.1"

    .line 193
    aput-object v0, v1, v12

    .line 194
    return-object v1

    :cond_4
    const-string/jumbo v0, "optional"

    goto :goto_5

    :cond_5
    const/4 v0, 0x5

    .line 210
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v1, v0, v11

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    .line 211
    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string/jumbo v2, "derivation-ok-restriction.2.1.2"

    aput-object v2, v0, v1

    .line 212
    return-object v0

    .line 220
    :cond_6
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto/16 :goto_1

    .line 222
    :cond_7
    iget-short v2, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    goto :goto_2

    .line 227
    :cond_8
    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v4

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v1, v0, v11

    const-string/jumbo v1, "derivation-ok-restriction.2.1.3.a"

    .line 228
    aput-object v1, v0, v10

    .line 229
    return-object v0

    .line 233
    :cond_9
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto/16 :goto_3

    .line 235
    :cond_a
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto/16 :goto_4

    .line 252
    :cond_b
    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v4

    iget-object v1, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v1, v0, v11

    const-string/jumbo v1, "derivation-ok-restriction.2.2.a"

    .line 253
    aput-object v1, v0, v10

    .line 254
    return-object v0

    :cond_c
    const/4 v0, 0x4

    .line 257
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v4

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v0, v1, v11

    .line 258
    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    :goto_6
    aput-object v0, v1, v10

    const-string/jumbo v0, "derivation-ok-restriction.2.2.b"

    .line 259
    aput-object v0, v1, v12

    .line 260
    return-object v1

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_6

    :cond_e
    move v0, v4

    .line 270
    :goto_7
    iget v1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttrUseNum:I

    if-ge v0, v1, :cond_11

    .line 272
    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeUses:[Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    aget-object v1, v1, v0

    .line 274
    iget-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-eq v2, v11, :cond_10

    .line 270
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 276
    :cond_10
    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 278
    iget-object v3, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUse(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeUse;

    move-result-object v2

    if-nez v2, :cond_f

    .line 279
    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v4

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v1, v0, v11

    const-string/jumbo v1, "derivation-ok-restriction.3"

    .line 280
    aput-object v1, v0, v10

    .line 281
    return-object v0

    .line 291
    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-nez v0, :cond_13

    .line 309
    :cond_12
    return-object v9

    .line 292
    :cond_13
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    if-eqz v0, :cond_14

    .line 296
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 300
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    .line 301
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 302
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    .line 303
    iget-object v1, p2, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->getProcessContentsAsString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    const-string/jumbo v1, "derivation-ok-restriction.4.3"

    .line 304
    aput-object v1, v0, v12

    .line 305
    return-object v0

    .line 293
    :cond_14
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string/jumbo v1, "derivation-ok-restriction.4.1"

    aput-object v1, v0, v11

    .line 294
    return-object v0

    .line 297
    :cond_15
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v4

    const-string/jumbo v1, "derivation-ok-restriction.4.2"

    aput-object v1, v0, v11

    .line 298
    return-object v0
.end method
