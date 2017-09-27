.class final Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;
.super Ljava/lang/Object;
.source "SchemaDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BooleanStack"
.end annotation


# instance fields
.field private fData:[Z

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 599
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 607
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x20

    .line 600
    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    goto :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    .line 604
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 590
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    .line 591
    return-void
.end method

.method public pop()Z
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public push(Z)V
    .locals 3

    .prologue
    .line 579
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->ensureCapacity(I)V

    .line 580
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fData:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    aput-boolean p1, v0, v1

    .line 581
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->fDepth:I

    return v0
.end method
