.class public abstract Lmf/org/apache/xerces/dom/NodeImpl;
.super Ljava/lang/Object;
.source "NodeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Node;
.implements Lmf/org/w3c/dom/NodeList;
.implements Lmf/org/w3c/dom/events/EventTarget;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final DOCUMENT_POSITION_IS_CONTAINED:S = 0x10s

.field public static final DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final ELEMENT_DEFINITION_NODE:S = 0x15s

.field protected static final FIRSTCHILD:S = 0x10s

.field protected static final HASSTRING:S = 0x80s

.field protected static final ID:S = 0x200s

.field protected static final IGNORABLEWS:S = 0x40s

.field protected static final NORMALIZED:S = 0x100s

.field protected static final OWNED:S = 0x8s

.field protected static final READONLY:S = 0x1s

.field protected static final SPECIFIED:S = 0x20s

.field protected static final SYNCCHILDREN:S = 0x4s

.field protected static final SYNCDATA:S = 0x2s

.field public static final TREE_POSITION_ANCESTOR:S = 0x4s

.field public static final TREE_POSITION_DESCENDANT:S = 0x8s

.field public static final TREE_POSITION_DISCONNECTED:S = 0x0s

.field public static final TREE_POSITION_EQUIVALENT:S = 0x10s

.field public static final TREE_POSITION_FOLLOWING:S = 0x2s

.field public static final TREE_POSITION_PRECEDING:S = 0x1s

.field public static final TREE_POSITION_SAME_NODE:S = 0x20s

.field static final serialVersionUID:J = -0x57a90af33c3441f0L


# instance fields
.field protected flags:S

.field protected ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 177
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2007
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2011
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2013
    return-void

    .line 2008
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->addEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    .line 710
    return-void
.end method

.method public appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected changed()V
    .locals 1

    .prologue
    .line 1870
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changed()V

    .line 1871
    return-void
.end method

