.class public Lmf/org/apache/html/dom/HTMLImageElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLImageElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLImageElement;


# static fields
.field private static final serialVersionUID:J = 0x13c4588521d240e3L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 73
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "alt"

    .line 85
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "border"

    .line 97
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 109
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "hspace"

    .line 121
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsMap()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "ismap"

    .line 133
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "longdesc"

    .line 145
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLowSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "lowsrc"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "useMap"

    .line 157
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "vspace"

    .line 169
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 181
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 79
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "alt"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "border"

    .line 103
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 115
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "hspace"

    .line 127
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setIsMap(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "ismap"

    .line 139
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "longdesc"

    .line 151
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setLowSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "lowsrc"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "useMap"

    .line 163
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "vspace"

    .line 175
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 187
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
