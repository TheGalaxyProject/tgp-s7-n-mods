.class public Lmf/org/apache/wml/dom/WMLTableElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLTableElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLTableElement;


# static fields
.field private static final serialVersionUID:J = 0x6a875f47370f22cbL


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
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 63
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumns()I
    .locals 2

    .prologue
    const-string/jumbo v0, "columns"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setColumns(I)V
    .locals 1

    .prologue
    const-string/jumbo v0, "columns"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->setAttribute(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "title"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
