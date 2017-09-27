.class public abstract Lmf/org/apache/xerces/dom/CharacterDataImpl;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "CharacterDataImpl.java"


# static fields
.field static final serialVersionUID:J = 0x6e112d3b0d787b76L

.field private static transient singletonNodeList:Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 72
    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    .line 200
    return-void

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 188
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 192
    :cond_1
    return-void

    .line 195
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public deleteData(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    .line 218
    return-void
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    .line 276
    return-void
.end method

.method internalDeleteData(IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 229
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    .line 230
    iget-boolean v0, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 245
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 247
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    if-gtz v0, :cond_4

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    .line 253
    invoke-virtual {v1, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    if-gez p2, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    .line 237
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 232
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 243
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0

    .line 248
    :cond_4
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    add-int v4, p1, p2

    add-int v5, p1, p2

    add-int/2addr v0, v5

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    .line 256
    invoke-static {v0, v1, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v7, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method internalInsertData(ILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 290
    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    .line 295
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 300
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0, v1, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    .line 291
    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 296
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    .line 309
    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 344
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 352
    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    .line 357
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    :goto_0
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 365
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    .line 367
    invoke-virtual {p0, p1, p2, v2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    .line 368
    invoke-virtual {p0, p1, p3, v2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    .line 370
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v2, 0x0

    .line 353
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 358
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    .line 145
    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    .line 99
    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    .line 112
    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1

    .line 119
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    .line 129
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, p0, v1, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 133
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v2, 0x0

    .line 113
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 120
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 412
    if-gez p2, :cond_2

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INDEX_SIZE_ERR"

    const/4 v2, 0x0

    .line 413
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 408
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    goto :goto_0

    .line 412
    :cond_2
    if-ltz p1, :cond_0

    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_0

    .line 417
    add-int v1, p1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 419
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
