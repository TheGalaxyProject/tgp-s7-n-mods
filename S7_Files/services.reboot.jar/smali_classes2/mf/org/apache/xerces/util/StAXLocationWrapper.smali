.class public final Lmf/org/apache/xerces/util/StAXLocationWrapper;
.super Ljava/lang/Object;
.source "StAXLocationWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocation:Lmf/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    .line 36
    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 90
    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 83
    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 76
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    .line 61
    return-object v1

    .line 59
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lmf/javax/xml/stream/Location;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    .line 54
    return-object v1

    .line 52
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    return-object v0
.end method

.method public setLocation(Lmf/javax/xml/stream/Location;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    .line 40
    return-void
.end method
