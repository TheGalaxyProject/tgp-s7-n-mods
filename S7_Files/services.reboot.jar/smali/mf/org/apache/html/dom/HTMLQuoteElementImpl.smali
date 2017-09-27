.class public Lmf/org/apache/html/dom/HTMLQuoteElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLQuoteElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLQuoteElement;


# static fields
.field private static final serialVersionUID:J = -0xeff7a5f5b6c0d4L


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
.method public getCite()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "cite"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLQuoteElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCite(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "cite"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLQuoteElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
