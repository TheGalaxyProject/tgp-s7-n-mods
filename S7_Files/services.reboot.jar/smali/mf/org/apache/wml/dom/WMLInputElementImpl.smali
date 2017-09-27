.class public Lmf/org/apache/wml/dom/WMLInputElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLInputElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLInputElement;


# static fields
.field private static final serialVersionUID:J = 0x283559006c7fc31bL


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

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmptyOk()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "emptyok"

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "format"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 111
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLength()I
    .locals 2

    .prologue
    const-string/jumbo v0, "maxlength"

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 127
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTabIndex()I
    .locals 2

    .prologue
    const-string/jumbo v0, "tabindex"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 103
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 119
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 87
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setEmptyOk(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "emptyok"

    .line 91
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "format"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 107
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public setMaxLength(I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "maxlength"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 123
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setSize(I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 99
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 115
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 83
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method
