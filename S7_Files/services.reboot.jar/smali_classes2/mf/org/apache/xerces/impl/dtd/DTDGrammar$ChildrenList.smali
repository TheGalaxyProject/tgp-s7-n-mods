.class Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;
.super Ljava/lang/Object;
.source "DTDGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dtd/DTDGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildrenList"
.end annotation


# instance fields
.field public length:I

.field public qname:[Lmf/org/apache/xerces/xni/QName;

.field public type:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 2625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2609
    iput v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->length:I

    .line 2616
    new-array v0, v1, [Lmf/org/apache/xerces/xni/QName;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->qname:[Lmf/org/apache/xerces/xni/QName;

    .line 2619
    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dtd/DTDGrammar$ChildrenList;->type:[I

    .line 2625
    return-void
.end method
