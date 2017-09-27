.class public Lmf/org/apache/wml/dom/WMLDoElementImpl;
.super Lmf/org/apache/wml/dom/WMLElementImpl;
.source "WMLDoElementImpl.java"

# interfaces
.implements Lmf/org/apache/wml/WMLDoElement;


# static fields
.field private static final serialVersionUID:J = 0x6ba25ae776e79dbaL


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

    .line 47
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 63
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "label"

    .line 71
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 87
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptional()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "optional"

    .line 39
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 79
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 55
    invoke-virtual {p0, v0}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "class"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "id"

    .line 59
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "label"

    .line 67
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "name"

    .line 83
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setOptional(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "optional"

    .line 35
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 75
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "xml:lang"

    .line 51
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/wml/dom/WMLDoElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
