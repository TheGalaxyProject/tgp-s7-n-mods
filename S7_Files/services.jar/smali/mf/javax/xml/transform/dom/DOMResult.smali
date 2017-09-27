.class public Lmf/javax/xml/transform/dom/DOMResult;
.super Ljava/lang/Object;
.source "DOMResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.dom.DOMResult/feature"


# instance fields
.field private nextSibling:Lmf/org/w3c/dom/Node;

.field private node:Lmf/org/w3c/dom/Node;

.field private systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    .line 77
    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 78
    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    .line 98
    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 99
    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 117
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    .line 118
    invoke-virtual {p0, v0}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 119
    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v1, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v1, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v1, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 155
    if-nez p2, :cond_1

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    .line 168
    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 169
    invoke-virtual {p0, v1}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 170
    return-void

    .line 157
    :cond_1
    if-eqz p1, :cond_2

    .line 162
    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    .line 376
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    .line 381
    iput-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 206
    if-nez p2, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p0, p1}, Lmf/javax/xml/transform/dom/DOMResult;->setNode(Lmf/org/w3c/dom/Node;)V

    .line 219
    invoke-virtual {p0, p2}, Lmf/javax/xml/transform/dom/DOMResult;->setNextSibling(Lmf/org/w3c/dom/Node;)V

    .line 220
    invoke-virtual {p0, p3}, Lmf/javax/xml/transform/dom/DOMResult;->setSystemId(Ljava/lang/String;)V

    .line 221
    return-void

    .line 208
    :cond_1
    if-eqz p1, :cond_2

    .line 213
    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getNode()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public setNextSibling(Lmf/org/w3c/dom/Node;)V
    .locals 2

    .prologue
    .line 306
    if-nez p1, :cond_1

    .line 318
    :cond_0
    iput-object p1, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    .line 319
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNode(Lmf/org/w3c/dom/Node;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    iput-object p1, p0, Lmf/javax/xml/transform/dom/DOMResult;->node:Lmf/org/w3c/dom/Node;

    .line 261
    return-void

    .line 250
    :cond_1
    if-eqz p1, :cond_2

    .line 255
    iget-object v0, p0, Lmf/javax/xml/transform/dom/DOMResult;->nextSibling:Lmf/org/w3c/dom/Node;

    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->compareDocumentPosition(Lmf/org/w3c/dom/Node;)S

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is not contained by the node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot create a DOMResult when the nextSibling is contained by the \"null\" node."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lmf/javax/xml/transform/dom/DOMResult;->systemId:Ljava/lang/String;

    .line 345
    return-void
.end method
