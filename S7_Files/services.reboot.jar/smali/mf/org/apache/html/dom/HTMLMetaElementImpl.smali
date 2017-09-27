.class public Lmf/org/apache/html/dom/HTMLMetaElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLMetaElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLMetaElement;


# static fields
.field private static final serialVersionUID:J = -0x21557ba093a7e0d0L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "content"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpEquiv()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "http-equiv"

    .line 50
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 62
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "scheme"

    .line 74
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "content"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setHttpEquiv(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "http-equiv"

    .line 56
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 68
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "scheme"

    .line 80
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLMetaElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
