.class public Lcom/android/settings/sfinderconnect/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[B

.field private static final FIRST_CHAR:[C

.field private static final HEX_DIGITS:[C

.field private static final SECOND_CHAR:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x100

    const/16 v5, 0xa

    .line 25
    const/16 v2, 0x10

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->HEX_DIGITS:[C

    .line 30
    new-array v2, v6, [C

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->FIRST_CHAR:[C

    .line 31
    new-array v2, v6, [C

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->SECOND_CHAR:[C

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 34
    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->FIRST_CHAR:[C

    sget-object v3, Lcom/android/settings/sfinderconnect/Hex;->HEX_DIGITS:[C

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 35
    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->SECOND_CHAR:[C

    sget-object v3, Lcom/android/settings/sfinderconnect/Hex;->HEX_DIGITS:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const/16 v2, 0x67

    new-array v2, v2, [B

    sput-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    .line 41
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 42
    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_2

    .line 45
    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x30

    aput-byte v0, v2, v3

    .line 44
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    .local v0, "i":B
    goto :goto_2

    .line 47
    .end local v0    # "i":B
    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_3

    .line 48
    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x41

    add-int/lit8 v4, v0, 0xa

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 49
    sget-object v2, Lcom/android/settings/sfinderconnect/Hex;->DIGITS:[B

    add-int/lit8 v3, v0, 0x61

    add-int/lit8 v4, v0, 0xa

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 47
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    .restart local v0    # "i":B
    goto :goto_3

    .line 23
    .end local v0    # "i":B
    :cond_3
    return-void

    .line 25
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeHex([BZ)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "zeroTerminated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 59
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 61
    .local v0, "cArray":[C
    const/4 v3, 0x0

    .line 62
    .local v3, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 63
    aget-byte v5, p0, v1

    and-int/lit16 v2, v5, 0xff

    .line 64
    .local v2, "index":I
    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    .line 77
    .end local v2    # "index":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 68
    .restart local v2    # "index":I
    :cond_1
    const/4 v5, 0x4

    if-eq v2, v5, :cond_2

    .line 69
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Lcom/android/settings/sfinderconnect/Hex;->FIRST_CHAR:[C

    aget-char v5, v5, v2

    aput-char v5, v0, v3

    .line 70
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    sget-object v5, Lcom/android/settings/sfinderconnect/Hex;->SECOND_CHAR:[C

    aget-char v5, v5, v2

    aput-char v5, v0, v4

    .line 62
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/16 v5, 0x20

    aput-char v5, v0, v3

    .line 73
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    const/16 v5, 0x56

    aput-char v5, v0, v4

    goto :goto_1
.end method
