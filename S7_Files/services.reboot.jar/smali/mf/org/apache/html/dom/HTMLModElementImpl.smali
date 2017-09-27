.class public Lmf/org/apache/html/dom/HTMLModElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLModElementImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLModElement;


# static fields
.field private static final serialVersionUID:J = 0x5928b343e9906ea8L


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
.method public getCite()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "cite"

    .line 37
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLModElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "datetime"

    .line 49
    invoke-virtual {p0, v0}, Lmf/org/apache/html/dom/HTMLModElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCite(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "cite"

    .line 43
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLModElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "datetime"

    .line 55
    invoke-virtual {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLModElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
