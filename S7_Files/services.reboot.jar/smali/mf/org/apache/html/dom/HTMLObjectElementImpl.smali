.class public Lmf/org/apache/html/dom/HTMLObjectElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLObjectElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLObjectElement;
.implements Lmf/org/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = 0x1f995ce618552ccbL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 252
    return-void
.end method


# virtual methods
.method public getAlign()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchive()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "archive"

    .line 61
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "border"

    .line 72
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "code"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeBase()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "codebase"

    .line 84
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "codetype"

    .line 96
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "data"

    .line 108
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclare()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "declare"

    .line 120
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 132
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "hspace"

    .line 144
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 155
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandby()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "standby"

    .line 167
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .locals 1

    .prologue
    :try_start_0
    const-string/jumbo v0, "tabindex"

    .line 180
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 184
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 197
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "useMap"

    .line 209
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "vspace"

    .line 221
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 233
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "align"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public setArchive(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "archive"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "border"

    .line 78
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "code"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setCodeBase(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "codebase"

    .line 90
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setCodeType(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "codetype"

    .line 102
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "data"

    .line 114
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setDeclare(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "declare"

    .line 126
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "height"

    .line 138
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "hspace"

    .line 150
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 161
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setStandby(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "standby"

    .line 173
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public setTabIndex(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "tabindex"

    .line 191
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 203
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "useMap"

    .line 215
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "vspace"

    .line 227
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "width"

    .line 239
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLObjectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method
