.class public Lmf/org/apache/wml/dom/WMLCardElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLCardElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLCardElement;


# static fields
.field private static final serialVersionUID:J = -0x318f30b17a1f9adcL


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

    .line 63
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 95
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewContext()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "newcontext"

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOnEnterBackward()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "onenterbackward"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnEnterForward()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "onenterforward"

    .line 103
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnTimer()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "ontimer"

    .line 39
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrdered()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "ordered"

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setNewContext(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "newcontext"

    .line 83
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public setOnEnterBackward(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "onenterbackward"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setOnEnterForward(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "onenterforward"

    .line 99
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setOnTimer(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "ontimer"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setOrdered(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "ordered"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLCardElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
