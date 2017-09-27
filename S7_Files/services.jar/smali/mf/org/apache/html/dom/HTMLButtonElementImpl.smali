.class public Lmf/org/apache/html/dom/HTMLButtonElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLButtonElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLButtonElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = -0xa75a14a413518baL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v0, "accesskey"

    .line 40
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 58
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 70
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "tabindex"

    .line 84
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 88
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 101
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 107
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "accesskey"

    .line 52
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setDisabled(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 64
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 76
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 113
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLButtonElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method
