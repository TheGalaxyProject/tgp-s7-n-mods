.class public Lmf/org/apache/html/dom/HTMLFrameElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFrameElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFrameElement;


# static fields
.field private static final serialVersionUID:J = 0x8d0d0bce500adf0L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public getFrameBorder()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "frameborder"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "longdesc"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "marginheight"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "marginwidth"

    .line 73
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 85
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoResize()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "noresize"

    .line 97
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getScrolling()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "scrolling"

    .line 109
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 121
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFrameBorder(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "frameborder"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "longdesc"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "marginheight"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "marginwidth"

    .line 79
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setNoResize(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "noresize"

    .line 103
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "scrolling"

    .line 115
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 127
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFrameElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method
