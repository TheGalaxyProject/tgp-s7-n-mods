.class public Lmf/org/apache/xerces/impl/xs/opti/DefaultText;
.super Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;
.source "DefaultText.java"

# interfaces
.implements Lmf/org/w3c/dom/Text;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public deleteData(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public isElementContentWhitespace()Z
    .locals 3

    .prologue
    .line 226
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public replaceWholeText(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public splitText(I)Lmf/org/w3c/dom/Text;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "Method not supported"

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
