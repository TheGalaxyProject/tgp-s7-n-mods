.class public Lmf/org/apache/xerces/dom/DeferredElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "DeferredElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 71
    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncChildren(Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 156
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    .line 157
    return-void
.end method

.method protected final synchronizeData()V
    .locals 10

    .prologue
    const/16 v9, 0x3a

    const/4 v8, -0x1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncData(Z)V

    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    .line 100
    iget-boolean v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 101
    iput-boolean v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 103
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 107
    if-ltz v1, :cond_1

    .line 111
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    .line 114
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->namespaceURI:Ljava/lang/String;

    .line 115
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    .line 118
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->setupDefaultAttributes()V

    .line 119
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    .line 120
    if-ne v1, v8, :cond_2

    .line 143
    :cond_0
    iput-boolean v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 145
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    move v3, v1

    .line 124
    :goto_1
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 128
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 136
    :cond_3
    :goto_2
    invoke-interface {v5, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v1, v2

    .line 138
    :goto_3
    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    .line 139
    if-eq v2, v8, :cond_0

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 128
    :cond_4
    if-eqz v2, :cond_6

    .line 132
    :cond_5
    const/4 v2, 0x1

    .line 133
    invoke-interface {v5, v1}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move v1, v2

    .line 134
    goto :goto_3

    .line 129
    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 130
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v6, v7, :cond_3

    .line 131
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_5

    goto :goto_2
.end method
