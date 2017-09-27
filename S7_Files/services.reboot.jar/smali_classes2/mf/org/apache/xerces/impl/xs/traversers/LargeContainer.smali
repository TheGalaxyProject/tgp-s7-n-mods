.class Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;
.super Lmf/org/apache/xerces/impl/xs/traversers/Container;
.source "XSAttributeChecker.java"


# instance fields
.field items:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 1774
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/Container;-><init>()V

    .line 1775
    new-instance v0, Ljava/util/Hashtable;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    .line 1776
    new-array v0, p1, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    .line 1777
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    .line 1784
    return-object v0
.end method

.method put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V
    .locals 3

    .prologue
    .line 1779
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->items:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/LargeContainer;->pos:I

    aput-object p2, v0, v1

    .line 1781
    return-void
.end method
