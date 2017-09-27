.class public Lmf/org/apache/xerces/dom/CoreDocumentImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "CoreDocumentImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Document;


# static fields
.field private static final kidOK:[I

.field static final serialVersionUID:J


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected allowGrammarAccess:Z

.field protected changes:I

.field protected docElement:Lmf/org/apache/xerces/dom/ElementImpl;

.field protected docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

.field private documentNumber:I

.field transient domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

.field protected encoding:Ljava/lang/String;

.field protected errorChecking:Z

.field transient fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fDocumentURI:Ljava/lang/String;

.field transient fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

.field transient fXPathEvaluator:Ljava/lang/Object;

.field protected identifiers:Ljava/util/Hashtable;

.field private nodeCounter:I

.field private nodeTable:Ljava/util/Map;

.field protected standalone:Z

.field protected userData:Ljava/util/Map;

.field protected version:Ljava/lang/String;

.field private xml11Version:Z

.field protected xmlVersionChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v6, 0x1ba

    const/4 v8, 0x0

    const/16 v0, 0xd

    .line 216
    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 218
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    .line 222
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xb

    .line 223
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 224
    sget-object v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 225
    sget-object v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v5, 0x1

    aput v6, v4, v5

    const/4 v4, 0x5

    .line 224
    aput v6, v3, v4

    const/4 v3, 0x6

    .line 223
    aput v6, v2, v3

    .line 222
    aput v6, v0, v1

    .line 231
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    .line 234
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xa

    .line 235
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 236
    sget-object v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 237
    sget-object v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 238
    sget-object v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    .line 239
    sget-object v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v7, 0xc

    aput v8, v6, v7

    const/4 v6, 0x4

    .line 238
    aput v8, v5, v6

    const/4 v5, 0x3

    .line 237
    aput v8, v4, v5

    const/16 v4, 0x8

    .line 236
    aput v8, v3, v4

    const/4 v3, 0x7

    .line 235
    aput v8, v2, v3

    .line 234
    aput v8, v0, v1

    .line 242
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    .line 254
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;)V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Lmf/org/w3c/dom/DocumentType;Z)V

    .line 269
    return-void
.end method

