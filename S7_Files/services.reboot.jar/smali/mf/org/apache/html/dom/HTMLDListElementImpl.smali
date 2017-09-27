.class public Lmf/org/apache/html/dom/HTMLDListElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLDListElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLDListElement;


# static fields
.field private static final serialVersionUID:J = -0x1d8f4cd8b7fdb60cL


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getCompact()Z
    .locals 1

    .prologue
    const-string/jumbo v0, "compact"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLDListElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCompact(Z)V
    .locals 1

    .prologue
    const-string/jumbo v0, "compact"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLDListElementImpl;->setAttribute(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method
