.class public Lmf/org/apache/html/dom/HTMLIFrameElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLIFrameElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLIFrameElement;


# static fields
.field private static final serialVersionUID:J = 0x2137db36a48e8c9dL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 162
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameBorder()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "frameborder"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "longdesc"

    .line 72
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "marginheight"

    .line 84
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "marginwidth"

    .line 96
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 108
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScrolling()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "scrolling"

    .line 120
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 132
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 144
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFrameBorder(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "frameborder"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "longdesc"

    .line 78
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "marginheight"

    .line 90
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "marginwidth"

    .line 102
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 114
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "scrolling"

    .line 126
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 138
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 150
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLIFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
