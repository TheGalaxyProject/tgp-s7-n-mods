.class public Lmf/org/apache/xerces/dom/EntityImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "EntityImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Entity;


# static fields
.field static final serialVersionUID:J = -0x319fa7a203b69e3fL


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected encoding:Ljava/lang/String;

.field protected inputEncoding:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notationName:Ljava/lang/String;

.field protected publicId:Ljava/lang/String;

.field protected systemId:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 107
    iput-object p2, p0, Lmf/org/apache/xerces/dom/EntityImpl;->name:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->isReadOnly(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lmf/org/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    .line 137
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    goto :goto_1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->inputEncoding:Ljava/lang/String;

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->name:Ljava/lang/String;

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x6

    return v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->notationName:Ljava/lang/String;

    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->publicId:Ljava/lang/String;

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->systemId:Ljava/lang/String;

    return-object v0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->encoding:Ljava/lang/String;

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/EntityImpl;->version:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    .line 336
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->inputEncoding:Ljava/lang/String;

    .line 270
    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setNotationName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->notationName:Ljava/lang/String;

    .line 310
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->publicId:Ljava/lang/String;

    .line 231
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->systemId:Ljava/lang/String;

    .line 296
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->encoding:Ljava/lang/String;

    .line 245
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/EntityImpl;->version:Ljava/lang/String;

    .line 283
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/EntityImpl;->synchronizeData()V

    goto :goto_0
.end method