.method public constructor <init>(Lmf/org/w3c/dom/DocumentType;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    .line 274
    if-nez p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 277
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    iput-object p0, v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 283
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "WRONG_DOCUMENT_ERR"

    .line 279
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 142
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    .line 143
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    .line 146
    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    .line 185
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 197
    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    .line 203
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    .line 207
    iput v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    .line 209
    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    .line 259
    iput-object p0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 260
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    .line 261
    return-void
.end method

.method private importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1532
    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_0

    move-object v3, v1

    .line 1534
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 1535
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NOT_SUPPORTED_ERR"

    .line 1732
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1733
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v6, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 1533
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 1538
    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string/jumbo v1, "XML"

    const-string/jumbo v2, "2.0"

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1540
    if-nez v6, :cond_6

    .line 1541
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v2, v0

    .line 1547
    :goto_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1548
    if-nez v7, :cond_7

    .line 1573
    :cond_2
    if-nez p4, :cond_c

    :cond_3
    :goto_2
    move-object v1, v2

    .line 1737
    :cond_4
    :goto_3
    if-nez v3, :cond_16

    .line 1741
    :goto_4
    if-nez p2, :cond_17

    .line 1749
    :cond_5
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_18

    .line 1752
    :goto_5
    return-object v1

    .line 1540
    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1543
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1544
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 1543
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 1549
    :cond_7
    invoke-interface {v7}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    .line 1550
    :goto_6
    if-ge v4, v8, :cond_2

    .line 1551
    invoke-interface {v7, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 1557
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1558
    :cond_8
    invoke-direct {p0, v0, v5, p3, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/w3c/dom/Attr;

    .line 1563
    if-nez v6, :cond_b

    .line 1565
    :cond_9
    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    .line 1550
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1557
    :cond_a
    if-nez p3, :cond_8

    goto :goto_7

    .line 1564
    :cond_b
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1567
    invoke-interface {v2, v1}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_7

    .line 1575
    :cond_c
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1576
    if-eqz v0, :cond_3

    .line 1577
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v1, :cond_d

    .line 1580
    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1578
    :cond_d
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    goto :goto_8

    .line 1590
    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    const-string/jumbo v1, "XML"

    const-string/jumbo v2, "2.0"

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1599
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    .line 1603
    :goto_9
    instance-of v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;

    if-nez v0, :cond_10

    .line 1620
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object v1, v2

    move p2, v5

    .line 1627
    goto/16 :goto_3

    .line 1591
    :cond_e
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1594
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1595
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 1594
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    goto :goto_9

    .line 1592
    :cond_f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    goto :goto_9

    :cond_10
    move-object v0, p1

    .line 1604
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1605
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-nez v1, :cond_11

    move-object v1, v2

    move p2, v5

    .line 1613
    goto/16 :goto_3

    :cond_11
    move-object v1, v2

    .line 1606
    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1607
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    move-object v1, v2

    move p2, v4

    .line 1609
    goto/16 :goto_3

    .line 1621
    :cond_12
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    move-object v1, v2

    move p2, v4

    .line 1623
    goto/16 :goto_3

    .line 1631
    :pswitch_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v2

    move-object v1, v2

    .line 1632
    goto/16 :goto_3

    .line 1636
    :pswitch_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v2

    move-object v1, v2

    .line 1637
    goto/16 :goto_3

    .line 1641
    :pswitch_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v2

    move-object v1, v2

    move p2, v4

    .line 1645
    goto/16 :goto_3

    :pswitch_6
    move-object v0, p1

    .line 1649
    check-cast v0, Lmf/org/w3c/dom/Entity;

    .line 1651
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/EntityImpl;

    .line 1652
    invoke-interface {v0}, Lmf/org/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    .line 1653
    invoke-interface {v0}, Lmf/org/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    .line 1654
    invoke-interface {v0}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/EntityImpl;->isReadOnly(Z)V

    goto/16 :goto_3

    .line 1663
    :pswitch_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1664
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 1663
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v2

    move-object v1, v2

    .line 1665
    goto/16 :goto_3

    .line 1669
    :pswitch_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v2

    move-object v1, v2

    .line 1670
    goto/16 :goto_3

    .line 1676
    :pswitch_9
    if-eqz p3, :cond_14

    move-object v0, p1

    .line 1680
    check-cast v0, Lmf/org/w3c/dom/DocumentType;

    .line 1682
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 1683
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v6

    .line 1682
    invoke-virtual {p0, v1, v2, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v1

    .line 1681
    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 1685
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    .line 1687
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1688
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1689
    if-nez v6, :cond_15

    .line 1695
    :cond_13
    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1696
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1697
    if-eqz v0, :cond_4

    .line 1698
    :goto_a
    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 1699
    invoke-interface {v0, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-direct {p0, v6, v5, v5, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v2, v6}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1698
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_14
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NOT_SUPPORTED_ERR"

    .line 1677
    invoke-static {v0, v2, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v6, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_15
    move v2, v4

    .line 1690
    :goto_b
    invoke-interface {v6}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    if-ge v2, v8, :cond_13

    .line 1691
    invoke-interface {v6, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v8

    invoke-direct {p0, v8, v5, v5, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v7, v8}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1690
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1714
    :pswitch_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;

    move-result-object v2

    move-object v1, v2

    .line 1716
    goto/16 :goto_3

    :pswitch_b
    move-object v0, p1

    .line 1720
    check-cast v0, Lmf/org/w3c/dom/Notation;

    .line 1722
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NotationImpl;

    .line 1723
    invoke-interface {v0}, Lmf/org/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    .line 1724
    invoke-interface {v0}, Lmf/org/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1738
    :cond_16
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v1, v0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto/16 :goto_4

    .line 1742
    :cond_17
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1743
    :goto_c
    if-eqz v0, :cond_5

    .line 1745
    invoke-direct {p0, v0, v5, p3, p4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1744
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    :cond_18
    move-object v0, v1

    .line 1750
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v5, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto/16 :goto_5

    .line 1535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static final isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2237
    if-eqz p1, :cond_2

    .line 2240
    if-eqz p2, :cond_3

    .line 2245
    if-nez p0, :cond_6

    .line 2246
    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    .line 2249
    :cond_1
    :goto_1
    return v0

    .line 2237
    :cond_2
    return v1

    .line 2241
    :cond_3
    if-nez p0, :cond_5

    .line 2242
    :cond_4
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    move v0, v1

    .line 2241
    goto :goto_1

    :cond_5
    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 2245
    :cond_6
    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public static final isXMLName(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2217
    if-eqz p0, :cond_0

    .line 2220
    if-eqz p1, :cond_1

    .line 2223
    invoke-static {p0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2218
    :cond_0
    return v0

    .line 2221
    :cond_1
    invoke-static {p0}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 2781
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2782
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2785
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 2788
    :goto_1
    return-void

    .line 2783
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    goto :goto_0

    .line 2786
    :cond_1
    new-instance v0, Ljava/util/WeakHashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    goto :goto_1
.end method

.method private replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;
    .locals 5

    .prologue
    .line 1091
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    .line 1094
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1097
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v2

    .line 1100
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1101
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1102
    if-nez v3, :cond_0

    .line 1106
    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1107
    :goto_1
    if-eqz v1, :cond_1

    .line 1108
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/dom/ElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1109
    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementNSImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1110
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .line 1103
    :cond_0
    invoke-interface {v3, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0

    .line 1113
    :cond_1
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ElementNSImpl;->moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/ElementImpl;)V

    .line 1116
    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1119
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1123
    if-nez v3, :cond_2

    .line 1126
    :goto_2
    return-object v0

    .line 1124
    :cond_2
    invoke-interface {v3, v0, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2797
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2798
    iget-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2800
    if-nez v1, :cond_0

    .line 2803
    :goto_0
    if-nez v2, :cond_1

    .line 2806
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2811
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2812
    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2814
    return-void

    .line 2801
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2807
    :catchall_0
    move-exception v0

    .line 2811
    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2812
    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 2813
    throw v0

    .line 2804
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 1255
    return-void
.end method

.method protected addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0

    .prologue
    .line 2643
    return-void
.end method

.method public adoptNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1767
    :try_start_0
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1775
    if-eqz p1, :cond_2

    .line 1778
    if-nez p1, :cond_3

    .line 1807
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1888
    :pswitch_0
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v2

    .line 1890
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1891
    if-nez v3, :cond_10

    .line 1895
    :goto_1
    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1896
    if-nez v2, :cond_11

    .line 1903
    :cond_1
    :goto_2
    if-nez v2, :cond_12

    .line 1906
    :goto_3
    return-object v1

    .line 1768
    :catch_0
    move-exception v1

    .line 1770
    return-object v5

    .line 1776
    :cond_2
    return-object v5

    .line 1778
    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1780
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v2

    .line 1781
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v3

    .line 1784
    if-ne v2, v3, :cond_4

    .line 1801
    instance-of v2, v3, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v2, :cond_0

    .line 1803
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    goto :goto_0

    .line 1786
    :cond_4
    instance-of v4, v2, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    if-nez v4, :cond_7

    .line 1791
    :cond_5
    instance-of v2, v2, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-nez v2, :cond_8

    .line 1797
    :cond_6
    return-object v5

    .line 1787
    :cond_7
    instance-of v4, v3, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v4, :cond_5

    .line 1789
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    goto :goto_0

    .line 1792
    :cond_8
    instance-of v2, v3, Lmf/org/apache/xerces/dom/DOMImplementationImpl;

    if-eqz v2, :cond_6

    goto :goto_0

    :pswitch_1
    move-object v2, v1

    .line 1809
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1811
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1816
    :goto_4
    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    .line 1817
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v3

    .line 1820
    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/dom/AttrImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1821
    if-nez v3, :cond_a

    move-object v2, v3

    goto :goto_2

    .line 1813
    :cond_9
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Element;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_4

    .line 1822
    :cond_a
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object v2, v3

    .line 1823
    goto :goto_2

    :pswitch_2
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    .line 1829
    invoke-static {v1, v2, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1830
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :pswitch_3
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NOT_SUPPORTED_ERR"

    .line 1837
    invoke-static {v1, v2, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1838
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    .line 1841
    :pswitch_4
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v2

    .line 1843
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1844
    if-nez v3, :cond_b

    .line 1849
    :goto_5
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1850
    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/NodeImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_5

    .line 1845
    :cond_b
    invoke-interface {v3, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_5

    .line 1853
    :cond_c
    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1854
    if-nez v2, :cond_d

    .line 1857
    :goto_6
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v3, :cond_1

    .line 1860
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1861
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1862
    if-eqz v3, :cond_1

    .line 1865
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1866
    :goto_7
    if-eqz v3, :cond_1

    .line 1867
    invoke-interface {v3, v6}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v4

    .line 1868
    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1866
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_7

    .line 1855
    :cond_d
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_6

    .line 1873
    :pswitch_5
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v3

    .line 1875
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1876
    if-nez v2, :cond_e

    .line 1880
    :goto_8
    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    .line 1881
    if-nez v3, :cond_f

    :goto_9
    move-object v2, v1

    .line 1884
    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    move-object v2, v3

    .line 1885
    goto/16 :goto_2

    .line 1877
    :cond_e
    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_8

    .line 1882
    :cond_f
    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_9

    .line 1892
    :cond_10
    invoke-interface {v3, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_1

    .line 1897
    :cond_11
    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto/16 :goto_2

    .line 1904
    :cond_12
    const/4 v3, 0x5

    invoke-virtual {p0, p1, v5, v3, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto/16 :goto_3

    .line 1807
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V
    .locals 2

    .prologue
    .line 2440
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2444
    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_1

    .line 2451
    :goto_0
    return-void

    .line 2441
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 2445
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v0

    .line 2446
    if-nez v0, :cond_3

    .line 2447
    :cond_2
    return-void

    .line 2446
    :cond_3
    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2449
    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V

    goto :goto_0
.end method

.method callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;SLjava/util/Hashtable;)V
    .locals 7

    .prologue
    .line 2461
    if-nez p4, :cond_1

    .line 2462
    :cond_0
    return-void

    .line 2461
    :cond_1
    invoke-virtual {p4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2464
    invoke-virtual {p4}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 2465
    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2466
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2467
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2469
    iget-object v0, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    if-eqz v0, :cond_2

    .line 2470
    iget-object v0, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lmf/org/w3c/dom/UserDataHandler;

    iget-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move v1, p3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lmf/org/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    goto :goto_0

    .line 2473
    :cond_3
    return-void
.end method

.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x1

    return v0
.end method

.method protected changed()V
    .locals 1

    .prologue
    .line 2271
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    .line 2272
    return-void
.end method

.method protected changes()I
    .locals 1

    .prologue
    .line 2278
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes:I

    return v0
.end method

.method protected final checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x0

    .line 2531
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 2562
    :cond_0
    return-void

    .line 2532
    :cond_1
    if-eqz p2, :cond_4

    const-string/jumbo v0, "xml"

    .line 2540
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const-string/jumbo v0, "xmlns"

    .line 2550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    const-string/jumbo v0, "xmlns"

    .line 2552
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2553
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NAMESPACE_ERR"

    .line 2555
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2559
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NAMESPACE_ERR"

    .line 2534
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2538
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 2541
    :cond_5
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NAMESPACE_ERR"

    .line 2543
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2547
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 2551
    :cond_6
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method protected final checkNamespaceWF(Ljava/lang/String;II)V
    .locals 3

    .prologue
    .line 2514
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    .line 2520
    if-nez p2, :cond_2

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NAMESPACE_ERR"

    const/4 v2, 0x0

    .line 2522
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2526
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xe

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 2515
    :cond_1
    return-void

    .line 2520
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p2, v0, :cond_0

    if-ne p3, p2, :cond_0

    .line 2528
    return-void
.end method

.method protected final checkQName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2572
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v2, :cond_2

    .line 2578
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    if-eqz v2, :cond_3

    .line 2583
    if-nez p1, :cond_6

    .line 2584
    :cond_0
    invoke-static {p2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    .line 2587
    :cond_1
    :goto_1
    if-eqz v0, :cond_7

    .line 2596
    return-void

    .line 2573
    :cond_2
    return-void

    .line 2579
    :cond_3
    if-nez p1, :cond_5

    .line 2580
    :cond_4
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    move v0, v1

    .line 2579
    goto :goto_1

    :cond_5
    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 2583
    :cond_6
    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    .line 2590
    invoke-static {v0, v1, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2594
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method protected final clearIdentifiers()V
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 1980
    :goto_0
    return-void

    .line 1978
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2199
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 2200
    iput-object v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    .line 2201
    iput-object v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    .line 2202
    return-object v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;-><init>()V

    .line 319
    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 320
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V

    .line 322
    return-object v0
.end method

.method protected cloneNode(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    :goto_0
    if-nez p2, :cond_2

    .line 360
    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    iput-boolean v0, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    .line 361
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    iput-boolean v0, p1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 363
    return-void

    .line 334
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v1, :cond_3

    .line 352
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_2
    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p1, v1, v4, v4, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 353
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2

    .line 341
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 343
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 347
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    .prologue
    .line 2653
    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 558
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 566
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 558
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 560
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 564
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2148
    new-instance v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2169
    new-instance v0, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lmf/org/apache/xerces/dom/CDATASectionImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/CDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;
    .locals 1

    .prologue
    .line 590
    new-instance v0, Lmf/org/apache/xerces/dom/CommentImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/CommentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public createDocumentFragment()Lmf/org/w3c/dom/DocumentFragment;
    .locals 1

    .prologue
    .line 598
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/DocumentFragmentImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1380
    new-instance v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 616
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 620
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 616
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 617
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 618
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createElementDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementDefinitionImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1438
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 1442
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 1438
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 1439
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1440
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2105
    new-instance v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 2125
    new-instance v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1400
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 1404
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/EntityImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 1400
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 1401
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 637
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 641
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 637
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 638
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1423
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 1427
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/NotationImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0

    .line 1423
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 1424
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 662
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 666
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 662
    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "INVALID_CHARACTER_ERR"

    const/4 v2, 0x0

    .line 663
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 664
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 1

    .prologue
    .line 677
    new-instance v0, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0

    .prologue
    .line 2674
    return-void
.end method

.method protected dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z
    .locals 1

    .prologue
    .line 2657
    const/4 v0, 0x0

    return v0
.end method

.method freeNodeListCache(Lmf/org/apache/xerces/dom/NodeListCache;)V
    .locals 1

    .prologue
    .line 2309
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v0, p1, Lmf/org/apache/xerces/dom/NodeListCache;->next:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2310
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2311
    return-void
.end method

.method public getAsync()Z
    .locals 1

    .prologue
    .line 1224
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1186
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1195
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-object v0

    .line 1186
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1192
    return-object v2
.end method

.method public getDoctype()Lmf/org/w3c/dom/DocumentType;
    .locals 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    return-object v0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    return-object v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    goto :goto_0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    if-eqz v0, :cond_0

    .line 1173
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    return-object v0

    .line 1171
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    goto :goto_0
.end method

.method public getElementById(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    .line 1970
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getIdentifier(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 721
    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 2190
    new-instance v0, Lmf/org/apache/xerces/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/DeepNodeListImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 847
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorChecking()Z
    .locals 1

    .prologue
    .line 776
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "+XPath"

    .line 505
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 536
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 498
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 506
    :cond_2
    if-eqz v0, :cond_4

    .line 510
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    if-nez v0, :cond_5

    :try_start_0
    const-string/jumbo v0, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    .line 517
    invoke-static {}, Lmf/org/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 515
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    .line 519
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lmf/org/w3c/dom/Document;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 523
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 524
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 525
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 526
    if-nez v3, :cond_6

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "3.0"

    .line 506
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 511
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    return-object v0

    :cond_6
    const/4 v0, 0x1

    .line 527
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 531
    :cond_7
    return-object v5

    :catch_0
    move-exception v0

    .line 533
    return-object v5
.end method

.method public getIdentifier(Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2019
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2023
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 2026
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 2027
    if-nez v0, :cond_3

    .line 2037
    :cond_0
    return-object v2

    .line 2020
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    goto :goto_0

    .line 2024
    :cond_2
    return-object v2

    .line 2029
    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 2030
    :goto_1
    if-eqz v1, :cond_0

    .line 2031
    if-eq v1, p0, :cond_4

    .line 2034
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .line 2032
    :cond_4
    return-object v0
.end method

.method public getIdentifiers()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 2064
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2068
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 2072
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 2065
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    goto :goto_0

    .line 2069
    :cond_1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    goto :goto_1
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 733
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-object v0
.end method

.method getMutationEvents()Z
    .locals 1

    .prologue
    .line 1355
    const/4 v0, 0x0

    return v0
.end method

.method getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2287
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v0, :cond_0

    .line 2290
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2291
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, v1, Lmf/org/apache/xerces/dom/NodeListCache;->next:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lmf/org/apache/xerces/dom/NodeListCache;

    .line 2292
    iput-object v2, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 2293
    iput v3, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    .line 2294
    iput v3, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    .line 2296
    iget-object v1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    if-nez v1, :cond_1

    .line 2299
    :goto_0
    iput-object p1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    .line 2301
    return-object v0

    .line 2288
    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-direct {v0, p1}, Lmf/org/apache/xerces/dom/NodeListCache;-><init>(Lmf/org/apache/xerces/dom/ParentNode;)V

    return-object v0

    .line 2297
    :cond_1
    iget-object v1, v0, Lmf/org/apache/xerces/dom/NodeListCache;->fOwner:Lmf/org/apache/xerces/dom/ParentNode;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "#document"

    .line 304
    return-object v0
.end method

.method protected getNodeNumber()I
    .locals 1

    .prologue
    .line 1452
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    if-eqz v0, :cond_0

    .line 1457
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    return v0

    .line 1454
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    .line 1455
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocumentNumber()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    goto :goto_0
.end method

.method protected getNodeNumber(Lmf/org/w3c/dom/Node;)I
    .locals 3

    .prologue
    .line 1472
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1479
    if-eqz v0, :cond_1

    .line 1484
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1486
    :goto_0
    return v0

    .line 1473
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    .line 1474
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    .line 1475
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1480
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    .line 1481
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    .prologue
    .line 299
    const/16 v0, 0x9

    return v0
.end method

.method public final getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 294
    return-object v0
.end method

.method public getStandalone()Z
    .locals 1

    .prologue
    .line 947
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v0

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 481
    return-object v0
.end method

.method protected getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    const-string/jumbo v0, "XERCES1DOMUSERDATA"

    .line 2633
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2381
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2384
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 2385
    if-eqz v0, :cond_1

    .line 2388
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2389
    if-nez v0, :cond_2

    .line 2393
    return-object v1

    .line 2382
    :cond_0
    return-object v1

    .line 2386
    :cond_1
    return-object v1

    .line 2390
    :cond_2
    check-cast v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2391
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object v0
.end method

.method protected getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2397
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2400
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 2401
    if-eqz v0, :cond_1

    .line 2404
    return-object v0

    .line 2398
    :cond_0
    return-object v1

    .line 2402
    :cond_1
    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 1

    .prologue
    .line 938
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "1.0"

    goto :goto_0
.end method

.method public importNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1500
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->importNode(Lmf/org/w3c/dom/Node;ZZLjava/util/HashMap;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 383
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 384
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2

    .line 395
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 399
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 402
    if-eq v1, v3, :cond_7

    .line 405
    if-eq v1, v4, :cond_8

    .line 409
    :goto_1
    return-object p1

    .line 385
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    :goto_2
    if-eq v1, v3, :cond_5

    .line 389
    :cond_3
    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v0, :cond_0

    :goto_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "HIERARCHY_REQUEST_ERR"

    .line 390
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 391
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 386
    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    goto :goto_2

    .line 388
    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_3

    goto :goto_3

    .line 396
    :cond_6
    instance-of v0, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 397
    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p0, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    goto :goto_0

    :cond_7
    move-object v0, p1

    .line 403
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_1

    :cond_8
    move-object v0, p1

    .line 406
    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_1
.end method

.method insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    .prologue
    .line 2705
    return-void
.end method

.method insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0

    .prologue
    .line 2681
    return-void
.end method

.method insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    .prologue
    .line 2699
    return-void
.end method

.method protected isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2260
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    if-nez v0, :cond_1

    .line 2264
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    aget v0, v0, v1

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    shl-int v1, v3, v1

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    return v2

    .line 2261
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2262
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    return v3

    .line 2264
    :cond_3
    return v3
.end method

.method isNormalizeDocRequired()Z
    .locals 1

    .prologue
    .line 2609
    const/4 v0, 0x1

    return v0
.end method

.method isXML11Version()Z
    .locals 1

    .prologue
    .line 2603
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    return v0
.end method

.method isXMLVersionChanged()Z
    .locals 1

    .prologue
    .line 2615
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x0

    return v0
.end method

.method public loadXML(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x0

    return v0
.end method

.method modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2748
    return-void
.end method

.method modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 2693
    return-void
.end method

.method modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    .prologue
    .line 2687
    return-void
.end method

.method public normalizeDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1136
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1143
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    if-eqz v0, :cond_3

    .line 1147
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    if-eqz v0, :cond_4

    .line 1151
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->reset()V

    .line 1154
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V

    .line 1155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    .line 1158
    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    .line 1159
    return-void

    .line 1136
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalizeDocRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    return-void

    .line 1140
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    goto :goto_0

    .line 1144
    :cond_3
    new-instance v0, Lmf/org/apache/xerces/dom/DOMNormalizer;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lmf/org/apache/xerces/dom/DOMNormalizer;

    goto :goto_1

    .line 1148
    :cond_4
    new-instance v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    goto :goto_2
.end method

.method public putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 1

    .prologue
    .line 1993
    if-eqz p2, :cond_0

    .line 1998
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2002
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 2006
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    return-void

    .line 1994
    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    .line 1995
    return-void

    .line 1999
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    goto :goto_0

    .line 2003
    :cond_2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    goto :goto_1
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 422
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 425
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    .line 426
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    .line 429
    if-eq v0, v1, :cond_1

    .line 433
    :goto_0
    return-object p1

    .line 427
    :cond_0
    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_0

    .line 430
    :cond_1
    iput-object v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method protected removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 0

    .prologue
    .line 2649
    return-void
.end method

.method public removeIdentifier(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2049
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2053
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 2057
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    return-void

    .line 2050
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    goto :goto_0

    .line 2054
    :cond_1
    return-void
.end method

.method removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2413
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2416
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0

    .line 2414
    :cond_0
    return-object v1
.end method

.method removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2760
    return-void
.end method

.method removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    .prologue
    .line 2717
    return-void
.end method

.method removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    .prologue
    .line 2711
    return-void
.end method

.method public renameNode(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x0

    .line 983
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 988
    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    .line 1081
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 983
    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-eq v0, p0, :cond_0

    if-eq p1, p0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "WRONG_DOCUMENT_ERR"

    .line 984
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 986
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v5, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :pswitch_0
    move-object v0, p1

    .line 990
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    .line 991
    instance-of v1, v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-nez v1, :cond_3

    .line 1002
    if-eqz p2, :cond_5

    .line 1008
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;

    move-result-object v0

    .line 1012
    :goto_0
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V

    .line 1013
    return-object v0

    .line 992
    :cond_3
    invoke-virtual {p0, p2, p3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 998
    invoke-direct {p0, v0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lmf/org/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/dom/ElementImpl;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v1, v0

    .line 993
    check-cast v1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v1, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0, v0, v2, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_0

    .line 1002
    :cond_5
    invoke-virtual {p0, v2, p3, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1003
    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/ElementImpl;->rename(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p0, v0, v2, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_0

    :pswitch_1
    move-object v0, p1

    .line 1016
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    .line 1019
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    .line 1020
    if-nez v3, :cond_6

    .line 1023
    :goto_1
    instance-of v1, p1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    if-nez v1, :cond_7

    .line 1034
    if-eqz p2, :cond_9

    .line 1046
    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    .line 1049
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;)V

    .line 1052
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v4

    .line 1055
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1056
    :goto_2
    if-eqz v2, :cond_b

    .line 1057
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1058
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/AttrNSImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 1059
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    .line 1021
    :cond_6
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_1

    :cond_7
    move-object v1, v0

    .line 1024
    check-cast v1, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {v1, p2, p3}, Lmf/org/apache/xerces/dom/AttrNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    if-nez v3, :cond_8

    .line 1031
    :goto_3
    invoke-virtual {p0, v0, v2, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1076
    :goto_4
    check-cast p1, Lmf/org/w3c/dom/Attr;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V

    .line 1078
    return-object v0

    .line 1027
    :cond_8
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_3

    .line 1035
    :cond_9
    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/dom/AttrImpl;->rename(Ljava/lang/String;)V

    .line 1037
    if-nez v3, :cond_a

    .line 1042
    :goto_5
    invoke-virtual {p0, v0, v2, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    goto :goto_4

    .line 1038
    :cond_a
    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_5

    .line 1063
    :cond_b
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V

    .line 1066
    invoke-virtual {p0, v0, v1, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 1069
    if-nez v3, :cond_c

    :goto_6
    move-object v0, v1

    .line 1072
    goto :goto_4

    .line 1070
    :cond_c
    invoke-interface {v3, v1}, Lmf/org/w3c/dom/Element;->setAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    goto :goto_6

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method renamedAttrNode(Lmf/org/w3c/dom/Attr;Lmf/org/w3c/dom/Attr;)V
    .locals 0

    .prologue
    .line 2766
    return-void
.end method

.method renamedElement(Lmf/org/w3c/dom/Element;Lmf/org/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 2772
    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 448
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 453
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_3

    .line 464
    :cond_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 466
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 467
    if-eq v0, v1, :cond_6

    .line 470
    if-eq v0, v2, :cond_7

    .line 473
    :goto_1
    return-object p2

    .line 449
    :cond_2
    instance-of v0, p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 450
    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p0, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    goto :goto_0

    .line 453
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    if-nez v0, :cond_5

    .line 456
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    if-eqz v0, :cond_1

    .line 457
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v1, :cond_1

    .line 458
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v1, :cond_1

    .line 460
    :goto_2
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    .line 462
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 460
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 454
    :cond_5
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v2, :cond_4

    .line 455
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_2

    .line 468
    :cond_6
    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_1

    .line 471
    :cond_7
    check-cast p1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_1
.end method

.method replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2741
    return-void
.end method

.method replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    .prologue
    .line 2729
    return-void
.end method

.method replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V
    .locals 0

    .prologue
    .line 2667
    return-void
.end method

.method replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    .prologue
    .line 2735
    return-void
.end method

.method replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V
    .locals 0

    .prologue
    .line 2723
    return-void
.end method

.method public saveXML(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1329
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_1

    .line 1334
    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/DOMImplementationLS;

    .line 1335
    invoke-interface {v0}, Lmf/org/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lmf/org/w3c/dom/ls/LSSerializer;

    move-result-object v0

    .line 1336
    if-eqz p1, :cond_2

    .line 1339
    :goto_0
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/ls/LSSerializer;->writeToString(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1329
    :cond_1
    if-eqz p1, :cond_0

    .line 1330
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "WRONG_DOCUMENT_ERR"

    .line 1331
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    move-object p1, p0

    .line 1337
    goto :goto_0
.end method

.method public setAsync(Z)V
    .locals 3

    .prologue
    .line 1242
    if-nez p1, :cond_0

    .line 1246
    return-void

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    const/4 v2, 0x0

    .line 1243
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V
    .locals 0

    .prologue
    .line 2754
    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1202
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    .line 1203
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 830
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public setErrorChecking(Z)V
    .locals 0

    .prologue
    .line 762
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 763
    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 810
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    .line 811
    return-void
.end method

.method setMutationEvents(Z)V
    .locals 0

    .prologue
    .line 1348
    return-void
.end method

.method public setStandalone(Z)V
    .locals 0

    .prologue
    .line 929
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    .line 930
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 0

    .prologue
    .line 769
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    .line 770
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2333
    if-eqz p3, :cond_0

    .line 2348
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2354
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 2355
    if-eqz v0, :cond_4

    .line 2360
    :goto_0
    new-instance v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    invoke-direct {v1, p0, p3, p4}, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2361
    if-nez v0, :cond_5

    .line 2365
    return-object v2

    .line 2334
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 2344
    :cond_1
    return-object v2

    .line 2335
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 2336
    if-eqz v0, :cond_1

    .line 2337
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_1

    .line 2339
    check-cast v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2340
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object v0

    .line 2349
    :cond_3
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    .line 2350
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2351
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2356
    :cond_4
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2357
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2362
    :cond_5
    check-cast v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    .line 2363
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object v0
.end method

.method protected setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const-string/jumbo v0, "XERCES1DOMUSERDATA"

    const/4 v1, 0x0

    .line 2625
    invoke-virtual {p0, p1, v0, p2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    .line 2626
    return-void
.end method

.method setUserDataTable(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 1

    .prologue
    .line 2425
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2428
    :goto_0
    if-nez p2, :cond_1

    .line 2431
    :goto_1
    return-void

    .line 2426
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    goto :goto_0

    .line 2429
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    .line 822
    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 920
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    .line 921
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "1.0"

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 874
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 878
    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    .line 880
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "1.1"

    .line 856
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    const/4 v2, 0x0

    .line 870
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 871
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    .line 860
    :cond_2
    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    .line 862
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    .line 863
    iput-object p1, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    goto :goto_0

    .line 875
    :cond_3
    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    goto :goto_1
.end method

.method protected undeferChildren(Lmf/org/w3c/dom/Node;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .line 1918
    :goto_0
    if-eqz v1, :cond_7

    move-object v0, v1

    .line 1920
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1924
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 1925
    if-nez v4, :cond_5

    .line 1933
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1935
    :cond_1
    :goto_2
    if-nez v0, :cond_3

    .line 1937
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1940
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1942
    if-nez v0, :cond_1

    .line 1943
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1945
    if-nez v1, :cond_6

    :cond_2
    move-object v0, v2

    :cond_3
    move-object v1, v0

    .line 1952
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 1921
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_1

    .line 1926
    :cond_5
    invoke-interface {v4}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    move v0, v3

    .line 1927
    :goto_3
    if-ge v0, v5, :cond_0

    .line 1928
    invoke-interface {v4, v0}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lmf/org/w3c/dom/Node;)V

    .line 1927
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1945
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 1954
    :cond_7
    return-void
.end method
