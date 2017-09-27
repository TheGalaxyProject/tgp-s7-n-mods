.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;
.super Ljava/lang/Object;
.source "NTLMUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getSecurityData([BI)[B
    .locals 4
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityDataLength([BI)I

    move-result v0

    .line 63
    .local v0, "dataLength":I
    new-array v1, v0, [B

    .line 64
    .local v1, "returnByteArray":[B
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getSecurityDataOffset([BI)I

    move-result v2

    .line 65
    const/4 v3, 0x0

    .line 64
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 66
    return-object v1
.end method

.method private static getSecurityDataLength([BI)I
    .locals 1
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I

    .prologue
    .line 30
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method private static getSecurityDataOffset([BI)I
    .locals 1
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I

    .prologue
    .line 34
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->getUnsignedValue([BII)I

    move-result v0

    return v0
.end method

.method protected static getUnsignedValue([BII)I
    .locals 4
    .param p0, "dataSource"    # [B
    .param p1, "index"    # I
    .param p2, "size"    # I

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "returnValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 50
    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return v1
.end method

.method protected static setSecurityDataAndAttributes([BII[B)V
    .locals 2
    .param p0, "destination"    # [B
    .param p1, "attributesOffset"    # I
    .param p2, "dataOffset"    # I
    .param p3, "src"    # [B

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "srcDataLen":I
    if-nez p3, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->writeSecurityDatalength([BII)V

    .line 78
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->writeSecurityDataOffset([BII)V

    .line 79
    if-eqz p3, :cond_0

    .line 80
    const/4 v1, 0x0

    invoke-static {p3, v1, p0, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 71
    :cond_0
    return-void

    .line 76
    :cond_1
    array-length v0, p3

    goto :goto_0
.end method

.method protected static setUnsignedValue([BIII)V
    .locals 3
    .param p0, "dataDest"    # [B
    .param p1, "offset"    # I
    .param p2, "longValue"    # I
    .param p3, "size"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 57
    add-int v1, p1, v0

    mul-int/lit8 v2, v0, 0x8

    shr-int v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private static writeSecurityDataOffset([BII)V
    .locals 2
    .param p0, "destination"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I

    .prologue
    .line 43
    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 42
    return-void
.end method

.method private static writeSecurityDatalength([BII)V
    .locals 2
    .param p0, "destination"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v1, 0x2

    .line 38
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 39
    add-int/lit8 v0, p1, 0x2

    invoke-static {p0, v0, p2, v1}, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMUtils;->setUnsignedValue([BIII)V

    .line 37
    return-void
.end method
