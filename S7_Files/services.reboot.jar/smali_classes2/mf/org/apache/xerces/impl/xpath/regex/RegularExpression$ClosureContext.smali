.class final Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;
.super Ljava/lang/Object;
.source "RegularExpression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClosureContext"
.end annotation


# instance fields
.field currentIndex:I

.field offsets:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 1976
    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    const/4 v0, 0x0

    .line 1977
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    .line 1974
    return-void
.end method

.method private expandOffsets()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2001
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    array-length v0, v0

    .line 2002
    shl-int/lit8 v0, v0, 0x1

    .line 2003
    new-array v0, v0, [I

    .line 2005
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2006
    return-object v0
.end method


# virtual methods
.method addOffset(I)V
    .locals 3

    .prologue
    .line 1994
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 1997
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    aput p1, v0, v1

    .line 1998
    return-void

    .line 1995
    :cond_0
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->expandOffsets()[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    goto :goto_0
.end method

.method contains(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1980
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    if-ge v0, v2, :cond_1

    .line 1981
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->offsets:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 1980
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1982
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1985
    :cond_1
    return v1
.end method

.method reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1989
    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression$ClosureContext;->currentIndex:I

    .line 1990
    return-void
.end method
