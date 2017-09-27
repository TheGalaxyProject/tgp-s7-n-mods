.class public Lmf/org/apache/html/dom/HTMLHRElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLHRElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLHRElement;


# static fields
.field private static final serialVersionUID:J = -0x3a6d1d470e2c2486L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoShade()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "noshade"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 73
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setNoShade(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "noshade"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 79
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHRElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method
