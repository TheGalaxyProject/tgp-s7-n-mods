.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "XPathMatcherStack"
.end annotation


# instance fields
.field protected fContextStack:Lmf/org/apache/xerces/util/IntStack;

.field protected fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

.field protected fMatchersCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 3607
    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    .line 3613
    new-instance v0, Lmf/org/apache/xerces/util/IntStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/IntStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lmf/org/apache/xerces/util/IntStack;

    .line 3620
    return-void
.end method

.method private ensureMatcherCapacity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3672
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 3677
    :goto_0
    return-void

    .line 3673
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    .line 3674
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3675
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    goto :goto_0
.end method


# virtual methods
.method public addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V
    .locals 3

    .prologue
    .line 3647
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->ensureMatcherCapacity()V

    .line 3648
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    aput-object p1, v0, v1

    .line 3649
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 3628
    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    if-ge v0, v2, :cond_0

    .line 3629
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 3628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3631
    :cond_0
    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    .line 3632
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->clear()V

    .line 3633
    return-void
.end method

.method public getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 1

    .prologue
    .line 3653
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchers:[Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMatcherCount()I
    .locals 1

    .prologue
    .line 3642
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    return v0
.end method

.method public popContext()V
    .locals 1

    .prologue
    .line 3663
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->pop()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    .line 3664
    return-void
.end method

.method public pushContext()V
    .locals 2

    .prologue
    .line 3658
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lmf/org/apache/xerces/util/IntStack;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fMatchersCount:I

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/IntStack;->push(I)V

    .line 3659
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3637
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->fContextStack:Lmf/org/apache/xerces/util/IntStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/IntStack;->size()I

    move-result v0

    return v0
.end method
