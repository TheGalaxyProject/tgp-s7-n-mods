.class public Lmf/org/apache/xerces/impl/xs/XSDDescription;
.super Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;
.source "XSDDescription.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;


# static fields
.field public static final CONTEXT_ATTRIBUTE:S = 0x6s

.field public static final CONTEXT_ELEMENT:S = 0x5s

.field public static final CONTEXT_IMPORT:S = 0x2s

.field public static final CONTEXT_INCLUDE:S = 0x0s

.field public static final CONTEXT_INITIALIZE:S = -0x1s

.field public static final CONTEXT_INSTANCE:S = 0x4s

.field public static final CONTEXT_PREPARSE:S = 0x3s

.field public static final CONTEXT_REDEFINE:S = 0x1s

.field public static final CONTEXT_XSITYPE:S = 0x7s


# instance fields
.field protected fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

.field protected fContextType:S

.field protected fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

.field protected fLocationHints:[Ljava/lang/String;

.field protected fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    instance-of v0, p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v0, :cond_0

    .line 191
    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    .line 192
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 195
    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    return v1

    .line 190
    :cond_0
    return v1

    .line 193
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 195
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public fromInstance()Z
    .locals 2

    .prologue
    .line 176
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 178
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 179
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Lmf/org/apache/xerces/xni/XMLAttributes;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    return-object v0
.end method

.method public getContextType()S
    .locals 1

    .prologue
    .line 118
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    return v0
.end method

.method public getEnclosingElementName()Lmf/org/apache/xerces/xni/QName;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method public getGrammarType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    .line 108
    return-object v0
.end method

.method public getLocationHints()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getTargetNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggeringComponent()Lmf/org/apache/xerces/xni/QName;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;
    .locals 2

    .prologue
    .line 247
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    .line 248
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 249
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fBaseSystemId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fBaseSystemId:Ljava/lang/String;

    .line 250
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    int-to-short v1, v1

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 251
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    .line 252
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fExpandedSystemId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fExpandedSystemId:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLiteralSystemId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLiteralSystemId:Ljava/lang/String;

    .line 254
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 255
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fPublicId:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fPublicId:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    .line 258
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-super {p0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    .line 239
    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 240
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 241
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    .line 242
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    .line 243
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 244
    return-void
.end method

.method public setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    .line 232
    return-void
.end method

.method public setContextType(S)V
    .locals 1

    .prologue
    .line 208
    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    .line 209
    return-void
.end method

.method public setEnclosingElementName(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    .line 228
    return-void
.end method

.method public setLocationHints([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 216
    array-length v0, p1

    .line 217
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    return-void
.end method

.method public setTargetNamespace(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fNamespace:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setTriggeringComponent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    .line 224
    return-void
.end method
