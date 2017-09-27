.class public Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;
.super Ljava/lang/Object;
.source "XSAttributeUseImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSAttributeUse;


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field public fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field public fConstraintType:S

.field public fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field public fUse:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 45
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 47
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 49
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 51
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 40
    return-void
.end method


# virtual methods
.method public getActualVC()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 129
    goto :goto_0
.end method

.method public getActualVCType()S
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    .line 134
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2d

    .line 135
    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getAttrDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    return-object v0
.end method

.method public getConstraintType()S
    .locals 1

    .prologue
    .line 106
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    return v0
.end method

.method public getConstraintValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 116
    goto :goto_0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 141
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    return-object v0
.end method

.method public getRequired()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 91
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x4

    return v0
.end method

.method public getValueConstraintValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 55
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    .line 56
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    .line 57
    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    .line 58
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    .line 59
    return-void
.end method
