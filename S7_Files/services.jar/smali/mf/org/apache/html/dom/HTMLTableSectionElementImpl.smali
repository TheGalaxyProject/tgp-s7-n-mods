.class public Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLTableSectionElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLTableSectionElement;


# static fields
.field private static final serialVersionUID:J = 0xe1b063c79fd2b2bL


# instance fields
.field private _rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 183
    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;

    const/4 v1, 0x0

    .line 171
    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    .line 172
    return-object v0
.end method

.method public deleteRow(I)V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->deleteRowX(I)I

    .line 141
    return-void
.end method

.method deleteRowX(I)I
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, p1

    .line 149
    :goto_0
    if-eqz v1, :cond_2

    .line 151
    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-nez v2, :cond_0

    .line 160
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_0
    if-eqz v0, :cond_1

    .line 158
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    const/4 v0, -0x1

    .line 156
    return v0

    .line 162
    :cond_2
    return v0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 41
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCh()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v0, "char"

    .line 56
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getChOff()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "charoff"

    .line 74
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lmf/org/apache/html/dom/HTMLCollectionImpl;

    goto :goto_0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "valign"

    .line 86
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertRow(I)Lmf/org/w3c/dom/html/HTMLElement;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v1, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v2, "TR"

    invoke-direct {v1, v0, v2}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, v3}, Lmf/org/apache/html/dom/HTMLTableRowElementImpl;->insertCell(I)Lmf/org/w3c/dom/html/HTMLElement;

    .line 110
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I

    move-result v0

    if-gez v0, :cond_0

    .line 112
    :goto_0
    return-object v1

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method insertRowX(ILmf/org/apache/html/dom/HTMLTableRowElementImpl;)I
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    move v0, p1

    .line 121
    :goto_0
    if-eqz v1, :cond_2

    .line 123
    instance-of v2, v1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    if-nez v2, :cond_0

    .line 132
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 125
    :cond_0
    if-eqz v0, :cond_1

    .line 130
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p0, p2, v1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    const/4 v0, -0x1

    .line 128
    return v0

    .line 134
    :cond_2
    return v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 47
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 66
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "char"

    .line 68
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void

    .line 66
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setChOff(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "charoff"

    .line 80
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "valign"

    .line 92
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
