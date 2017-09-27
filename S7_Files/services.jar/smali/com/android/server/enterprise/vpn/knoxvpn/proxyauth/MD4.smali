.class public Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;
.super Ljava/security/MessageDigest;
.source "MD4.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final BLOCK_LENGTH:I = 0x40


# instance fields
.field private X:[I

.field private buffer:[B

.field private context:[I

.field private count:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "MD4"

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    .line 11
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->engineReset()V

    .line 14
    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;)V
    .locals 2
    .param p1, "md"    # Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;-><init>()V

    .line 21
    iget-object v0, p1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    .line 22
    iget-object v0, p1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    .line 23
    iget-wide v0, p1, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    .line 19
    return-void
.end method

.method private FF(IIIIII)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 167
    and-int v1, p2, p3

    not-int v2, p2

    and-int/2addr v2, p4

    or-int/2addr v1, v2

    add-int/2addr v1, p1

    add-int v0, v1, p5

    .line 168
    .local v0, "t":I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private GG(IIIIII)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 171
    or-int v1, p3, p4

    and-int/2addr v1, p2

    and-int v2, p3, p4

    or-int/2addr v1, v2

    add-int/2addr v1, p1

    add-int/2addr v1, p5

    const v2, 0x5a827999

    add-int v0, v1, v2

    .line 172
    .local v0, "t":I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private HH(IIIIII)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I

    .prologue
    .line 175
    xor-int v1, p2, p3

    xor-int/2addr v1, p4

    add-int/2addr v1, p1

    add-int/2addr v1, p5

    const v2, 0x6ed9eba1

    add-int v0, v1, v2

    .line 176
    .local v0, "t":I
    shl-int v1, v0, p6

    rsub-int/lit8 v2, p6, 0x20

    ushr-int v2, v0, v2

    or-int/2addr v1, v2

    return v1
.end method

.method private transform([BI)V
    .locals 14
    .param p1, "block"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 99
    const/4 v12, 0x0

    .local v12, "i":I
    move/from16 v13, p2

    .end local p2    # "offset":I
    .local v13, "offset":I
    :goto_0
    const/16 v0, 0x10

    if-ge v12, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    add-int/lit8 p2, v13, 0x1

    .end local v13    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v5, p1, v13

    and-int/lit16 v5, v5, 0xff

    .line 101
    add-int/lit8 v13, p2, 0x1

    .end local p2    # "offset":I
    .restart local v13    # "offset":I
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    .line 100
    or-int/2addr v5, v6

    .line 102
    add-int/lit8 p2, v13, 0x1

    .end local v13    # "offset":I
    .restart local p2    # "offset":I
    aget-byte v6, p1, v13

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 100
    or-int/2addr v5, v6

    .line 103
    add-int/lit8 v13, p2, 0x1

    .end local p2    # "offset":I
    .restart local v13    # "offset":I
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    .line 100
    or-int/2addr v5, v6

    aput v5, v0, v12

    .line 99
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x0

    aget v1, v0, v5

    .line 105
    .local v1, "A":I
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x1

    aget v2, v0, v5

    .line 106
    .local v2, "B":I
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x2

    aget v3, v0, v5

    .line 107
    .local v3, "C":I
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x3

    aget v4, v0, v5

    .line 109
    .local v4, "D":I
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v1

    .line 110
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x1

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v4

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x2

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v3

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x3

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v2

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x4

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v1

    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x5

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v4

    .line 115
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x6

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v3

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x7

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v2

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0x8

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v1

    .line 118
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0x9

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v4

    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xa

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v3

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xb

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v2

    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xc

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v1

    .line 122
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xd

    aget v10, v0, v5

    const/4 v11, 0x7

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v4

    .line 123
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xe

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v3

    .line 124
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xf

    aget v10, v0, v5

    const/16 v11, 0x13

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->FF(IIIIII)I

    move-result v2

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v1

    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x4

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v4

    .line 128
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0x8

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v3

    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xc

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v2

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v1

    .line 131
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x5

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v4

    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0x9

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v3

    .line 133
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xd

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v2

    .line 134
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v1

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x6

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v4

    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xa

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v3

    .line 137
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xe

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v2

    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v1

    .line 139
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x7

    aget v10, v0, v5

    const/4 v11, 0x5

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v4

    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xb

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v3

    .line 141
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xf

    aget v10, v0, v5

    const/16 v11, 0xd

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->GG(IIIIII)I

    move-result v2

    .line 143
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v1

    .line 144
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0x8

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v4

    .line 145
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x4

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v3

    .line 146
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xc

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v2

    .line 147
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x2

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v1

    .line 148
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xa

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v4

    .line 149
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x6

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v3

    .line 150
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xe

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v2

    .line 151
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v1

    .line 152
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0x9

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v4

    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x5

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v3

    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xd

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v2

    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x3

    aget v5, v0, v5

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v1

    .line 156
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xb

    aget v10, v0, v5

    const/16 v11, 0x9

    move-object v5, p0

    move v6, v4

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v4

    .line 157
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/4 v5, 0x7

    aget v10, v0, v5

    const/16 v11, 0xb

    move-object v5, p0

    move v6, v3

    move v7, v4

    move v8, v1

    move v9, v2

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v3

    .line 158
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->X:[I

    const/16 v5, 0xf

    aget v10, v0, v5

    const/16 v11, 0xf

    move-object v5, p0

    move v6, v2

    move v7, v3

    move v8, v4

    move v9, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->HH(IIIIII)I

    move-result v2

    .line 160
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x0

    aget v6, v0, v5

    add-int/2addr v6, v1

    aput v6, v0, v5

    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x1

    aget v6, v0, v5

    add-int/2addr v6, v2

    aput v6, v0, v5

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x2

    aget v6, v0, v5

    add-int/2addr v6, v3

    aput v6, v0, v5

    .line 163
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const/4 v5, 0x3

    aget v6, v0, v5

    add-int/2addr v6, v4

    aput v6, v0, v5

    .line 98
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;)V

    return-object v0
.end method

.method public engineDigest()[B
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x0

    const/16 v12, 0x8

    .line 72
    iget-wide v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    const-wide/16 v8, 0x40

    rem-long/2addr v6, v8

    long-to-int v0, v6

    .line 73
    .local v0, "bufferNdx":I
    const/16 v6, 0x38

    if-ge v0, v6, :cond_0

    rsub-int/lit8 v3, v0, 0x38

    .line 76
    .local v3, "padLen":I
    :goto_0
    add-int/lit8 v6, v3, 0x8

    new-array v5, v6, [B

    .line 77
    .local v5, "tail":[B
    const/16 v6, -0x80

    aput-byte v6, v5, v13

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v12, :cond_1

    .line 81
    add-int v6, v3, v1

    iget-wide v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    const-wide/16 v10, 0x8

    mul-long/2addr v8, v10

    mul-int/lit8 v7, v1, 0x8

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "i":I
    .end local v3    # "padLen":I
    .end local v5    # "tail":[B
    :cond_0
    rsub-int/lit8 v3, v0, 0x78

    goto :goto_0

    .line 83
    .restart local v1    # "i":I
    .restart local v3    # "padLen":I
    .restart local v5    # "tail":[B
    :cond_1
    array-length v6, v5

    invoke-virtual {p0, v5, v13, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->engineUpdate([BII)V

    .line 85
    const/16 v6, 0x10

    new-array v4, v6, [B

    .line 87
    .local v4, "result":[B
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v14, :cond_3

    .line 88
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v14, :cond_2

    .line 89
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    aget v7, v7, v1

    mul-int/lit8 v8, v2, 0x8

    ushr-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    .end local v2    # "j":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->engineReset()V

    .line 95
    return-object v4
.end method

.method public engineReset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const v2, 0x67452301

    aput v2, v1, v4

    .line 31
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const v2, -0x10325477

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 32
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const v2, -0x67452302

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 33
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->context:[I

    const v2, 0x10325476

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 34
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    aput-byte v4, v1, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public engineUpdate(B)V
    .locals 6
    .param p1, "b"    # B

    .prologue
    .line 41
    iget-wide v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    const-wide/16 v4, 0x40

    rem-long/2addr v2, v4

    long-to-int v0, v2

    .line 42
    .local v0, "i":I
    iget-wide v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    .line 43
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    aput-byte p1, v1, v0

    .line 44
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->transform([BI)V

    .line 39
    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 9
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v8, 0x0

    .line 49
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 50
    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 49
    :cond_1
    int-to-long v4, p2

    int-to-long v6, p3

    add-long/2addr v4, v6

    array-length v3, p1

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 51
    iget-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    const-wide/16 v6, 0x40

    rem-long/2addr v4, v6

    long-to-int v0, v4

    .line 52
    .local v0, "bufferNdx":I
    iget-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->count:J

    .line 53
    rsub-int/lit8 v2, v0, 0x40

    .line 54
    .local v2, "partLen":I
    const/4 v1, 0x0

    .line 55
    .local v1, "i":I
    if-lt p3, v2, :cond_3

    .line 56
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    invoke-static {p1, p2, v3, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 59
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    invoke-direct {p0, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->transform([BI)V

    .line 61
    move v1, v2

    :goto_0
    add-int/lit8 v3, v1, 0x40

    add-int/lit8 v3, v3, -0x1

    if-ge v3, p3, :cond_2

    .line 62
    add-int v3, p2, v1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->transform([BI)V

    .line 61
    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 66
    :cond_3
    if-ge v1, p3, :cond_4

    .line 67
    add-int v3, p2, v1

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/MD4;->buffer:[B

    sub-int v5, p3, v1

    invoke-static {p1, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 48
    :cond_4
    return-void
.end method
