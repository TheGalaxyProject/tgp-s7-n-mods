.class public Lmf/org/apache/wml/dom/WMLImgElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLImgElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLImgElement;


# static fields
.field private static final serialVersionUID:J = -0x6f0af0e5d40bc1eL


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
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "alt"

    .line 95
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "hspace"

    .line 111
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 103
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "localsrc"

    .line 63
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 119
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "vspace"

    .line 87
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 39
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "alt"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "hspace"

    .line 107
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 99
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setLocalSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "localsrc"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 115
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "vspace"

    .line 83
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLImgElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
