.class public Lmf/org/apache/html/dom/HTMLLIElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLLIElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLLIElement;


# static fields
.field private static final serialVersionUID:J = -0x7cb9563bba826307L


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
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLIElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    const-string/jumbo v0, "value"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLIElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLLIElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "type"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLLIElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setValue(I)V
    .locals 2

    .prologue
    const-string/jumbo v0, "value"

    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLLIElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