.method protected changes()I
    .locals 1

    .prologue
    .line 1880
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->changes()I

    move-result v0

    return v0
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 280
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    .line 284
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    .line 286
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;S)V

    .line 289
    return-object v0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 275
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "**Internal Error**"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public compareDocumentPosition(Lmf/org/w3c/dom/Node;)S
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 973
    if-eq p0, p1, :cond_2

    .line 977
    if-nez p1, :cond_3

    .line 986
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    .line 989
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    .line 990
    :goto_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    .line 993
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    .line 997
    :goto_1
    if-ne v1, v0, :cond_6

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v3, p0

    .line 1027
    :goto_2
    if-eqz v4, :cond_9

    .line 1028
    add-int/lit8 v3, v2, 0x1

    .line 1029
    if-eq v4, p1, :cond_8

    .line 1027
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v9

    goto :goto_2

    .line 974
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 977
    :cond_3
    instance-of v0, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "NOT_SUPPORTED_ERR"

    const/4 v2, 0x0

    .line 979
    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 981
    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, p0

    .line 987
    check-cast v0, Lmf/org/w3c/dom/Document;

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v0, p1

    .line 991
    check-cast v0, Lmf/org/w3c/dom/Document;

    goto :goto_1

    .line 998
    :cond_6
    if-eqz v1, :cond_1

    .line 999
    if-eqz v0, :cond_1

    .line 1001
    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v2

    move-object v0, v1

    .line 1002
    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v0

    .line 1003
    if-gt v2, v0, :cond_7

    .line 1008
    const/16 v0, 0x23

    return v0

    .line 1004
    :cond_7
    const/16 v0, 0x25

    return v0

    .line 1031
    :cond_8
    const/16 v0, 0xa

    return v0

    :cond_9
    move-object v5, p1

    move-object v4, p1

    .line 1036
    :goto_3
    if-eqz v5, :cond_b

    .line 1037
    add-int/lit8 v6, v6, 0x1

    .line 1038
    if-eq v5, p0, :cond_a

    .line 1036
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    move-object v9, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_3

    .line 1040
    :cond_a
    const/16 v0, 0x14

    return v0

    .line 1047
    :cond_b
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    .line 1048
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    .line 1054
    sparse-switch v5, :sswitch_data_0

    move-object v5, p1

    move v7, v2

    move-object v2, v3

    move-object v3, p0

    .line 1126
    :goto_4
    sparse-switch v8, :sswitch_data_1

    move-object v0, v5

    move-object v1, v4

    move v4, v6

    .line 1161
    :goto_5
    if-ne v2, v1, :cond_1e

    .line 1180
    if-gt v7, v4, :cond_20

    const/4 v1, 0x0

    .line 1193
    :goto_6
    sub-int v2, v4, v7

    if-ge v1, v2, :cond_23

    .line 1194
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 1193
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6

    .line 1057
    :sswitch_0
    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v7

    .line 1058
    if-eq v7, v4, :cond_c

    .line 1060
    sparse-switch v8, :sswitch_data_2

    move-object v5, p1

    move-object v3, v1

    move v7, v2

    move-object v2, v1

    .line 1088
    goto :goto_4

    .line 1058
    :cond_c
    const/16 v0, 0xa

    return v0

    .line 1063
    :sswitch_1
    if-ne v5, v8, :cond_d

    const/16 v0, 0xc

    .line 1069
    if-eq v5, v0, :cond_f

    .line 1078
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1082
    const/16 v0, 0x24

    return v0

    .line 1065
    :cond_d
    if-gt v5, v8, :cond_e

    const/4 v0, 0x4

    :goto_7
    return v0

    :cond_e
    const/4 v0, 0x2

    .line 1066
    goto :goto_7

    .line 1071
    :cond_f
    invoke-interface {v7}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, v4, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1075
    const/16 v0, 0x24

    return v0

    .line 1072
    :cond_10
    const/16 v0, 0x22

    return v0

    .line 1079
    :cond_11
    const/16 v0, 0x22

    return v0

    .line 1091
    :sswitch_2
    if-eq p1, v1, :cond_13

    .line 1094
    if-nez v1, :cond_14

    :cond_12
    move-object v5, p1

    move v7, v2

    move-object v2, v3

    move-object v3, p0

    goto :goto_4

    .line 1092
    :cond_13
    const/16 v0, 0xa

    return v0

    .line 1094
    :cond_14
    if-ne v1, v0, :cond_12

    .line 1095
    const/4 v0, 0x4

    return v0

    :sswitch_3
    move-object v2, v3

    .line 1099
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    const/4 v2, 0x2

    .line 1100
    if-eq v8, v2, :cond_15

    :goto_8
    const/4 v2, 0x0

    move-object v7, v5

    .line 1114
    :goto_9
    if-eqz v7, :cond_2a

    .line 1115
    add-int/lit8 v3, v2, 0x1

    .line 1116
    if-eq v7, p1, :cond_18

    .line 1114
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    move v2, v3

    move-object v3, v7

    move-object v7, v9

    goto :goto_9

    :cond_15
    move-object v2, v4

    .line 1101
    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v2

    .line 1102
    if-eq v2, v5, :cond_16

    move-object p1, v2

    goto :goto_8

    .line 1103
    :cond_16
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1107
    const/16 v0, 0x24

    return v0

    .line 1104
    :cond_17
    const/16 v0, 0x22

    return v0

    .line 1119
    :cond_18
    const/16 v0, 0xa

    return v0

    .line 1129
    :sswitch_4
    invoke-interface {v1}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    .line 1130
    if-eq v0, p0, :cond_19

    move-object v0, v1

    move v4, v6

    .line 1133
    goto/16 :goto_5

    .line 1130
    :cond_19
    const/16 v0, 0x14

    return v0

    .line 1136
    :sswitch_5
    if-eq v3, v0, :cond_1b

    .line 1139
    if-nez v0, :cond_1c

    :cond_1a
    move-object v0, v5

    move-object v1, v4

    move v4, v6

    goto/16 :goto_5

    .line 1137
    :cond_1b
    const/16 v0, 0x14

    return v0

    .line 1139
    :cond_1c
    if-ne v1, v0, :cond_1a

    .line 1140
    const/4 v0, 0x2

    return v0

    :sswitch_6
    const/4 v1, 0x0

    move-object v0, v4

    .line 1145
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v5, v0

    .line 1146
    :goto_a
    if-eqz v5, :cond_29

    .line 1147
    add-int/lit8 v4, v1, 0x1

    .line 1148
    if-eq v5, v3, :cond_1d

    .line 1146
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v9, v1

    move v1, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_a

    .line 1151
    :cond_1d
    const/16 v0, 0x14

    return v0

    :cond_1e
    move-object v0, v2

    .line 1163
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v2

    move-object v0, v1

    .line 1164
    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v0

    .line 1166
    if-gt v2, v0, :cond_1f

    .line 1171
    const/16 v0, 0x23

    return v0

    .line 1167
    :cond_1f
    const/16 v0, 0x25

    return v0

    :cond_20
    const/4 v1, 0x0

    move v2, v1

    move-object v1, v3

    .line 1181
    :goto_b
    sub-int v3, v7, v4

    if-ge v2, v3, :cond_21

    .line 1182
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1181
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_b

    .line 1186
    :cond_21
    if-eq v1, v0, :cond_22

    .line 1205
    :goto_c
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1206
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v9, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    .line 1207
    :goto_d
    if-eq v2, v0, :cond_25

    .line 1210
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1211
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_d

    .line 1188
    :cond_22
    const/4 v0, 0x2

    return v0

    .line 1198
    :cond_23
    if-eq v0, v3, :cond_24

    move-object v1, v3

    goto :goto_c

    .line 1199
    :cond_24
    const/4 v0, 0x4

    return v0

    .line 1218
    :cond_25
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1219
    :goto_e
    if-eqz v0, :cond_28

    .line 1221
    if-eq v0, v1, :cond_26

    .line 1224
    if-eq v0, v3, :cond_27

    .line 1220
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_e

    .line 1222
    :cond_26
    const/4 v0, 0x2

    return v0

    .line 1225
    :cond_27
    const/4 v0, 0x4

    return v0

    .line 1230
    :cond_28
    const/4 v0, 0x0

    return v0

    :cond_29
    move v9, v1

    move-object v1, v4

    move v4, v9

    goto/16 :goto_5

    :cond_2a
    move v7, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, p1

    goto/16 :goto_4

    .line 1054
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_0
        0xa -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch

    .line 1126
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_6
        0x6 -> :sswitch_4
        0xa -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    .line 1060
    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public compareTreePosition(Lmf/org/w3c/dom/Node;)S
    .locals 13

    .prologue
    const/4 v3, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v4, 0x0

    .line 803
    if-eq p0, p1, :cond_1

    .line 807
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    .line 808
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    .line 811
    if-ne v0, v3, :cond_2

    .line 815
    :cond_0
    return v4

    .line 804
    :cond_1
    const/16 v0, 0x30

    return v0

    :cond_2
    const/16 v2, 0xc

    .line 812
    if-eq v0, v2, :cond_0

    .line 813
    if-eq v1, v3, :cond_0

    const/16 v0, 0xc

    .line 814
    if-eq v1, v0, :cond_0

    move-object v0, p0

    move v6, v4

    move-object v1, p0

    .line 830
    :goto_0
    if-eqz v0, :cond_4

    .line 831
    add-int/lit8 v6, v6, 0x1

    .line 832
    if-eq v0, p1, :cond_3

    .line 830
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0

    .line 834
    :cond_3
    const/4 v0, 0x5

    return v0

    :cond_4
    move-object v0, p1

    move v5, v4

    move-object v2, p1

    .line 838
    :goto_1
    if-eqz v0, :cond_6

    .line 839
    add-int/lit8 v5, v5, 0x1

    .line 840
    if-eq v0, p0, :cond_5

    .line 838
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_1

    .line 842
    :cond_5
    const/16 v0, 0xa

    return v0

    .line 850
    :cond_6
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v7

    .line 851
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v8

    .line 856
    if-eq v7, v9, :cond_8

    move-object v3, p0

    .line 859
    :goto_2
    if-eq v8, v9, :cond_9

    move-object v0, p1

    .line 865
    :goto_3
    if-eq v7, v9, :cond_a

    .line 875
    :cond_7
    if-eq v7, v9, :cond_b

    move-object v7, v1

    .line 890
    :goto_4
    if-eq v8, v9, :cond_d

    .line 904
    :goto_5
    if-ne v7, v2, :cond_f

    .line 911
    if-gt v6, v5, :cond_10

    move v1, v4

    .line 922
    :goto_6
    sub-int v2, v5, v6

    if-ge v1, v2, :cond_13

    .line 923
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    .line 922
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6

    :cond_8
    move-object v0, v1

    .line 857
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v3

    goto :goto_2

    :cond_9
    move-object v0, v2

    .line 860
    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_3

    .line 866
    :cond_a
    if-ne v8, v9, :cond_7

    .line 867
    if-ne v3, v0, :cond_7

    .line 868
    const/16 v0, 0x10

    return v0

    :cond_b
    move-object v7, v3

    move-object v6, v1

    move v1, v4

    .line 877
    :goto_7
    if-eqz v7, :cond_1a

    .line 878
    add-int/lit8 v6, v1, 0x1

    .line 879
    if-eq v7, v0, :cond_c

    .line 877
    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move v1, v6

    move-object v6, v7

    move-object v7, v11

    goto :goto_7

    .line 882
    :cond_c
    return v10

    :cond_d
    move-object v5, v0

    move v1, v4

    .line 892
    :goto_8
    if-eqz v5, :cond_19

    .line 893
    add-int/lit8 v2, v1, 0x1

    .line 894
    if-eq v5, v3, :cond_e

    .line 892
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move v1, v2

    move-object v2, v5

    move-object v5, v11

    goto :goto_8

    .line 897
    :cond_e
    return v9

    .line 905
    :cond_f
    return v4

    :cond_10
    move v2, v4

    move-object v1, v3

    .line 912
    :goto_9
    sub-int v3, v6, v5

    if-ge v2, v3, :cond_11

    .line 913
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 912
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_9

    .line 917
    :cond_11
    if-eq v1, v0, :cond_12

    .line 934
    :goto_a
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 935
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v11, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v11

    .line 936
    :goto_b
    if-eq v2, v0, :cond_15

    .line 939
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 940
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_b

    .line 918
    :cond_12
    return v10

    .line 927
    :cond_13
    if-eq v0, v3, :cond_14

    move-object v1, v3

    goto :goto_a

    .line 928
    :cond_14
    return v9

    .line 947
    :cond_15
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 948
    :goto_c
    if-eqz v0, :cond_18

    .line 950
    if-eq v0, v1, :cond_16

    .line 953
    if-eq v0, v3, :cond_17

    .line 949
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_c

    .line 951
    :cond_16
    return v10

    .line 954
    :cond_17
    return v9

    .line 959
    :cond_18
    return v4

    :cond_19
    move v5, v1

    goto/16 :goto_5

    :cond_1a
    move-object v7, v6

    move v6, v1

    goto/16 :goto_4
