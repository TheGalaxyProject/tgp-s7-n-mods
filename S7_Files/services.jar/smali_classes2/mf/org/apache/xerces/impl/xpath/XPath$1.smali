.class Lmf/org/apache/xerces/impl/xpath/XPath$1;
.super Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;->parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/xpath/XPath;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$1;->this$0:Lmf/org/apache/xerces/impl/xpath/XPath;

    .line 157
    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x6

    .line 161
    if-ne p2, v0, :cond_1

    .line 174
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    .line 175
    return-void

    :cond_1
    const/16 v0, 0xb

    .line 162
    if-eq p2, v0, :cond_0

    const/16 v0, 0x15

    .line 163
    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    .line 164
    if-eq p2, v0, :cond_0

    const/16 v0, 0x9

    .line 165
    if-eq p2, v0, :cond_0

    const/16 v0, 0xa

    .line 166
    if-eq p2, v0, :cond_0

    const/16 v0, 0x16

    .line 167
    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    .line 168
    if-eq p2, v0, :cond_0

    const/16 v0, 0x24

    .line 169
    if-eq p2, v0, :cond_0

    const/16 v0, 0x23

    .line 170
    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    .line 171
    if-eq p2, v0, :cond_0

    .line 177
    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string/jumbo v1, "c-general-xpath"

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
