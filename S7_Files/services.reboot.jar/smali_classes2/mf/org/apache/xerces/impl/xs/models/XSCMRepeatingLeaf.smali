.class public final Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;
.super Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;
.source "XSCMRepeatingLeaf.java"


# instance fields
.field private final fMaxOccurs:I

.field private final fMinOccurs:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;IIII)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p5, p6}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    .line 36
    iput p3, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->fMinOccurs:I

    .line 37
    iput p4, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->fMaxOccurs:I

    .line 38
    return-void
.end method


# virtual methods
.method final getMaxOccurs()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->fMaxOccurs:I

    return v0
.end method

.method final getMinOccurs()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;->fMinOccurs:I

    return v0
.end method
