.class public Lmf/org/apache/wml/dom/WMLMetaElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLMetaElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLMetaElement;


# static fields
.field private static final serialVersionUID:J = -0x26bdfabefa3e2276L


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
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "content"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForua()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "forua"

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHttpEquiv()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "http-equiv"

    .line 63
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 87
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "scheme"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "content"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setForua(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "forua"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public setHttpEquiv(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "http-equiv"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 83
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "scheme"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
