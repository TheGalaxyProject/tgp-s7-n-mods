.class public Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;
.super Lmf/org/apache/xerces/dom/AttrNSImpl;
.source "PSVIAttrNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/AttributePSVI;


# static fields
.field static final serialVersionUID:J = -0x2cfcf82bf1a06b09L


# instance fields
.field protected fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

.field protected fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

.field protected fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

.field protected fSpecified:Z

.field protected fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S

.field protected fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fSpecified:Z

    .line 77
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 80
    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    .line 83
    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidity:S

    .line 86
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 89
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 92
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 70
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fSpecified:Z

    .line 77
    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    .line 80
    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    .line 83
    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidity:S

    .line 86
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 89
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 92
    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v0

    return v0
.end method

.method public getAttributeDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    return-object v0
.end method

.method public getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getIsSchemaSpecified()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fSpecified:Z

    return v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 105
    iget-object v1, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValidationAttempted()S
    .locals 1

    .prologue
    .line 136
    iget-short v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()S
    .locals 1

    .prologue
    .line 147
    iget-short v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidity:S

    return v0
.end method

.method public setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V
    .locals 2

    .prologue
    .line 219
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getAttributeDeclaration()Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    .line 220
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationContext:Ljava/lang/String;

    .line 221
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getValidity()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidity:S

    .line 222
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getValidationAttempted()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValidationAttempted:S

    .line 223
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getErrorCodes()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    .line 224
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getErrorMessages()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    .line 225
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    .line 226
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 227
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getIsSchemaSpecified()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->fSpecified:Z

    .line 228
    return-void
.end method
