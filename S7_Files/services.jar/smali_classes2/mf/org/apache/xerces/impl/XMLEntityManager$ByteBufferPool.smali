.class final Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ByteBufferPool"
.end annotation


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x3


# instance fields
.field private fBufferSize:I

.field private fByteBufferPool:[[B

.field private fDepth:I

.field private fPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 2928
    invoke-direct {p0, v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(II)V

    .line 2929
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 2931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2932
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fPoolSize:I

    .line 2933
    iput p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fBufferSize:I

    .line 2934
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fPoolSize:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    const/4 v0, 0x0

    .line 2935
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    .line 2936
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 2

    .prologue
    .line 2940
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    if-gtz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fBufferSize:I

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public returnBuffer([B)V
    .locals 3

    .prologue
    .line 2945
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 2948
    :goto_0
    return-void

    .line 2946
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    aput-object p1, v0, v1

    goto :goto_0
.end method

.method public setBufferSize(I)V
    .locals 1

    .prologue
    .line 2952
    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fBufferSize:I

    .line 2953
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fPoolSize:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fByteBufferPool:[[B

    const/4 v0, 0x0

    .line 2954
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->fDepth:I

    .line 2955
    return-void
.end method
