.class public Lmf/org/apache/html/dom/HTMLBaseElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLBaseElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLBaseElement;


# static fields
.field private static final serialVersionUID:J = -0x5812dc85fd8e059L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "href"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "target"

    .line 48
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLBaseElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "href"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBaseElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "target"

    .line 54
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLBaseElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
