.class public final Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;
.super Ljava/lang/Object;
.source "AbstractSAXParser.java"

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/parsers/AbstractSAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocatorProxy"
.end annotation


# instance fields
.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 0

    .prologue
    .line 2211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    .line 2213
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2221
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2240
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
