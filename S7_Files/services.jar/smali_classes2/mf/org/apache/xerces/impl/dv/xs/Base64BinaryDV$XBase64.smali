.class final Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;
.super Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;
.source "Base64BinaryDV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XBase64"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;-><init>([B)V

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 70
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    .line 73
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    array-length v3, v0

    .line 74
    array-length v0, v2

    if-ne v3, v0, :cond_1

    move v0, v1

    .line 76
    :goto_0
    if-ge v0, v3, :cond_3

    .line 77
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-ne v4, v5, :cond_2

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return v1

    .line 75
    :cond_1
    return v1

    .line 78
    :cond_2
    return v1

    .line 80
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    move v1, v0

    .line 85
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 86
    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
