.class final Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;
.super Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;
.source "HexBinaryDV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XHex"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;-><init>([B)V

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;

    if-eqz v0, :cond_0

    .line 69
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->data:[B

    .line 70
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->data:[B

    array-length v3, v0

    .line 71
    array-length v0, v2

    if-ne v3, v0, :cond_1

    move v0, v1

    .line 73
    :goto_0
    if-ge v0, v3, :cond_3

    .line 74
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->data:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-ne v4, v5, :cond_2

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return v1

    .line 72
    :cond_1
    return v1

    .line 75
    :cond_2
    return v1

    .line 77
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 83
    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->data:[B

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/util/HexBin;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV$XHex;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
