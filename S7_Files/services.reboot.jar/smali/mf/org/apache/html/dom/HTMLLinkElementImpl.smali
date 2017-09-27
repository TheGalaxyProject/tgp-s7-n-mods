.class public Lmf/org/apache/html/dom/HTMLLinkElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLLinkElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLLinkElement;


# static fields
.field private static final serialVersionUID:J = 0xc224c9e365591ffL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 151
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "charset"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "href"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHreflang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "hreflang"

    .line 73
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMedia()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "media"

    .line 85
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "rel"

    .line 97
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRev()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "rev"

    .line 109
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "target"

    .line 121
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 133
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "charset"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "href"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setHreflang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "hreflang"

    .line 79
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setMedia(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "media"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "rel"

    .line 103
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setRev(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "rev"

    .line 115
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "target"

    .line 127
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 139
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLinkElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