.end method

.method public dispatchEvent(Lmf/org/w3c/dom/events/Event;)Z
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->dispatchEvent(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/w3c/dom/events/Event;)Z

    move-result v0

    return v0
.end method

.method public getAttributes()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 386
    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 752
    return-object v0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 0

    .prologue
    .line 425
    return-object p0
.end method

.method protected getContainer()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1897
    return-object v0
.end method

.method getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1590
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 1591
    :goto_0
    if-eqz v0, :cond_1

    .line 1592
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    .line 1593
    if-eq v1, v2, :cond_0

    .line 1596
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 1594
    :cond_0
    return-object v0

    .line 1598
    :cond_1
    return-object v3
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1752
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 443
    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 550
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 699
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 634
    return-object v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 366
    return-object v0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method protected getNodeNumber()I
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    .line 343
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber(Lmf/org/w3c/dom/Node;)I

    move-result v0

    .line 344
    return v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 203
    return-object v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/w3c/dom/Document;

    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 354
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 653
    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 371
    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    .line 1828
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1831
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    return v0

    .line 1829
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1298
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1304
    if-nez v0, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1856
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1784
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 1788
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getUserDataRecord(Lmf/org/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public hasChildNodes()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method final hasStringValue(Z)V
    .locals 1

    .prologue
    .line 1967
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x81

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1968
    return-void

    .line 1967
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x80

    goto :goto_0
.end method

.method final hasStringValue()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1963
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    const/4 v3, 0x0

    .line 480
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 479
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method final internalIsIgnorableWhitespace()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1955
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1392
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    .line 1393
    packed-switch v0, :pswitch_data_0

    .line 1441
    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1442
    if-nez v0, :cond_a

    .line 1445
    return v4

    .line 1395
    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1396
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 1399
    if-nez v0, :cond_1

    .line 1400
    :cond_0
    if-eqz p1, :cond_3

    .line 1403
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1399
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1417
    :cond_2
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1418
    if-nez v0, :cond_8

    .line 1421
    return v4

    .line 1401
    :cond_3
    if-eq v1, p1, :cond_4

    return v4

    :cond_4
    return v5

    :cond_5
    move-object v0, p0

    .line 1406
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    const-string/jumbo v2, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v3, "xmlns"

    .line 1407
    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1408
    if-eqz v0, :cond_2

    .line 1409
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1410
    if-eqz p1, :cond_6

    .line 1413
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1411
    :cond_6
    if-eq v1, v0, :cond_7

    return v4

    :cond_7
    return v5

    .line 1419
    :cond_8
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1424
    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1432
    :pswitch_3
    return v4

    .line 1434
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    if-eq v0, v5, :cond_9

    .line 1438
    return v4

    .line 1435
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1443
    :cond_a
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1689
    if-eq p1, p0, :cond_5

    .line 1692
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1697
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1702
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1706
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1711
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1715
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1720
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1724
    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1729
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1733
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1738
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1743
    :cond_4
    return v3

    .line 1690
    :cond_5
    return v3

    .line 1693
    :cond_6
    return v2

    .line 1698
    :cond_7
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1699
    return v2

    .line 1703
    :cond_8
    return v2

    .line 1707
    :cond_9
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1708
    return v2

    .line 1712
    :cond_a
    return v2

    .line 1716
    :cond_b
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1717
    return v2

    .line 1721
    :cond_c
    return v2

    .line 1725
    :cond_d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1726
    return v2

    .line 1730
    :cond_e
    return v2

    .line 1734
    :cond_f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1735
    return v2

    .line 1739
    :cond_10
    return v2
.end method

.method final isFirstChild(Z)V
    .locals 1

    .prologue
    .line 1942
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x11

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1943
    return-void

    .line 1942
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method

.method final isFirstChild()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1938
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isIdAttribute(Z)V
    .locals 1

    .prologue
    .line 1987
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x201

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1988
    return-void

    .line 1987
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x200

    goto :goto_0
.end method

.method final isIdAttribute()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1983
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isIgnorableWhitespace(Z)V
    .locals 1

    .prologue
    .line 1959
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x41

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1960
    return-void

    .line 1959
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method final isNormalized(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1976
    if-eqz p1, :cond_1

    .line 1979
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, -0x101

    :goto_1
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1980
    return-void

    .line 1976
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    goto :goto_0

    .line 1979
    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit16 v0, v0, 0x100

    goto :goto_1
.end method

.method final isNormalized()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1971
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isOwned(Z)V
    .locals 1

    .prologue
    .line 1934
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x9

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1935
    return-void

    .line 1934
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method final isOwned()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1930
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isReadOnly(Z)V
    .locals 1

    .prologue
    .line 1910
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x2

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1911
    return-void

    .line 1910
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method final isReadOnly()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1906
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    .prologue
    .line 1375
    if-eq p0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final isSpecified(Z)V
    .locals 1

    .prologue
    .line 1950
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x21

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1951
    return-void

    .line 1950
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method final isSpecified()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1946
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 611
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 564
    return-object v0
.end method

.method lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1602
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 1605
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1607
    if-nez v1, :cond_2

    .line 1616
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1641
    :cond_1
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1643
    if-nez v0, :cond_8

    .line 1646
    return-object v8

    .line 1607
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    if-eqz v2, :cond_0

    .line 1609
    invoke-virtual {p2, v2}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1610
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1611
    return-object v2

    .line 1617
    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 1618
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    .line 1619
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1620
    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    .line 1621
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1622
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1623
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    .line 1624
    if-nez v6, :cond_5

    .line 1619
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    .line 1624
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1626
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xmlns"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1630
    :cond_6
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 1631
    invoke-virtual {p2, v3}, Lmf/org/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1632
    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1633
    return-object v3

    .line 1627
    :cond_7
    if-eqz v4, :cond_4

    const-string/jumbo v6, "xmlns"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1628
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 1644
    :cond_8
    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1514
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v2

    .line 1515
    packed-switch v2, :pswitch_data_0

    .line 1579
    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1580
    if-nez v0, :cond_e

    .line 1583
    return-object v1

    .line 1518
    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 1519
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 1520
    if-nez v2, :cond_2

    .line 1530
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1553
    :cond_1
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1554
    if-nez v0, :cond_c

    .line 1558
    return-object v1

    .line 1522
    :cond_2
    if-eqz p1, :cond_4

    .line 1525
    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1527
    return-object v2

    .line 1522
    :cond_4
    if-ne v3, p1, :cond_3

    .line 1524
    return-object v2

    .line 1531
    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 1532
    invoke-interface {v3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    move v2, v0

    .line 1533
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1534
    invoke-interface {v3, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    .line 1535
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 1536
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 1537
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 1538
    if-nez v7, :cond_7

    .line 1533
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_7
    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    .line 1538
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1540
    if-eqz p1, :cond_9

    .line 1544
    :cond_8
    if-eqz v6, :cond_6

    const-string/jumbo v7, "xmlns"

    .line 1545
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1546
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1548
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    :goto_1
    return-object v1

    .line 1541
    :cond_9
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1543
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    move-object v0, v1

    :cond_a
    return-object v0

    :cond_b
    move-object v1, v0

    .line 1548
    goto :goto_1

    .line 1555
    :cond_c
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1563
    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1570
    :pswitch_3
    return-object v1

    .line 1572
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    .line 1576
    return-object v1

    .line 1573
    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1581
    :cond_e
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1466
    if-eqz p1, :cond_0

    .line 1470
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    .line 1472
    packed-switch v0, :pswitch_data_0

    .line 1495
    :pswitch_0
    invoke-virtual {p0, p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getElementAncestor(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1496
    if-nez v0, :cond_2

    .line 1499
    return-object v2

    .line 1467
    :cond_0
    return-object v2

    .line 1474
    :pswitch_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-object v0, p0

    .line 1475
    check-cast v0, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1478
    :pswitch_2
    check-cast p0, Lmf/org/w3c/dom/Document;

    invoke-interface {p0}, Lmf/org/w3c/dom/Document;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1486
    :pswitch_3
    return-object v2

    .line 1488
    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1492
    return-object v2

    .line 1489
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1497
    :cond_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final needsSyncChildren(Z)V
    .locals 1

    .prologue
    .line 1926
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x5

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1927
    return-void

    .line 1926
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method final needsSyncChildren()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1922
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final needsSyncData(Z)V
    .locals 1

    .prologue
    .line 1918
    if-nez p1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, -0x3

    :goto_0
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    .line 1919
    return-void

    .line 1918
    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method final needsSyncData()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1914
    iget-short v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->flags:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public normalize()V
    .locals 0

    .prologue
    .line 592
    return-void
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    return-object v0
.end method

.method parentNode()Lmf/org/apache/xerces/dom/NodeImpl;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    return-object v0
.end method

.method previousSibling()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 501
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NOT_FOUND_ERR"

    const/4 v3, 0x0

    .line 502
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 501
    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public removeEventListener(Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V
    .locals 1

    .prologue
    .line 715
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeEventListener(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lmf/org/w3c/dom/events/EventListener;Z)V

    .line 716
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
    .line 532
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "HIERARCHY_REQUEST_ERR"

    const/4 v3, 0x0

    .line 533
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 532
    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 213
    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :goto_1
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0

    .line 333
    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 680
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NAMESPACE_ERR"

    const/4 v3, 0x0

    .line 681
    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 680
    const/16 v2, 0xe

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setReadOnly(ZZ)V
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    .line 1820
    return-void

    .line 1816
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 1356
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1771
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1848
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V

    .line 1849
    return-void
.end method

.method protected synchronizeData()V
    .locals 1

    .prologue
    .line 1889
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    .line 1890
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
