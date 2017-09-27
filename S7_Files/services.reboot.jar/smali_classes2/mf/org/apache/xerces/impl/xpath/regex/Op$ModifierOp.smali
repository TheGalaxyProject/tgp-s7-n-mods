.class Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;
.super Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;
.source "Op.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModifierOp"
.end annotation


# instance fields
.field final v1:I

.field final v2:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Op$ChildOp;-><init>(I)V

    .line 206
    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v1:I

    .line 207
    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v2:I

    .line 208
    return-void
.end method


# virtual methods
.method getData()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v1:I

    return v0
.end method

.method getData2()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Op$ModifierOp;->v2:I

    return v0
.end method
