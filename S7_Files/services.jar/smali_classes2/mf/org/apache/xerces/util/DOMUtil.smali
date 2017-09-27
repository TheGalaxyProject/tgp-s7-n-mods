.class public Lmf/org/apache/xerces/util/DOMUtil;
.super Ljava/lang/Object;
.source "DOMUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyInto(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v6

    .line 69
    instance-of v7, v6, Lmf/org/apache/xerces/dom/DocumentImpl;

    move-object v2, p0

    move-object v3, p0

    .line 77
    :goto_0
    if-eqz v2, :cond_5

    .line 81
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    .line 82
    packed-switch v0, :pswitch_data_0

    .line 121
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can\'t copy node type, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :pswitch_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v0

    .line 126
    :goto_1
    invoke-interface {p1, v0}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 129
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v2, v3

    .line 138
    :goto_2
    if-eqz v0, :cond_4

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v0

    goto :goto_1

    .line 92
    :pswitch_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lmf/org/w3c/dom/Document;->createElement(Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v1

    .line 94
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 95
    invoke-interface {v8}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    move v4, v5

    .line 96
    :goto_3
    if-ge v4, v9, :cond_2

    .line 97
    invoke-interface {v8, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    .line 98
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 99
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 100
    invoke-interface {v1, v10, v11}, Lmf/org/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez v7, :cond_1

    .line 96
    :cond_0
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    .line 101
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-interface {v1, v10}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    goto :goto_4

    :cond_2
    move-object v0, v1

    .line 105
    goto :goto_1

    .line 108
    :pswitch_4
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lmf/org/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lmf/org/w3c/dom/EntityReference;

    move-result-object v0

    goto :goto_1

    .line 112
    :pswitch_5
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-interface {v6, v0, v1}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v0

    goto :goto_1

    .line 117
    :pswitch_6
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v3, v2

    move-object p1, v0

    move-object v2, v1

    .line 133
    goto/16 :goto_0

    .line 138
    :cond_4
    if-eq v2, p0, :cond_6

    .line 139
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 140
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 141
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_2

    .line 147
    :cond_5
    return-void

    :cond_6
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static createDOMException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/DOMException;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 846
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    if-nez p1, :cond_1

    :goto_0
    invoke-direct {v1, p0, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    .line 847
    if-nez p1, :cond_2

    .line 854
    :cond_0
    :goto_1
    return-object v1

    .line 846
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_2
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    :try_start_0
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 850
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 861
    new-instance v1, Lmf/org/w3c/dom/ls/LSException;

    if-nez p1, :cond_1

    :goto_0
    invoke-direct {v1, p0, v0}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    .line 862
    if-nez p1, :cond_2

    .line 869
    :cond_0
    :goto_1
    return-object v1

    .line 861
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_2
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    :try_start_0
    # getter for: Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lmf/org/apache/xerces/util/DOMUtil$ThrowableMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 865
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 831
    return-object v0

    .line 829
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getAnnotation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1

    .prologue
    .line 775
    invoke-interface {p0, p1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrNS(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;
    .locals 1

    .prologue
    .line 781
    invoke-interface {p0, p1, p2}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrValue(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 806
    invoke-interface {p0, p1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrValueNS(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 813
    invoke-interface {p0, p1, p2}, Lmf/org/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;
    .locals 4

    .prologue
    .line 786
    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 787
    invoke-interface {v2}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    new-array v3, v0, [Lmf/org/w3c/dom/Attr;

    const/4 v0, 0x0

    move v1, v0

    .line 788
    :goto_0
    invoke-interface {v2}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 789
    invoke-interface {v2, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    aput-object v0, v3, v1

    .line 788
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 790
    :cond_0
    return-object v3
.end method

.method public static getChildText(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 718
    if-eqz p0, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 725
    :goto_0
    if-eqz v0, :cond_3

    .line 726
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    .line 727
    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    .line 730
    if-eq v2, v3, :cond_2

    .line 733
    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 719
    :cond_0
    return-object v0

    .line 728
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 731
    :cond_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getChildText(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 737
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 763
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 154
    :goto_0
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 158
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 162
    :cond_1
    return-object v3
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 371
    :goto_0
    if-eqz v0, :cond_2

    .line 372
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 377
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 381
    :cond_2
    return-object v3
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 634
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 635
    :goto_0
    if-eqz v1, :cond_2

    .line 636
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 643
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 637
    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 638
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    return-object v0

    .line 647
    :cond_2
    return-object v3
.end method

.method public static getFirstChildElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 493
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 494
    :goto_0
    if-eqz v0, :cond_3

    .line 495
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 502
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 496
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 497
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 498
    :cond_2
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 506
    :cond_3
    return-object v5
.end method

.method public static getFirstChildElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 429
    :goto_0
    if-eqz v0, :cond_2

    .line 430
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 437
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 432
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 441
    :cond_2
    return-object v3
.end method

.method public static getFirstChildElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 557
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 558
    :goto_0
    if-eqz v0, :cond_4

    .line 559
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v6, :cond_1

    .line 568
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 560
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 561
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 562
    if-nez v3, :cond_3

    .line 560
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    :cond_3
    aget-object v4, p1, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 563
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 564
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 572
    :cond_4
    return-object v5
.end method

.method public static getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 171
    :goto_0
    if-eqz v0, :cond_2

    .line 172
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 176
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 180
    :cond_2
    return-object v3
.end method

.method public static getFirstVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 189
    :goto_0
    if-eqz v0, :cond_2

    .line 190
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 194
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 198
    :cond_2
    return-object v3
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 208
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 209
    :goto_0
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 213
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 217
    :cond_1
    return-object v3
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 390
    :goto_0
    if-eqz v0, :cond_2

    .line 391
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 396
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 400
    :cond_2
    return-object v3
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 662
    :goto_0
    if-eqz v1, :cond_2

    .line 663
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 670
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 664
    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 665
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    return-object v0

    .line 674
    :cond_2
    return-object v3
.end method

.method public static getLastChildElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 514
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 515
    :goto_0
    if-eqz v0, :cond_3

    .line 516
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 523
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 517
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 518
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 519
    :cond_2
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 527
    :cond_3
    return-object v5
.end method

.method public static getLastChildElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 450
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 451
    :goto_0
    if-eqz v0, :cond_2

    .line 452
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 459
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 463
    :cond_2
    return-object v3
.end method

.method public static getLastChildElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 581
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 582
    :goto_0
    if-eqz v0, :cond_4

    .line 583
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v6, :cond_1

    .line 592
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 584
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 585
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 586
    if-nez v3, :cond_3

    .line 584
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 586
    :cond_3
    aget-object v4, p1, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 587
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 588
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 596
    :cond_4
    return-object v5
.end method

.method public static getLastVisibleChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 226
    :goto_0
    if-eqz v0, :cond_2

    .line 227
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 231
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 235
    :cond_2
    return-object v3
.end method

.method public static getLastVisibleChildElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 246
    :goto_0
    if-eqz v0, :cond_2

    .line 247
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 251
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 255
    :cond_2
    return-object v3
.end method

.method public static getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    .line 751
    if-nez v0, :cond_0

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 743
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 263
    :goto_0
    if-eqz v0, :cond_1

    .line 264
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 267
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 271
    :cond_1
    return-object v3
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 409
    :goto_0
    if-eqz v0, :cond_2

    .line 410
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 415
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 419
    :cond_2
    return-object v3
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 689
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 690
    :goto_0
    if-eqz v1, :cond_2

    .line 691
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 698
    :cond_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 692
    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 693
    invoke-interface {v0}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v0, p2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    return-object v0

    .line 702
    :cond_2
    return-object v3
.end method

.method public static getNextSiblingElement(Lmf/org/w3c/dom/Node;[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 535
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 536
    :goto_0
    if-eqz v0, :cond_3

    .line 537
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 544
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 538
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 539
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 540
    :cond_2
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 548
    :cond_3
    return-object v5
.end method

.method public static getNextSiblingElementNS(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 472
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 473
    :goto_0
    if-eqz v0, :cond_2

    .line 474
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 481
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 485
    :cond_2
    return-object v3
.end method

.method public static getNextSiblingElementNS(Lmf/org/w3c/dom/Node;[[Ljava/lang/String;)Lmf/org/w3c/dom/Element;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 605
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 606
    :goto_0
    if-eqz v0, :cond_4

    .line 607
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v6, :cond_1

    .line 616
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 608
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 609
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 610
    if-nez v3, :cond_3

    .line 608
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 610
    :cond_3
    aget-object v4, p1, v1

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 611
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, p1, v1

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 620
    :cond_4
    return-object v5
.end method

.method public static getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 280
    :goto_0
    if-eqz v0, :cond_2

    .line 281
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 285
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 289
    :cond_2
    return-object v3
.end method

.method public static getNextVisibleSiblingElement(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Lmf/org/w3c/dom/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 297
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 298
    :goto_0
    if-eqz v0, :cond_2

    .line 299
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 303
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {v0, p1}, Lmf/org/apache/xerces/util/DOMUtil;->isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    .line 307
    :cond_2
    return-object v3
.end method

.method public static getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;
    .locals 2

    .prologue
    .line 755
    invoke-interface {p0}, Lmf/org/w3c/dom/Element;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 756
    instance-of v1, v0, Lmf/org/w3c/dom/Element;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 758
    return-object v0

    .line 757
    :cond_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0
.end method

.method public static getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;
    .locals 1

    .prologue
    .line 768
    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public static getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 836
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 839
    return-object v0

    .line 837
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->getSyntheticAnnotation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    invoke-interface {p0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isHidden(Lmf/org/w3c/dom/Node;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v0, :cond_0

    .line 351
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_1

    .line 353
    return v1

    .line 350
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v0

    return v0

    .line 352
    :cond_1
    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getReadOnly()Z

    move-result v0

    return v0
.end method

.method public static isHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)Z
    .locals 1

    .prologue
    .line 358
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 359
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v0

    return v0
.end method

.method public static setHidden(Lmf/org/w3c/dom/Node;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 313
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v0, :cond_0

    .line 315
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_1

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0

    .line 316
    :cond_1
    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setHidden(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 325
    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setVisible(Lmf/org/w3c/dom/Node;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v0, :cond_0

    .line 333
    instance-of v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_1

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0

    .line 334
    :cond_1
    check-cast p0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setVisible(Lmf/org/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    instance-of v0, p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :goto_0
    return-void

    .line 340
    :cond_0
    check-cast p0, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {p0, v1, v1}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method
