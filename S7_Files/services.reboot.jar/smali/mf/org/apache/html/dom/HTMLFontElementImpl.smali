.class public Lmf/org/apache/html/dom/HTMLFontElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLFontElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLFontElement;


# static fields
.field private static final serialVersionUID:J = -0x5c59fe3f6a20b2eL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "color"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "face"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "color"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "face"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
