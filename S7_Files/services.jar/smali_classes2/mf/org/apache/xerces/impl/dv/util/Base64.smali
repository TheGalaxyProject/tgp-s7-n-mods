.class public final Lmf/org/apache/xerces/impl/dv/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXBIT:I = 0x6

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x3e

    const/16 v4, 0x30

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 50
    new-array v1, v1, [B

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/16 v1, 0x40

    .line 51
    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    move v1, v0

    :goto_0
    const/16 v2, 0x80

    .line 55
    if-ge v1, v2, :cond_0

    .line 56
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_1
    const/16 v2, 0x41

    .line 58
    if-lt v1, v2, :cond_1

    .line 59
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 58
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    const/16 v1, 0x7a

    :goto_2
    const/16 v2, 0x61

    .line 61
    if-lt v1, v2, :cond_2

    .line 62
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 61
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    const/16 v1, 0x39

    .line 65
    :goto_3
    if-lt v1, v4, :cond_3

    .line 66
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 65
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 69
    :cond_3
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aput-byte v7, v1, v5

    .line 70
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    const/16 v2, 0x3f

    aput-byte v2, v1, v6

    move v1, v0

    :goto_4
    const/16 v2, 0x19

    .line 72
    if-gt v1, v2, :cond_4

    .line 73
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_5
    const/16 v3, 0x33

    .line 75
    if-gt v2, v3, :cond_5

    .line 76
    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 75
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x34

    :goto_6
    const/16 v2, 0x3d

    .line 78
    if-gt v1, v2, :cond_6

    .line 79
    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 80
    :cond_6
    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    .line 81
    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    const/16 v1, 0x3f

    aput-char v6, v0, v1

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x0

    .line 200
    if-eqz p0, :cond_1

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 205
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->removeWhiteSpace([C)I

    move-result v0

    .line 207
    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_2

    .line 211
    div-int/lit8 v5, v0, 0x4

    .line 213
    if-eqz v5, :cond_3

    .line 223
    mul-int/lit8 v0, v5, 0x3

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    .line 225
    :goto_0
    add-int/lit8 v7, v5, -0x1

    if-ge v3, v7, :cond_5

    .line 227
    add-int/lit8 v7, v0, 0x1

    aget-char v8, v4, v0

    invoke-static {v8}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    :cond_0
    return-object v13

    .line 201
    :cond_1
    return-object v13

    .line 208
    :cond_2
    return-object v13

    .line 214
    :cond_3
    new-array v0, v1, [B

    return-object v0

    .line 228
    :cond_4
    add-int/lit8 v0, v7, 0x1

    aget-char v7, v4, v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 229
    add-int/lit8 v9, v0, 0x1

    aget-char v10, v4, v0

    invoke-static {v10}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    add-int/lit8 v0, v9, 0x1

    aget-char v9, v4, v9

    invoke-static {v9}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 233
    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v8, v11, v8

    .line 234
    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v7, v11, v7

    .line 235
    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v10, v11, v10

    .line 236
    sget-object v11, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v9, v11, v9

    .line 238
    add-int/lit8 v11, v2, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v12, v7, 0x4

    or-int/2addr v8, v12

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    .line 239
    add-int/lit8 v8, v11, 0x1

    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v7, v10, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v2, v7

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v11

    .line 240
    add-int/lit8 v2, v8, 0x1

    shl-int/lit8 v7, v10, 0x6

    or-int/2addr v7, v9

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 243
    :cond_5
    add-int/lit8 v5, v0, 0x1

    aget-char v0, v4, v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v7

    if-nez v7, :cond_7

    .line 245
    :cond_6
    return-object v13

    .line 244
    :cond_7
    add-int/lit8 v7, v5, 0x1

    aget-char v5, v4, v5

    invoke-static {v5}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 248
    sget-object v8, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v0, v8, v0

    .line 249
    sget-object v8, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v5, v8, v5

    .line 251
    add-int/lit8 v8, v7, 0x1

    aget-char v7, v4, v7

    .line 252
    add-int/lit8 v9, v8, 0x1

    aget-char v4, v4, v8

    .line 253
    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v8

    if-nez v8, :cond_b

    .line 255
    :cond_8
    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v8

    if-nez v8, :cond_c

    .line 262
    :cond_9
    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 272
    :cond_a
    return-object v13

    .line 254
    :cond_b
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 275
    sget-object v1, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v1, v1, v7

    .line 276
    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v3, v3, v4

    .line 277
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v7, v5, 0x4

    or-int/2addr v0, v7

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    .line 278
    add-int/lit8 v0, v4, 0x1

    and-int/lit8 v2, v5, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v2, v5

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    .line 279
    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v6, v0

    .line 283
    return-object v6

    .line 255
    :cond_c
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 256
    and-int/lit8 v4, v5, 0xf

    if-nez v4, :cond_d

    .line 258
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    .line 259
    mul-int/lit8 v3, v3, 0x3

    invoke-static {v6, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v5, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 261
    return-object v4

    .line 257
    :cond_d
    return-object v13

    .line 262
    :cond_e
    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 263
    sget-object v4, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v4, v4, v7

    .line 264
    and-int/lit8 v7, v4, 0x3

    if-nez v7, :cond_f

    .line 266
    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    .line 267
    mul-int/lit8 v3, v3, 0x3

    invoke-static {v6, v1, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    add-int/lit8 v1, v2, 0x1

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v5, 0x4

    or-int/2addr v0, v3

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    .line 269
    and-int/lit8 v0, v5, 0xf

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v2, v4, 0x2

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v0, v2

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    .line 270
    return-object v7

    .line 265
    :cond_f
    return-object v13
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v0, 0x0

    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 109
    if-eqz p0, :cond_0

    .line 112
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 113
    if-eqz v0, :cond_1

    .line 117
    rem-int/lit8 v7, v0, 0x18

    .line 118
    div-int/lit8 v1, v0, 0x18

    .line 119
    if-nez v7, :cond_2

    move v0, v1

    .line 122
    :goto_0
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 132
    :goto_1
    if-ge v4, v1, :cond_6

    .line 133
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 134
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 135
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 141
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 142
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 144
    and-int/lit8 v0, v2, -0x80

    if-eqz v0, :cond_3

    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 146
    :goto_2
    and-int/lit8 v2, v9, -0x80

    if-eqz v2, :cond_4

    shr-int/lit8 v2, v9, 0x4

    xor-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 147
    :goto_3
    and-int/lit8 v3, v10, -0x80

    if-eqz v3, :cond_5

    shr-int/lit8 v3, v10, 0x6

    xor-int/lit16 v3, v3, 0xfc

    int-to-byte v3, v3

    .line 155
    :goto_4
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v13, v0

    int-to-char v0, v0

    aput-char v0, v8, v6

    .line 156
    add-int/lit8 v0, v9, 0x1

    sget-object v6, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    int-to-char v2, v2

    aput-char v2, v8, v9

    .line 157
    add-int/lit8 v6, v0, 0x1

    sget-object v2, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v3, v9

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, v8, v0

    .line 158
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    int-to-char v0, v0

    aput-char v0, v8, v6

    .line 132
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_1

    .line 110
    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 114
    return-object v0

    .line 119
    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 144
    :cond_3
    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    goto :goto_2

    .line 146
    :cond_4
    shr-int/lit8 v2, v9, 0x4

    int-to-byte v2, v2

    goto :goto_3

    .line 147
    :cond_5
    shr-int/lit8 v3, v10, 0x6

    int-to-byte v3, v3

    goto :goto_4

    :cond_6
    const/16 v0, 0x8

    .line 162
    if-eq v7, v0, :cond_7

    const/16 v0, 0x10

    .line 174
    if-eq v7, v0, :cond_9

    .line 189
    :goto_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 163
    :cond_7
    aget-byte v0, p0, v2

    .line 164
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 169
    and-int/lit8 v2, v0, -0x80

    if-eqz v2, :cond_8

    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 170
    :goto_6
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, v8, v6

    .line 171
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    int-to-char v1, v1

    aput-char v1, v8, v2

    .line 172
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 173
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    goto :goto_5

    .line 169
    :cond_8
    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    goto :goto_6

    .line 175
    :cond_9
    aget-byte v0, p0, v2

    .line 176
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    .line 177
    and-int/lit8 v2, v1, 0xf

    int-to-byte v2, v2

    .line 178
    and-int/lit8 v3, v0, 0x3

    int-to-byte v3, v3

    .line 180
    and-int/lit8 v4, v0, -0x80

    if-eqz v4, :cond_a

    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    .line 181
    :goto_7
    and-int/lit8 v4, v1, -0x80

    if-eqz v4, :cond_b

    shr-int/lit8 v1, v1, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    .line 183
    :goto_8
    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v5, v0

    int-to-char v0, v0

    aput-char v0, v8, v6

    .line 184
    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    aget-char v1, v5, v1

    int-to-char v1, v1

    aput-char v1, v8, v4

    .line 185
    add-int/lit8 v1, v0, 0x1

    sget-object v3, Lmf/org/apache/xerces/impl/dv/util/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v2, v2, 0x2

    aget-char v2, v3, v2

    int-to-char v2, v2

    aput-char v2, v8, v0

    .line 186
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    goto :goto_5

    .line 180
    :cond_a
    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    goto :goto_7

    .line 181
    :cond_b
    shr-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    goto :goto_8
.end method

.method protected static isBase64(C)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isPad(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isData(C)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method protected static isData(C)Z
    .locals 2

    .prologue
    const/16 v0, 0x80

    .line 94
    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/util/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method protected static isPad(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x3d

    .line 90
    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected static isWhiteSpace(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x20

    .line 86
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method protected static removeWhiteSpace([C)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 293
    if-eqz p0, :cond_0

    .line 298
    array-length v3, p0

    move v2, v0

    .line 299
    :goto_0
    if-ge v2, v3, :cond_2

    .line 300
    aget-char v1, p0, v2

    invoke-static {v1}, Lmf/org/apache/xerces/impl/dv/util/Base64;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 294
    :cond_0
    return v0

    .line 301
    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-char v4, p0, v2

    int-to-char v4, v4

    aput-char v4, p0, v0

    move v0, v1

    goto :goto_1

    .line 303
    :cond_2
    return v0
.end method
