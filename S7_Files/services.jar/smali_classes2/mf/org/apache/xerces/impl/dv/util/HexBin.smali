.class public final Lmf/org/apache/xerces/impl/dv/util/HexBin;
.super Ljava/lang/Object;
.source "HexBin.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final LOOKUPLENGTH:I = 0x10

.field private static final hexNumberTable:[B

.field private static final lookUpHexAlphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x41

    const/16 v5, 0x30

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 33
    new-array v2, v7, [B

    sput-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/16 v2, 0x10

    .line 34
    new-array v2, v2, [C

    sput-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    move v2, v1

    .line 38
    :goto_0
    if-ge v2, v7, :cond_0

    .line 39
    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x39

    .line 41
    :goto_1
    if-lt v2, v5, :cond_1

    .line 42
    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x30

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x46

    .line 44
    :goto_2
    if-lt v2, v6, :cond_2

    .line 45
    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x41

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 44
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    const/16 v2, 0x66

    :goto_3
    const/16 v3, 0x61

    .line 47
    if-lt v2, v3, :cond_4

    .line 48
    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    add-int/lit8 v4, v2, -0x61

    add-int/lit8 v4, v4, 0xa

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 47
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 52
    :cond_3
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    :cond_4
    if-lt v1, v0, :cond_3

    :goto_4
    const/16 v1, 0xf

    .line 54
    if-gt v0, v1, :cond_5

    .line 55
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 57
    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 10

    .prologue
    const/16 v9, 0x80

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v8, 0x0

    .line 89
    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 92
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 96
    div-int/lit8 v5, v2, 0x2

    .line 97
    new-array v6, v5, [B

    move v3, v0

    .line 100
    :goto_0
    if-ge v3, v5, :cond_6

    .line 101
    mul-int/lit8 v0, v3, 0x2

    aget-char v0, v4, v0

    .line 102
    if-lt v0, v9, :cond_2

    move v0, v1

    .line 103
    :goto_1
    if-eq v0, v1, :cond_3

    .line 105
    mul-int/lit8 v2, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v4, v2

    .line 106
    if-lt v2, v9, :cond_4

    move v2, v1

    .line 107
    :goto_2
    if-eq v2, v1, :cond_5

    .line 109
    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v3

    .line 100
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 90
    :cond_0
    return-object v8

    .line 93
    :cond_1
    return-object v8

    .line 102
    :cond_2
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v0, v2, v0

    goto :goto_1

    .line 104
    :cond_3
    return-object v8

    .line 106
    :cond_4
    sget-object v7, Lmf/org/apache/xerces/impl/dv/util/HexBin;->hexNumberTable:[B

    aget-byte v2, v7, v2

    goto :goto_2

    .line 108
    :cond_5
    return-object v8

    .line 111
    :cond_6
    return-object v6
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    if-eqz p0, :cond_0

    .line 68
    array-length v2, p0

    .line 69
    mul-int/lit8 v1, v2, 0x2

    .line 70
    new-array v3, v1, [C

    move v1, v0

    .line 72
    :goto_0
    if-ge v1, v2, :cond_2

    .line 73
    aget-byte v0, p0, v1

    .line 74
    if-ltz v0, :cond_1

    .line 76
    :goto_1
    mul-int/lit8 v4, v1, 0x2

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 77
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/HexBin;->lookUpHexAlphabet:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v5, v0

    int-to-char v0, v0

    aput-char v0, v3, v4

    .line 72
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_0
    return-object v1

    .line 75
    :cond_1
    add-int/lit16 v0, v0, 0x100

    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
