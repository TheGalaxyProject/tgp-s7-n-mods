.class public Lmf/org/apache/html/dom/HTMLSelectElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLSelectElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLSelectElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = -0x611ee50c1353f97bL


# instance fields
.field private _options:Lmf/org/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 226
    return-void
.end method


# virtual methods
.method public add(Lmf/org/w3c/dom/html/HTMLElement;Lmf/org/w3c/dom/html/HTMLElement;)V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 169
    return-void
.end method

.method public blur()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Lmf/org/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLSelectElementImpl;

    const/4 v1, 0x0

    .line 214
    iput-object v1, v0, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->_options:Lmf/org/w3c/dom/html/HTMLCollection;

    .line 215
    return-object v0
.end method

.method public focus()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 108
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getOptions()Lmf/org/w3c/dom/html/HTMLCollection;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/html/HTMLCollection;->getLength()I

    move-result v0

    return v0
.end method

.method public getMultiple()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "multiple"

    .line 120
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 132
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lmf/org/w3c/dom/html/HTMLCollection;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->_options:Lmf/org/w3c/dom/html/HTMLCollection;

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->_options:Lmf/org/w3c/dom/html/HTMLCollection;

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Lmf/org/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;-><init>(Lmf/org/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->_options:Lmf/org/w3c/dom/html/HTMLCollection;

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "OPTION"

    .line 68
    invoke-virtual {p0, v1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v2

    move v1, v0

    .line 69
    :goto_0
    invoke-interface {v2}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 70
    invoke-interface {v2, v1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/html/HTMLOptionElement;

    invoke-interface {v0}, Lmf/org/w3c/dom/html/HTMLOptionElement;->getSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_0
    return v1

    :cond_1
    const/4 v0, -0x1

    .line 72
    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 144
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTabIndex()I
    .locals 1

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 156
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 42
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 48
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "OPTION"

    .line 182
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    .line 183
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setDisabled(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 114
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public setMultiple(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "multiple"

    .line 126
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 138
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "OPTION"

    .line 86
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v4

    move v3, v2

    .line 87
    :goto_0
    invoke-interface {v4}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 88
    invoke-interface {v4, v3}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/html/dom/HTMLOptionElementImpl;

    if-eq v3, p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setSelected(Z)V

    .line 87
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    return-void
.end method

.method public setSize(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "size"

    .line 150
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 54
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
