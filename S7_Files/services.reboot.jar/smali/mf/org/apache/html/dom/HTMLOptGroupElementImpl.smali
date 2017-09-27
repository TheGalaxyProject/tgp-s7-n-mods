.class public Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLOptGroupElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLOptGroupElement;


# static fields
.field private static final serialVersionUID:J = -0x7a39198d5c1c846dL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getDisabled()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "label"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisabled(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "disabled"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "label"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLOptGroupElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
