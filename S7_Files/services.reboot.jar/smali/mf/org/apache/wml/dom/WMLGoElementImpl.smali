.class public Lmf/org/apache/wml/dom/WMLGoElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLGoElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLGoElement;


# static fields
.field private static final serialVersionUID:J = -0x1c7b0ea1b5c97f91L


# direct methods
.method public constructor <init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lmf/org/apache/wml/dom/WMLElementImpl;-><init>(Lmf/org/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAcceptCharset()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "accept-charset"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 63
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "href"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "method"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendreferer()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "sendreferer"

    .line 39
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAcceptCharset(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "accept-charset"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "href"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "method"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setSendreferer(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "sendreferer"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLGoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
