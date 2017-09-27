.class public Lmf/org/apache/html/dom/HTMLInputElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLInputElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLInputElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = 0x8e23b5328e32967L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 285
    return-void
.end method


# virtual methods
.method public blur()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public click()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public focus()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public getAccept()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "accept"

    .line 65
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string/jumbo v0, "accesskey"

    .line 80
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 98
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "alt"

    .line 110
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "checked"

    .line 122
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultChecked()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "defaultChecked"

    .line 52
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "defaultValue"

    .line 38
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 134
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    const-string/jumbo v0, "maxlength"

    .line 146
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 158
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "readonly"

    .line 170
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 182
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 194
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "tabindex"

    .line 208
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 212
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 225
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "useMap"

    .line 231
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 243
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public setAccept(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "accept"

    .line 71
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "accesskey"

    .line 92
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void

    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 104
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "alt"

    .line 116
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "checked"

    .line 128
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setDefaultChecked(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "defaultChecked"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "defaultValue"

    .line 45
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 140
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public setMaxLength(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "maxlength"

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 164
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "readonly"

    .line 176
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "size"

    .line 188
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "src"

    .line 200
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "useMap"

    .line 237
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 249
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method
