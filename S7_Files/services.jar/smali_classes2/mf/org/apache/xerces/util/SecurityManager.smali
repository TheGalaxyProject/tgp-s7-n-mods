.class public final Lmf/org/apache/xerces/util/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static final DEFAULT_ENTITY_EXPANSION_LIMIT:I = 0x186a0

.field private static final DEFAULT_MAX_OCCUR_NODE_LIMIT:I = 0xbb8


# instance fields
.field private entityExpansionLimit:I

.field private maxOccurLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    .line 65
    iput v0, p0, Lmf/org/apache/xerces/util/SecurityManager;->entityExpansionLimit:I

    const/16 v0, 0xbb8

    .line 66
    iput v0, p0, Lmf/org/apache/xerces/util/SecurityManager;->maxOccurLimit:I

    .line 67
    return-void
.end method


# virtual methods
.method public getEntityExpansionLimit()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lmf/org/apache/xerces/util/SecurityManager;->entityExpansionLimit:I

    return v0
.end method

.method public getMaxOccurNodeLimit()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lmf/org/apache/xerces/util/SecurityManager;->maxOccurLimit:I

    return v0
.end method

.method public setEntityExpansionLimit(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lmf/org/apache/xerces/util/SecurityManager;->entityExpansionLimit:I

    .line 78
    return-void
.end method

.method public setMaxOccurNodeLimit(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lmf/org/apache/xerces/util/SecurityManager;->maxOccurLimit:I

    .line 102
    return-void
.end method
