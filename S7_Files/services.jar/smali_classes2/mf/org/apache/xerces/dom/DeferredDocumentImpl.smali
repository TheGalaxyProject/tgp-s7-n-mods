.class public Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "DeferredDocumentImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;,
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    }
.end annotation


# static fields
.field protected static final CHUNK_MASK:I = 0x7ff

.field protected static final CHUNK_SHIFT:I = 0xb

.field protected static final CHUNK_SIZE:I = 0x800

.field private static final DEBUG_IDS:Z = false

.field private static final DEBUG_PRINT_REF_COUNTS:Z = false

.field private static final DEBUG_PRINT_TABLES:Z = false

.field protected static final INITIAL_CHUNK_COUNT:I = 0x20

.field private static final INIT_ARRAY:[I

.field static final serialVersionUID:J = 0x47f985d180d03de9L


# instance fields
.field private final transient fBufferStr:Ljava/lang/StringBuffer;

.field protected transient fIdCount:I

.field protected transient fIdElement:[I

.field protected transient fIdName:[Ljava/lang/String;

.field protected fNamespacesEnabled:Z

.field protected transient fNodeCount:I

.field protected transient fNodeExtra:[[I

.field protected transient fNodeLastChild:[[I

.field protected transient fNodeName:[[Ljava/lang/Object;

.field protected transient fNodeParent:[[I

.field protected transient fNodePrevSib:[[I

.field protected transient fNodeType:[[I

.field protected transient fNodeURI:[[Ljava/lang/Object;

.field protected transient fNodeValue:[[Ljava/lang/Object;

.field private final transient fStrChunks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x801

    .line 1924
    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x800

    .line 1926
    if-ge v0, v1, :cond_0

    .line 1927
    sget-object v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1926
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1929
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(ZZ)V

    .line 153
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Z)V

    .line 88
    iput v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    .line 127
    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    .line 160
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    .line 162
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    .line 164
    return-void
.end method

.method protected static binarySearch([IIII)I
    .locals 2

    .prologue
    .line 1884
    :goto_0
    if-gt p1, p2, :cond_4

    .line 1887
    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 1888
    aget v1, p0, v0

    .line 1893
    if-eq v1, p3, :cond_1

    .line 1904
    if-gt v1, p3, :cond_3

    .line 1908
    add-int/lit8 p1, v0, 0x1

    goto :goto_0

    .line 1894
    :cond_0
    add-int/lit8 v1, v0, -0x1

    aget v1, p0, v1

    if-ne v1, p3, :cond_2

    .line 1895
    add-int/lit8 v0, v0, -0x1

    .line 1894
    :cond_1
    if-gtz v0, :cond_0

    .line 1900
    :cond_2
    return v0

    .line 1905
    :cond_3
    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    .line 1917
    return v0
.end method

.method private final clearChunkIndex([[III)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x800

    const/4 v1, -0x1

    .line 2020
    aget-object v0, p1, p2

    if-nez v0, :cond_1

    move v0, v1

    .line 2021
    :goto_0
    if-ne v0, v1, :cond_2

    .line 2028
    :cond_0
    :goto_1
    return v0

    .line 2020
    :cond_1
    aget-object v0, p1, p2

    aget v0, v0, p3

    goto :goto_0

    .line 2022
    :cond_2
    aget-object v2, p1, p2

    aget v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v4

    .line 2023
    aget-object v2, p1, p2

    aput v1, v2, p3

    .line 2024
    aget-object v1, p1, p2

    aget v1, v1, v4

    if-nez v1, :cond_0

    .line 2025
    aput-object v5, p1, p2

    goto :goto_1
.end method

.method private final clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2032
    aget-object v0, p1, p2

    if-nez v0, :cond_1

    move-object v1, v2

    .line 2033
    :goto_0
    if-nez v1, :cond_2

    .line 2041
    :cond_0
    :goto_1
    return-object v1

    .line 2032
    :cond_1
    aget-object v0, p1, p2

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 2034
    :cond_2
    aget-object v0, p1, p2

    aput-object v2, v0, p3

    .line 2035
    aget-object v0, p1, p2

    const/16 v3, 0x800

    aget-object v0, v0, v3

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    .line 2036
    iget v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    .line 2037
    iget v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v0, :cond_0

    .line 2038
    aput-object v2, p1, p2

    goto :goto_1
.end method

.method private final createChunk([[II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v0, 0x801

    .line 1932
    new-array v0, v0, [I

    aput-object v0, p1, p2

    .line 1933
    sget-object v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    aget-object v1, p1, p2

    const/16 v2, 0x800

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1934
    return-void
.end method

.method private final createChunk([[Ljava/lang/Object;I)V
    .locals 3

    .prologue
    const/16 v0, 0x801

    .line 1941
    new-array v0, v0, [Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 1942
    aget-object v0, p1, p2

    const/16 v1, 0x800

    new-instance v2, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;-><init>()V

    aput-object v2, v0, v1

    .line 1943
    return-void
.end method

.method private final getChunkIndex([[III)I
    .locals 1

    .prologue
    .line 1992
    aget-object v0, p1, p2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    aget-object v0, p1, p2

    aget v0, v0, p3

    goto :goto_0
.end method

.method private final getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1995
    aget-object v1, p1, p2

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p1, p2

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private final getNodeValue(II)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1998
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    .line 1999
    if-eqz v0, :cond_0

    .line 2002
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2007
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2000
    :cond_0
    return-object v1

    .line 2003
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static print([IIIII)V
    .locals 0

    .prologue
    .line 2089
    return-void
.end method

.method private final putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 2063
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    return-void

    .line 2059
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    goto :goto_0
.end method

.method private final setChunkIndex([[IIII)I
    .locals 4

    .prologue
    const/16 v3, 0x800

    const/4 v2, -0x1

    .line 1952
    if-eq p2, v2, :cond_0

    .line 1955
    aget-object v0, p1, p3

    .line 1957
    if-eqz v0, :cond_1

    .line 1961
    :goto_0
    aget v1, v0, p4

    .line 1962
    if-eq v1, v2, :cond_2

    .line 1965
    :goto_1
    aput p2, v0, p4

    .line 1966
    return v1

    .line 1953
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    return v0

    .line 1958
    :cond_1
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    .line 1959
    aget-object v0, p1, p3

    goto :goto_0

    .line 1963
    :cond_2
    aget v2, v0, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v3

    goto :goto_1
.end method

.method private final setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1970
    if-eqz p2, :cond_0

    .line 1973
    aget-object v0, p1, p3

    .line 1975
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 1979
    :goto_0
    aget-object v0, v2, p4

    check-cast v0, Ljava/lang/String;

    .line 1980
    if-eqz v0, :cond_2

    .line 1984
    :goto_1
    aput-object p2, v2, p4

    .line 1985
    return-object v0

    .line 1971
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1976
    :cond_1
    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    .line 1977
    aget-object v0, p1, p3

    move-object v2, v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x800

    .line 1981
    aget-object v1, v2, v1

    check-cast v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    .line 1982
    iget v3, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    goto :goto_1
.end method


# virtual methods
.method public appendChild(II)V
    .locals 6

    .prologue
    .line 649
    shr-int/lit8 v0, p1, 0xb

    .line 650
    and-int/lit16 v1, p1, 0x7ff

    .line 651
    shr-int/lit8 v2, p2, 0xb

    .line 652
    and-int/lit16 v3, p2, 0x7ff

    .line 653
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v4, p1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 656
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    .line 657
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 660
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 662
    return-void
.end method

.method public cloneNode(IZ)I
    .locals 10

    .prologue
    const/4 v2, -0x1

    const/4 v9, 0x0

    .line 609
    shr-int/lit8 v0, p1, 0xb

    .line 610
    and-int/lit16 v1, p1, 0x7ff

    .line 611
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    .line 612
    int-to-short v4, v3

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v4

    .line 613
    shr-int/lit8 v5, v4, 0xb

    .line 614
    and-int/lit16 v6, v4, 0x7ff

    .line 615
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    invoke-direct {p0, v7, v8, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 616
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    invoke-direct {p0, v7, v8, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 617
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    aget-object v8, v8, v0

    aget-object v8, v8, v1

    invoke-direct {p0, v7, v8, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 618
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    aget-object v0, v7, v0

    aget v0, v0, v1

    .line 619
    if-ne v0, v2, :cond_1

    .line 627
    :goto_0
    if-nez p2, :cond_4

    .line 641
    :cond_0
    return v4

    :cond_1
    const/4 v1, 0x2

    .line 620
    if-ne v3, v1, :cond_3

    .line 623
    :cond_2
    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, v0, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    .line 620
    if-eq v3, v1, :cond_2

    .line 621
    invoke-virtual {p0, v0, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v0

    goto :goto_1

    .line 629
    :cond_4
    invoke-virtual {p0, p1, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v0

    move v1, v2

    .line 630
    :goto_2
    if-eq v0, v2, :cond_0

    .line 631
    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v3

    .line 632
    invoke-virtual {p0, v4, v3, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    .line 634
    invoke-virtual {p0, v0, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v0

    move v1, v3

    goto :goto_2
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 517
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    .line 518
    shr-int/lit8 v2, v1, 0xb

    .line 519
    and-int/lit16 v3, v1, 0x7ff

    .line 520
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 521
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p2, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 522
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p3, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 523
    if-nez p4, :cond_0

    .line 524
    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 527
    return v1

    :cond_0
    const/16 v0, 0x20

    .line 523
    goto :goto_0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public createDeferredCDATASection(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 566
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 567
    shr-int/lit8 v1, v0, 0xb

    .line 568
    and-int/lit16 v2, v0, 0x7ff

    .line 569
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 572
    return v0
.end method

.method public createDeferredComment(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 594
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 595
    shr-int/lit8 v1, v0, 0xb

    .line 596
    and-int/lit16 v2, v0, 0x7ff

    .line 597
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 600
    return v0
.end method

.method public createDeferredDocument()I
    .locals 1

    .prologue
    .line 195
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 196
    return v0
.end method

.method public createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 204
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 205
    shr-int/lit8 v1, v0, 0xb

    .line 206
    and-int/lit16 v2, v0, 0x7ff

    .line 209
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 211
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 214
    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 401
    shr-int/lit8 v1, v0, 0xb

    .line 402
    and-int/lit16 v2, v0, 0x7ff

    .line 403
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 404
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 407
    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 375
    shr-int/lit8 v1, v0, 0xb

    .line 376
    and-int/lit16 v2, v0, 0x7ff

    .line 377
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 378
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 379
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 382
    return v0
.end method

.method public createDeferredElementDefinition(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 535
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 536
    shr-int/lit8 v1, v0, 0xb

    .line 537
    and-int/lit16 v2, v0, 0x7ff

    .line 538
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 541
    return v0
.end method

.method public createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x6

    .line 264
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 265
    shr-int/lit8 v1, v0, 0xb

    .line 266
    and-int/lit16 v2, v0, 0x7ff

    .line 269
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    .line 270
    shr-int/lit8 v4, v3, 0xb

    .line 271
    and-int/lit16 v5, v3, 0x7ff

    .line 274
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 275
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 276
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 277
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 280
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p4, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, v8, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 284
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v1, v8, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 287
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    .line 288
    shr-int/lit8 v2, v1, 0xb

    .line 289
    and-int/lit16 v3, v1, 0x7ff

    .line 291
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v1, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 294
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 297
    return v0
.end method

.method public createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 354
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 355
    shr-int/lit8 v1, v0, 0xb

    .line 356
    and-int/lit16 v2, v0, 0x7ff

    .line 357
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 358
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 361
    return v0
.end method

.method public createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .prologue
    const/16 v3, 0xc

    .line 235
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 236
    shr-int/lit8 v1, v0, 0xb

    .line 237
    and-int/lit16 v2, v0, 0x7ff

    .line 241
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    .line 242
    shr-int/lit8 v4, v3, 0xb

    .line 243
    and-int/lit16 v5, v3, 0x7ff

    .line 246
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 247
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 248
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 251
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 252
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p4, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 255
    return v0
.end method

.method public createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 580
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    .line 581
    shr-int/lit8 v1, v0, 0xb

    .line 582
    and-int/lit16 v2, v0, 0x7ff

    .line 583
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 584
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 586
    return v0
.end method

.method public createDeferredTextNode(Ljava/lang/String;Z)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 550
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v1

    .line 551
    shr-int/lit8 v2, v1, 0xb

    .line 552
    and-int/lit16 v3, v1, 0x7ff

    .line 553
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 555
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    if-nez p2, :cond_0

    :goto_0
    invoke-direct {p0, v4, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 558
    return v1

    :cond_0
    const/4 v0, 0x1

    .line 555
    goto :goto_0
.end method

.method protected createNode(S)I
    .locals 3

    .prologue
    .line 1849
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    shr-int/lit8 v0, v0, 0xb

    .line 1850
    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    and-int/lit16 v1, v1, 0x7ff

    .line 1851
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->ensureCapacity(I)V

    .line 1854
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 1857
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    return v0
.end method

.method protected ensureCapacity(I)V
    .locals 4

    .prologue
    const/16 v1, 0x20

    const/4 v3, 0x0

    .line 1779
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 1826
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 1832
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    .line 1833
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    .line 1834
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    .line 1835
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    .line 1836
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    .line 1837
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    .line 1838
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    .line 1839
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    .line 1842
    return-void

    .line 1781
    :cond_0
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    .line 1782
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    .line 1783
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    .line 1784
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    .line 1785
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    .line 1786
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    .line 1787
    new-array v0, v1, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    .line 1788
    new-array v0, v1, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto :goto_0

    .line 1792
    :cond_1
    mul-int/lit8 v0, p1, 0x2

    .line 1794
    new-array v1, v0, [[I

    .line 1795
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1796
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    .line 1798
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1799
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1800
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    .line 1802
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1803
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1804
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    .line 1806
    new-array v1, v0, [[I

    .line 1807
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1808
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    .line 1810
    new-array v1, v0, [[I

    .line 1811
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1812
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    .line 1814
    new-array v1, v0, [[I

    .line 1815
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1816
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    .line 1818
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1819
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1820
    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    .line 1822
    new-array v0, v0, [[I

    .line 1823
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-static {v1, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1824
    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto/16 :goto_0

    .line 1828
    :cond_2
    return-void
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1317
    if-ne p1, v4, :cond_1

    .line 1318
    :cond_0
    return-object v3

    .line 1317
    :cond_1
    if-eqz p2, :cond_0

    .line 1320
    shr-int/lit8 v0, p1, 0xb

    .line 1321
    and-int/lit16 v1, p1, 0x7ff

    .line 1322
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 1323
    :goto_0
    if-eq v0, v4, :cond_3

    .line 1324
    shr-int/lit8 v1, v0, 0xb

    .line 1325
    and-int/lit16 v0, v0, 0x7ff

    .line 1326
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    if-eq v2, p2, :cond_2

    .line 1329
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1331
    :cond_3
    return-object v3
.end method

.method public getDeferredEntityBaseURI(I)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 302
    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 307
    return-object v0

    .line 303
    :cond_0
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    .line 304
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    .line 305
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild(I)I
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v0

    return v0
.end method

.method public getLastChild(IZ)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 817
    if-eq p1, v0, :cond_0

    .line 821
    shr-int/lit8 v0, p1, 0xb

    .line 822
    and-int/lit16 v1, p1, 0x7ff

    .line 823
    if-nez p2, :cond_1

    .line 824
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 818
    :cond_0
    return v0

    .line 823
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method getNamespacesEnabled()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return v0
.end method

.method public getNodeExtra(I)I
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    return v0
.end method

.method public getNodeExtra(IZ)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1282
    if-eq p1, v0, :cond_0

    .line 1286
    shr-int/lit8 v0, p1, 0xb

    .line 1287
    and-int/lit16 v1, p1, 0x7ff

    .line 1288
    if-nez p2, :cond_1

    .line 1289
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 1288
    :goto_0
    return v0

    .line 1283
    :cond_0
    return v0

    .line 1288
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method public getNodeIndex()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1518
    return v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName(IZ)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1118
    if-eq p1, v0, :cond_0

    .line 1122
    shr-int/lit8 v0, p1, 0xb

    .line 1123
    and-int/lit16 v1, p1, 0x7ff

    .line 1124
    if-nez p2, :cond_1

    .line 1125
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 1124
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1119
    return-object v0

    .line 1124
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 947
    if-eq p1, v3, :cond_1

    .line 952
    shr-int/lit8 v0, p1, 0xb

    .line 953
    and-int/lit16 v1, p1, 0x7ff

    .line 954
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    const/4 v4, 0x3

    .line 955
    if-ne v2, v4, :cond_2

    .line 961
    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1092
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_1
    return-object v5

    :cond_2
    const/4 v4, 0x4

    .line 955
    if-eq v2, v4, :cond_0

    .line 956
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    goto :goto_0

    .line 968
    :pswitch_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-nez v0, :cond_4

    .line 971
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredAttrImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1098
    :cond_3
    :goto_1
    if-nez v1, :cond_9

    .line 1103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 969
    :cond_4
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    .line 977
    :pswitch_2
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    .line 982
    :pswitch_3
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredCommentImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :pswitch_4
    move-object v1, p0

    .line 996
    goto :goto_1

    .line 1000
    :pswitch_5
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v0, v1

    .line 1002
    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_1

    .line 1013
    :pswitch_6
    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-nez v0, :cond_6

    .line 1016
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredElementImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    .line 1021
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    .line 1023
    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v2, v2, -0x1

    .line 1022
    invoke-static {v0, v6, v2, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->binarySearch([IIII)I

    move-result v0

    move v2, v0

    .line 1024
    :goto_3
    if-eq v2, v3, :cond_3

    .line 1033
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v4, v0, v2

    .line 1034
    if-nez v4, :cond_7

    .line 1045
    :goto_4
    add-int/lit8 v0, v2, 0x1

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-lt v0, v4, :cond_8

    :cond_5
    move v2, v3

    .line 1050
    goto :goto_3

    .line 1014
    :cond_6
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 1039
    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v4, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 1040
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aput-object v5, v0, v2

    goto :goto_4

    .line 1046
    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    add-int/lit8 v4, v2, 0x1

    aget v0, v0, v4

    if-ne v0, p1, :cond_5

    .line 1047
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 1048
    goto :goto_3

    .line 1058
    :pswitch_7
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredEntityImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    .line 1063
    :pswitch_8
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    .line 1068
    :pswitch_9
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredNotationImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    .line 1073
    :pswitch_a
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_1

    .line 1078
    :pswitch_b
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredTextImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredTextImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_1

    .line 1087
    :pswitch_c
    new-instance v1, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;

    invoke-direct {v1, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_1

    .line 1099
    :cond_9
    return-object v1

    .line 961
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getNodeType(I)S
    .locals 1

    .prologue
    .line 1295
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v0

    return v0
.end method

.method public getNodeType(IZ)S
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1304
    if-eq p1, v0, :cond_0

    .line 1308
    shr-int/lit8 v0, p1, 0xb

    .line 1309
    and-int/lit16 v1, p1, 0x7ff

    .line 1310
    if-nez p2, :cond_1

    .line 1311
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    int-to-short v0, v0

    .line 1310
    :goto_0
    return v0

    .line 1305
    :cond_0
    return v0

    .line 1310
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public getNodeURI(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeURI(IZ)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1345
    if-eq p1, v0, :cond_0

    .line 1349
    shr-int/lit8 v0, p1, 0xb

    .line 1350
    and-int/lit16 v1, p1, 0x7ff

    .line 1351
    if-nez p2, :cond_1

    .line 1352
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 1351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1346
    return-object v0

    .line 1351
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(IZ)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1257
    if-eq p1, v0, :cond_0

    .line 1261
    shr-int/lit8 v0, p1, 0xb

    .line 1262
    and-int/lit16 v1, p1, 0x7ff

    .line 1263
    if-nez p2, :cond_1

    .line 1264
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 1263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1258
    return-object v0

    .line 1263
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNodeValueString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValueString(IZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1140
    if-eq p1, v5, :cond_1

    .line 1144
    shr-int/lit8 v1, p1, 0xb

    .line 1145
    and-int/lit16 v2, p1, 0x7ff

    .line 1146
    if-nez p2, :cond_2

    .line 1147
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 1148
    :goto_0
    if-eqz v0, :cond_3

    .line 1152
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    .line 1153
    if-eq v1, v6, :cond_4

    const/4 v2, 0x4

    .line 1187
    if-eq v1, v2, :cond_8

    .line 1214
    :cond_0
    return-object v0

    .line 1141
    :cond_1
    return-object v3

    .line 1146
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1149
    :cond_3
    return-object v3

    .line 1154
    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(I)I

    move-result v1

    .line 1155
    if-eq v1, v5, :cond_0

    .line 1156
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1160
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1164
    :cond_5
    shr-int/lit8 v1, v0, 0xb

    .line 1165
    and-int/lit16 v0, v0, 0x7ff

    .line 1166
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    .line 1167
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 1169
    if-eq v0, v5, :cond_6

    .line 1172
    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v1

    if-eq v1, v6, :cond_5

    .line 1174
    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1177
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_7

    .line 1178
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 1181
    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1183
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1184
    return-object v0

    .line 1189
    :cond_8
    invoke-virtual {p0, p1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v1

    .line 1190
    if-eq v1, v5, :cond_0

    .line 1192
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 1193
    :goto_2
    if-eq v0, v5, :cond_9

    .line 1196
    shr-int/lit8 v1, v0, 0xb

    .line 1197
    and-int/lit16 v0, v0, 0x7ff

    .line 1198
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    .line 1199
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_2

    .line 1203
    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_a

    .line 1204
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1203
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    .line 1207
    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1209
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1210
    return-object v0
.end method

.method public getParentNode(I)I
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v0

    return v0
.end method

.method public getParentNode(IZ)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 795
    if-eq p1, v0, :cond_0

    .line 799
    shr-int/lit8 v0, p1, 0xb

    .line 800
    and-int/lit16 v1, p1, 0x7ff

    .line 801
    if-nez p2, :cond_1

    .line 802
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 801
    :goto_0
    return v0

    .line 796
    :cond_0
    return v0

    .line 801
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method public getPrevSibling(I)I
    .locals 1

    .prologue
    .line 833
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevSibling(IZ)I
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, -0x1

    .line 842
    if-eq p1, v4, :cond_0

    .line 846
    shr-int/lit8 v1, p1, 0xb

    .line 847
    and-int/lit16 v0, p1, 0x7ff

    .line 848
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    .line 849
    if-eq v2, v5, :cond_1

    .line 861
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 864
    :goto_0
    return v0

    .line 843
    :cond_0
    return v4

    .line 851
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    .line 852
    if-eq v2, v4, :cond_2

    .line 855
    shr-int/lit8 v1, v2, 0xb

    .line 856
    and-int/lit16 v0, v2, 0x7ff

    .line 857
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    .line 858
    if-eq v3, v5, :cond_1

    move v0, v2

    .line 859
    goto :goto_0

    :cond_2
    move v0, v2

    .line 853
    goto :goto_0
.end method

.method public getRealPrevSibling(I)I
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getRealPrevSibling(IZ)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 883
    if-eq p1, v0, :cond_0

    .line 887
    shr-int/lit8 v0, p1, 0xb

    .line 888
    and-int/lit16 v1, p1, 0x7ff

    .line 889
    if-nez p2, :cond_1

    .line 890
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 889
    :goto_0
    return v0

    .line 884
    :cond_0
    return v0

    .line 889
    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    goto :goto_0
.end method

.method public getTypeInfo(I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 1231
    if-eq p1, v0, :cond_1

    .line 1235
    shr-int/lit8 v3, p1, 0xb

    .line 1236
    and-int/lit16 v4, p1, 0x7ff

    .line 1239
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    if-nez v0, :cond_2

    move-object v1, v2

    .line 1240
    :goto_0
    if-nez v1, :cond_3

    .line 1248
    :cond_0
    :goto_1
    return-object v1

    .line 1232
    :cond_1
    return-object v2

    .line 1239
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aget-object v0, v0, v4

    move-object v1, v0

    goto :goto_0

    .line 1241
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    aput-object v2, v0, v4

    .line 1242
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    const/16 v4, 0x800

    aget-object v0, v0, v4

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    .line 1243
    iget v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    .line 1244
    iget v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v0, :cond_0

    .line 1245
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aput-object v2, v0, v3

    goto :goto_1
.end method

.method public insertBefore(III)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 757
    if-eq p3, v0, :cond_0

    .line 762
    shr-int/lit8 v0, p2, 0xb

    .line 763
    and-int/lit16 v1, p2, 0x7ff

    .line 764
    shr-int/lit8 v2, p3, 0xb

    .line 765
    and-int/lit16 v3, p3, 0x7ff

    .line 766
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    .line 767
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, p2, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 768
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 770
    return p2

    .line 758
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    .line 759
    return p2
.end method

.method public lookupElementDefinition(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 901
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 939
    :cond_0
    return v1

    .line 907
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v0, v3, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 908
    :goto_0
    if-eq v0, v1, :cond_2

    .line 911
    shr-int/lit8 v2, v0, 0xb

    .line 912
    and-int/lit16 v3, v0, 0x7ff

    .line 913
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    .line 909
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 920
    :cond_3
    if-eq v0, v1, :cond_5

    .line 923
    shr-int/lit8 v2, v0, 0xb

    .line 924
    and-int/lit16 v0, v0, 0x7ff

    .line 925
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v3, v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 926
    :goto_1
    if-eq v0, v1, :cond_0

    .line 929
    shr-int/lit8 v2, v0, 0xb

    .line 930
    and-int/lit16 v3, v0, 0x7ff

    .line 931
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    const/16 v5, 0x15

    if-eq v4, v5, :cond_6

    .line 927
    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v0, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_1

    .line 921
    :cond_5
    return v1

    .line 933
    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v4

    if-ne v4, p1, :cond_4

    .line 934
    return v0
.end method

.method public print()V
    .locals 0

    .prologue
    .line 1510
    return-void
.end method

.method public putIdentifier(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 1370
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1376
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 1387
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    aput-object p1, v0, v1

    .line 1388
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    aput p2, v0, v1

    .line 1389
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    .line 1391
    return-void

    .line 1371
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    .line 1372
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    goto :goto_0

    .line 1377
    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1378
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1379
    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    .line 1381
    array-length v0, v0

    new-array v0, v0, [I

    .line 1382
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1383
    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    goto :goto_1
.end method

.method public setAsLastChild(II)V
    .locals 3

    .prologue
    .line 776
    shr-int/lit8 v0, p1, 0xb

    .line 777
    and-int/lit16 v1, p1, 0x7ff

    .line 778
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 779
    return-void
.end method

.method public setAttributeNode(II)I
    .locals 12

    .prologue
    const/4 v2, -0x1

    .line 667
    shr-int/lit8 v5, p1, 0xb

    .line 668
    and-int/lit16 v6, p1, 0x7ff

    .line 669
    shr-int/lit8 v7, p2, 0xb

    .line 670
    and-int/lit16 v8, p2, 0x7ff

    .line 673
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v0, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    .line 674
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v4

    move v0, v2

    move v1, v2

    move v3, v2

    .line 678
    :goto_0
    if-eq v4, v2, :cond_0

    .line 679
    shr-int/lit8 v1, v4, 0xb

    .line 680
    and-int/lit16 v0, v4, 0x7ff

    .line 681
    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v10, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v10

    .line 682
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 686
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    move v11, v4

    move v4, v3

    move v3, v11

    goto :goto_0

    .line 690
    :cond_0
    if-ne v4, v2, :cond_1

    .line 720
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v0, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    .line 721
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, p2, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 722
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v1, v0, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 725
    return v4

    .line 693
    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v9, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v9

    .line 694
    if-eq v3, v2, :cond_2

    .line 698
    shr-int/lit8 v2, v3, 0xb

    .line 699
    and-int/lit16 v3, v3, 0x7ff

    .line 700
    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v10, v9, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 704
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    .line 705
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    .line 706
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    .line 707
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    .line 708
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    .line 710
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v0

    .line 711
    shr-int/lit8 v1, v0, 0xb

    .line 712
    and-int/lit16 v0, v0, 0x7ff

    .line 713
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    .line 714
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    .line 715
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    .line 716
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    goto :goto_1

    .line 695
    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v9, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_2
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    .prologue
    .line 479
    invoke-virtual {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 481
    shr-int/lit8 v1, v0, 0xb

    .line 482
    and-int/lit16 v2, v0, 0x7ff

    .line 484
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 486
    shr-int/lit8 v3, p1, 0xb

    .line 487
    and-int/lit16 v4, p1, 0x7ff

    .line 490
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    .line 492
    if-nez v5, :cond_0

    .line 498
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v1, v0, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 502
    return v0

    .line 494
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v5, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I
    .locals 7

    .prologue
    .line 432
    invoke-virtual {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 433
    shr-int/lit8 v1, v0, 0xb

    .line 434
    and-int/lit16 v2, v0, 0x7ff

    .line 436
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v3, p1, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 438
    shr-int/lit8 v3, p1, 0xb

    .line 439
    and-int/lit16 v4, p1, 0x7ff

    .line 442
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    .line 443
    if-nez v5, :cond_0

    .line 448
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v0, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 450
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v3

    .line 451
    if-nez p6, :cond_1

    .line 458
    :goto_1
    if-nez p7, :cond_2

    .line 468
    :goto_2
    return v0

    .line 445
    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v5, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0

    .line 452
    :cond_1
    or-int/lit16 v3, v3, 0x200

    .line 453
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 454
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    goto :goto_1

    .line 459
    :cond_2
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    .line 460
    shr-int/lit8 v4, v3, 0xb

    .line 461
    and-int/lit16 v5, v3, 0x7ff

    .line 463
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v6, v3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 464
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v1, p7, v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    goto :goto_2
.end method

.method public setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    const/4 v1, -0x1

    .line 314
    if-ne v0, v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    shr-int/lit8 v1, v0, 0xb

    .line 316
    and-int/lit16 v0, v0, 0x7ff

    .line 317
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 318
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p3, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    goto :goto_0
.end method

.method public setIdAttribute(I)V
    .locals 4

    .prologue
    .line 747
    shr-int/lit8 v0, p1, 0xb

    .line 748
    and-int/lit16 v1, p1, 0x7ff

    .line 749
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    .line 750
    or-int/lit16 v2, v2, 0x200

    .line 751
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 752
    return-void
.end method

.method public setIdAttributeNode(II)V
    .locals 4

    .prologue
    .line 733
    shr-int/lit8 v0, p2, 0xb

    .line 734
    and-int/lit16 v1, p2, 0x7ff

    .line 735
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    .line 736
    or-int/lit16 v2, v2, 0x200

    .line 737
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 739
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    .line 741
    return-void
.end method

.method public setInputEncoding(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 339
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    .line 341
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    .line 343
    shr-int/lit8 v1, v0, 0xb

    .line 344
    and-int/lit16 v0, v0, 0x7ff

    .line 346
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setInternalSubset(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 219
    shr-int/lit8 v0, p1, 0xb

    .line 220
    and-int/lit16 v1, p1, 0x7ff

    .line 223
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    .line 224
    shr-int/lit8 v3, v2, 0xb

    .line 225
    and-int/lit16 v4, v2, 0x7ff

    .line 226
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    .line 227
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v0, p2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 228
    return-void
.end method

.method setNamespacesEnabled(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    .line 189
    return-void
.end method

.method public setTypeInfo(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 324
    shr-int/lit8 v0, p1, 0xb

    .line 325
    and-int/lit16 v1, p1, 0x7ff

    .line 326
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    .line 327
    return-void
.end method

.method protected synchronizeChildren()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1610
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1623
    :cond_0
    iget-boolean v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 1624
    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 1627
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    .line 1629
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    .line 1634
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    move v3, v0

    move-object v4, v1

    :goto_0
    const/4 v0, -0x1

    .line 1635
    if-eq v3, v0, :cond_5

    .line 1638
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1639
    if-eqz v1, :cond_2

    .line 1643
    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object v2, v1

    .line 1645
    :goto_1
    iput-object p0, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1646
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 1647
    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1651
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    .line 1652
    if-eq v1, v6, :cond_3

    const/16 v4, 0xa

    .line 1655
    if-eq v1, v4, :cond_4

    .line 1636
    :goto_2
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    move v3, v1

    move-object v4, v0

    move-object v1, v2

    goto :goto_0

    .line 1611
    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeData()V

    .line 1617
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    return-void

    :cond_2
    move-object v2, v0

    .line 1641
    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 1653
    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 1656
    check-cast v1, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_2

    .line 1660
    :cond_5
    if-nez v4, :cond_6

    .line 1667
    :goto_3
    iput-boolean v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    .line 1669
    return-void

    .line 1661
    :cond_6
    iput-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1662
    invoke-virtual {v4, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 1663
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto :goto_3
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1682
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v4

    .line 1683
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    .line 1686
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    .line 1690
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    .line 1691
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    .line 1692
    if-eq v2, v7, :cond_0

    move v2, v0

    move-object v3, v1

    .line 1699
    :goto_0
    if-eq v2, v7, :cond_2

    .line 1702
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1703
    if-eqz v1, :cond_1

    .line 1707
    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1709
    :goto_1
    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1710
    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 1711
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1700
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    move-object v3, v0

    goto :goto_0

    .line 1693
    :cond_0
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 1694
    invoke-virtual {p1, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    .line 1723
    :goto_2
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    .line 1725
    return-void

    :cond_1
    move-object v1, v0

    .line 1705
    goto :goto_1

    .line 1714
    :cond_2
    if-nez v1, :cond_3

    .line 1719
    :goto_3
    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_2

    .line 1715
    :cond_3
    iput-object v3, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 1716
    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 1717
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto :goto_3
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1739
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v4

    .line 1740
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    .line 1743
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    .line 1748
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    move v2, v0

    move-object v3, v1

    :goto_0
    const/4 v0, -0x1

    .line 1749
    if-eq v2, v0, :cond_1

    .line 1752
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    .line 1753
    if-eqz v1, :cond_0

    .line 1757
    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1759
    :goto_1
    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    .line 1760
    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    .line 1761
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1750
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 1755
    goto :goto_1

    .line 1764
    :cond_1
    if-nez v1, :cond_2

    .line 1771
    :goto_2
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    .line 1773
    return-void

    .line 1765
    :cond_2
    iput-object v3, p1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    .line 1766
    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    .line 1767
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto :goto_2
.end method

.method protected synchronizeData()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1529
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    .line 1532
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-nez v0, :cond_1

    .line 1600
    :cond_0
    return-void

    .line 1541
    :cond_1
    new-instance v6, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;

    invoke-direct {v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;-><init>()V

    .line 1542
    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v4, v0, :cond_0

    .line 1545
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    aget v3, v0, v4

    .line 1546
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v7, v0, v4

    .line 1547
    if-eqz v7, :cond_4

    .line 1552
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->removeAllElements()V

    move v0, v3

    .line 1555
    :cond_2
    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->addElement(I)V

    .line 1556
    shr-int/lit8 v1, v0, 0xb

    .line 1557
    and-int/lit16 v0, v0, 0x7ff

    .line 1558
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    const/4 v1, -0x1

    .line 1559
    if-ne v0, v1, :cond_2

    .line 1566
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    move v5, v0

    move-object v2, p0

    :goto_1
    if-ltz v5, :cond_7

    .line 1567
    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->elementAt(I)I

    move-result v8

    .line 1568
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 1569
    :goto_2
    if-eqz v1, :cond_9

    .line 1570
    instance-of v0, v1, Lmf/org/apache/xerces/dom/DeferredNode;

    if-nez v0, :cond_6

    .line 1578
    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_4
    move v1, v4

    .line 1542
    :cond_5
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 1572
    check-cast v0, Lmf/org/apache/xerces/dom/DeferredNode;

    invoke-interface {v0}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeIndex()I

    move-result v0

    .line 1573
    if-ne v0, v8, :cond_3

    .line 1566
    :goto_3
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    move-object v2, v1

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 1583
    check-cast v0, Lmf/org/w3c/dom/Element;

    .line 1584
    invoke-direct {p0, v7, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    .line 1585
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aput-object v9, v1, v4

    move v1, v4

    .line 1588
    :cond_8
    :goto_4
    add-int/lit8 v2, v1, 0x1

    iget v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v2, v4, :cond_5

    .line 1589
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    if-ne v2, v3, :cond_5

    .line 1590
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    .line 1591
    if-eqz v2, :cond_8

    .line 1594
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto :goto_3
.end method
