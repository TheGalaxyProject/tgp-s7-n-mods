.class public final Lmf/org/apache/xerces/util/XMLLocatorWrapper;
.super Ljava/lang/Object;
.source "XMLLocatorWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 33
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    .line 65
    return-object v1

    .line 63
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 93
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 86
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    .line 100
    return-object v1

    .line 98
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    .line 72
    return-object v1

    .line 70
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 79
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    .line 58
    return-object v1

    .line 56
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocator()Lmf/org/apache/xerces/xni/XMLLocator;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    .line 51
    return-object v1

    .line 49
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    .line 107
    return-object v1

    .line 105
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 37
    return-void
.end method
