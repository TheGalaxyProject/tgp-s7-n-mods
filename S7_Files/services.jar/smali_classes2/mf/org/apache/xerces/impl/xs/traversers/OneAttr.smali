.class Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# instance fields
.field public dfltValue:Ljava/lang/Object;

.field public dvIndex:I

.field public name:Ljava/lang/String;

.field public valueIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 1729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1730
    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->name:Ljava/lang/String;

    .line 1731
    iput p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    .line 1732
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    .line 1733
    iput-object p4, p0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    .line 1734
    return-void
.end method
