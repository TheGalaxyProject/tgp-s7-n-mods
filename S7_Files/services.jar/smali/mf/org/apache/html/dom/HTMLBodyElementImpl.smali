.class public Lmf/org/apache/html/dom/HTMLBodyElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLBodyElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLBodyElement;


# static fields
.field private static final serialVersionUID:J = 0x7db78250e4cbc182L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 115
    return-void
.end method


# virtual methods
.method public getALink()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "alink"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "background"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "bgcolor"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "link"

    .line 73
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "text"

    .line 85
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVLink()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "vlink"

    .line 97
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setALink(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "alink"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setBackground(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "background"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "bgcolor"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "link"

    .line 79
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "text"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setVLink(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "vlink"

    .line 103
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBodyElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
