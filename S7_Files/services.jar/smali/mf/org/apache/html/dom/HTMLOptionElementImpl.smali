.class public Lmf/org/apache/html/dom/HTMLOptionElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOptionElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOptionElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4439af5ea1121bL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 205
    return-void
.end method


# virtual methods
.method public getDefaultSelected()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "default-selected"

    .line 43
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 151
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 101
    :goto_0
    if-nez v0, :cond_2

    .line 103
    :cond_0
    if-nez v0, :cond_3

    :cond_1
    const/4 v0, -0x1

    .line 113
    return v0

    .line 101
    :cond_2
    instance-of v2, v0, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-nez v2, :cond_0

    .line 102
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    const-string/jumbo v2, "OPTION"

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v2

    move v0, v1

    .line 109
    :goto_1
    invoke-interface {v2}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 110
    invoke-interface {v2, v0}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eq v1, p0, :cond_4

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_4
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "label"

    .line 163
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "selected"

    .line 175
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 62
    :goto_0
    if-eqz v1, :cond_1

    .line 64
    instance-of v0, v1, Lmf/org/w3c/dom/Text;

    if-nez v0, :cond_0

    .line 67
    :goto_1
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 65
    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 187
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultSelected(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "default-selected"

    .line 50
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 157
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method

.method public setIndex(I)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 127
    :goto_0
    if-nez v0, :cond_2

    .line 129
    :cond_0
    if-nez v0, :cond_3

    .line 146
    :cond_1
    :goto_1
    return-void

    .line 127
    :cond_2
    instance-of v1, v0, Lmf/org/w3c/dom/html/HTMLSelectElement;

    if-nez v1, :cond_0

    .line 128
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    check-cast v0, Lmf/org/w3c/dom/html/HTMLElement;

    const-string/jumbo v1, "OPTION"

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lmf/org/w3c/dom/NodeList;

    move-result-object v0

    .line 136
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 141
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 142
    invoke-interface {v0, p1}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 143
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "label"

    .line 169
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "selected"

    .line 181
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 182
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    .line 81
    :goto_0
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    .line 84
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    .line 88
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 193
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method
