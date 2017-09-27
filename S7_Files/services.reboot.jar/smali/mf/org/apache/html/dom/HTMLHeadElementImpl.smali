.class public Lmf/org/apache/html/dom/HTMLHeadElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLHeadElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLHeadElement;


# static fields
.field private static final serialVersionUID:J = 0x595abedd02aa05c8L


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
.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "profile"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLHeadElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "profile"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLHeadElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
