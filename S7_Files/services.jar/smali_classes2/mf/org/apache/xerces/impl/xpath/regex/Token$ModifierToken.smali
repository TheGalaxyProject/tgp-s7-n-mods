.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;
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
    name = "ModifierToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e7d56b5cd050864L


# instance fields
.field final add:I

.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final mask:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;II)V
    .locals 1

    .prologue
    const/16 v0, 0x19

    .line 1386
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    .line 1387
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    .line 1388
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    .line 1389
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    .line 1390
    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method getOptions()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    return v0
.end method

.method getOptionsMask()I
    .locals 1

    .prologue
    .line 1403
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1393
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "(?"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1408
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->add:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1409
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->mask:I

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createOptionString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    .line 1410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1411
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ModifierToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    .line 1412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
