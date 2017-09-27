.class public Lmf/org/apache/wml/dom/WMLSelectElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLSelectElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLSelectElement;


# static fields
.field private static final serialVersionUID:J = 0x5a0df562e7ea561dL


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
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "iname"

    .line 103
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "ivalue"

    .line 87
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 95
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultiple()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "multiple"

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 111
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 2

    .prologue
    const-string/jumbo v0, "tabindex"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setIName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "iname"

    .line 99
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setIValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "ivalue"

    .line 83
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public setMultiple(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "multiple"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 107
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
