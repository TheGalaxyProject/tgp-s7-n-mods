.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcatToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78fa25a6724b344dL


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1113
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1114
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1115
    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1116
    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    .prologue
    .line 1122
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0
.end method

.method size()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 1119
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1127
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1129
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    .line 1132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    :goto_0
    return-object v0

    .line 1127
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne v0, v1, :cond_0

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1129
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne v0, v1, :cond_1

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "+?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
