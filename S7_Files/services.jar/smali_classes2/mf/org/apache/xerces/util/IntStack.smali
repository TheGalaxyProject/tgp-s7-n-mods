.class public final Lmf/org/apache/xerces/util/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v0, v0

    if-le v0, p1, :cond_1

    .line 112
    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x20

    .line 105
    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 109
    iget-object v1, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget-object v2, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    .line 74
    return-void
.end method

.method public elementAt(I)I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    aget v0, v0, p1

    return v0
.end method

.method public peek()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    aget v0, v0, v1

    return v0
.end method

.method public print()V
    .locals 3

    .prologue
    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(I)V

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, ") {"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    .line 84
    if-eq v0, v1, :cond_0

    .line 88
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 89
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    .line 90
    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 83
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 94
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 96
    return-void

    .line 91
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1
.end method

.method public push(I)V
    .locals 3

    .prologue
    .line 52
    iget v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/IntStack;->ensureCapacity(I)V

    .line 53
    iget-object v0, p0, Lmf/org/apache/xerces/util/IntStack;->fData:[I

    iget v1, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    aput p1, v0, v1

    .line 54
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lmf/org/apache/xerces/util/IntStack;->fDepth:I

    return v0
.end method
