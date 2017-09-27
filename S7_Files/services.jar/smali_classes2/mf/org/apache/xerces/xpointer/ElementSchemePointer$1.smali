.class Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;
.super Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;
.source "ElementSchemePointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->parseXPointer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;-><init>(Lmf/org/apache/xerces/xpointer/ElementSchemePointer;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;)V

    return-void
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 136
    if-ne p2, v2, :cond_1

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Scanner;->addToken(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)V

    .line 139
    return-void

    .line 137
    :cond_1
    if-eqz p2, :cond_0

    .line 141
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$1;->this$0:Lmf/org/apache/xerces/xpointer/ElementSchemePointer;

    const-string/jumbo v1, "InvalidElementSchemeToken"

    new-array v2, v2, [Ljava/lang/Object;

    .line 142
    # invokes: Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->getTokenString(I)Ljava/lang/String;
    invoke-static {p1, p2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;->access$3(Lmf/org/apache/xerces/xpointer/ElementSchemePointer$Tokens;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 141
    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/xpointer/ElementSchemePointer;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    return-void
.end method
