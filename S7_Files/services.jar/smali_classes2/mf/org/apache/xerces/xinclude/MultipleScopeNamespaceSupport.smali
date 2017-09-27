.class public Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.super Lmf/org/apache/xerces/util/NamespaceSupport;
.source "MultipleScopeNamespaceSupport.java"


# instance fields
.field protected fCurrentScope:I

.field protected fScope:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    const/16 v0, 0x8

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    .line 51
    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    .line 52
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    .line 53
    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/16 v0, 0x8

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    .line 60
    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    .line 61
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    .line 62
    return-void
.end method


# virtual methods
.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    .line 76
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v1, v1, v2

    aget v0, v0, v1

    move v2, v0

    move v0, v3

    .line 77
    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v1, v1, -0x2

    .line 76
    if-gt v2, v1, :cond_3

    .line 79
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object v5, v1, v2

    move v1, v3

    .line 80
    :goto_2
    if-ge v1, v0, :cond_4

    .line 81
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eq v6, v5, :cond_1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 71
    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 86
    :goto_3
    if-nez v1, :cond_2

    .line 78
    :goto_4
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_1

    .line 87
    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v5, v6, v0

    move v0, v1

    goto :goto_4

    .line 91
    :cond_3
    new-instance v1, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lmf/org/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v1

    :cond_4
    move v1, v4

    goto :goto_3
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    .line 129
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq p1, v0, :cond_2

    .line 134
    :goto_0
    if-le p2, p3, :cond_4

    .line 135
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_3

    .line 134
    :cond_0
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 127
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    return-object v0

    .line 130
    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    return-object v0

    .line 136
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 137
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    return-object v0

    :cond_4
    const/4 v0, 0x0

    .line 142
    return-object v0
.end method

.method public getScopeForContext(I)I
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    .line 96
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    .line 97
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    return v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 150
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    .line 155
    :goto_0
    if-le p2, p3, :cond_3

    .line 156
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x2

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_2

    .line 155
    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    .line 148
    :cond_0
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    return-object v0

    .line 151
    :cond_1
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    return-object v0

    .line 157
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, p2, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_3
    const/4 v0, 0x0

    .line 162
    return-object v0
.end method

.method public popScope()V
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    .line 194
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->popContext()V

    .line 195
    return-void
.end method

.method public pushScope()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 184
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    .line 185
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aput v2, v0, v1

    .line 186
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 181
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    .line 171
    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    .line 172
    return-void
.end method
