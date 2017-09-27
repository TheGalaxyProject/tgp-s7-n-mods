.class public final Lcom/android/server/enterprise/otp/engine/common/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final base32Chars:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

.field private static final base32Lookup:[B

.field private static final errorCanonicalEnd:Ljava/lang/String; = "non canonical bits at end of Base32 string"

.field private static final errorCanonicalLength:Ljava/lang/String; = "non canonical Base32 string length"

.field private static final errorInvalidChar:Ljava/lang/String; = "invalid character in Base32 string"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    .line 43
    return-void

    .line 47
    :array_0
    .array-data 1
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 10
    .param p0, "base32"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    rem-int/lit8 v8, v8, 0x8

    packed-switch v8, :pswitch_data_0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x5

    div-int/lit8 v8, v8, 0x8

    new-array v0, v8, [B

    .line 81
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .local v6, "offset":I
    const/4 v2, 0x0

    .line 85
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 88
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 89
    .local v4, "lookup":I
    if-ltz v4, :cond_0

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_1

    .line 90
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 78
    .end local v0    # "bytes":[B
    .end local v3    # "i":I
    .end local v4    # "lookup":I
    .end local v6    # "offset":I
    :pswitch_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical Base32 string length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 92
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    .restart local v4    # "lookup":I
    .restart local v6    # "offset":I
    :cond_1
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 93
    .local v1, "digit":B
    if-ne v1, v9, :cond_2

    .line 94
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 97
    :cond_2
    shl-int/lit8 v8, v1, 0x3

    int-to-byte v5, v8

    .line 101
    .local v5, "nextByte":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 102
    if-ltz v4, :cond_3

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_4

    .line 103
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 105
    :cond_4
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 106
    if-ne v1, v9, :cond_5

    .line 107
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 110
    :cond_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    shr-int/lit8 v8, v1, 0x2

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 111
    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x6

    int-to-byte v5, v8

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_8

    .line 113
    if-eqz v5, :cond_6

    .line 114
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    .line 216
    .end local v1    # "digit":B
    .end local v4    # "lookup":I
    .end local v5    # "nextByte":B
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :cond_7
    :goto_1
    return-object v0

    .line 120
    .end local v6    # "offset":I
    .restart local v1    # "digit":B
    .restart local v4    # "lookup":I
    .restart local v5    # "nextByte":B
    .restart local v7    # "offset":I
    :cond_8
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 121
    if-ltz v4, :cond_9

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_a

    .line 122
    :cond_9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    :cond_a
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 125
    if-ne v1, v9, :cond_b

    .line 126
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    :cond_b
    shl-int/lit8 v8, v1, 0x1

    int-to-byte v8, v8

    or-int/2addr v8, v5

    int-to-byte v5, v8

    .line 133
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 134
    if-ltz v4, :cond_c

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_d

    .line 135
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_d
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 138
    if-ne v1, v9, :cond_e

    .line 139
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 142
    :cond_e
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 143
    and-int/lit8 v8, v1, 0xf

    shl-int/lit8 v8, v8, 0x4

    int-to-byte v5, v8

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v2, v8, :cond_f

    .line 145
    if-eqz v5, :cond_7

    .line 146
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 152
    :cond_f
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 153
    if-ltz v4, :cond_10

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_11

    .line 154
    :cond_10
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 156
    :cond_11
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 157
    if-ne v1, v9, :cond_12

    .line 158
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 161
    :cond_12
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    shr-int/lit8 v8, v1, 0x1

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 162
    and-int/lit8 v8, v1, 0x1

    shl-int/lit8 v8, v8, 0x7

    int-to-byte v5, v8

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_14

    .line 164
    if-eqz v5, :cond_13

    .line 165
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_13
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v6, v7

    .line 167
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_1

    .line 171
    .end local v2    # "i":I
    .end local v6    # "offset":I
    .restart local v3    # "i":I
    .restart local v7    # "offset":I
    :cond_14
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 172
    if-ltz v4, :cond_15

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_16

    .line 173
    :cond_15
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 175
    :cond_16
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 176
    if-ne v1, v9, :cond_17

    .line 177
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 180
    :cond_17
    shl-int/lit8 v8, v1, 0x2

    int-to-byte v8, v8

    or-int/2addr v8, v5

    int-to-byte v5, v8

    .line 184
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 185
    if-ltz v4, :cond_18

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_19

    .line 186
    :cond_18
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    :cond_19
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 189
    if-ne v1, v9, :cond_1a

    .line 190
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 193
    :cond_1a
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    shr-int/lit8 v8, v1, 0x3

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 194
    and-int/lit8 v8, v1, 0x7

    shl-int/lit8 v8, v8, 0x5

    int-to-byte v5, v8

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_1c

    .line 196
    if-eqz v5, :cond_1b

    .line 197
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "non canonical bits at end of Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1b
    move v2, v3

    .line 199
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1

    .line 203
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v4, v8, -0x32

    .line 204
    if-ltz v4, :cond_1d

    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    array-length v8, v8

    if-lt v4, v8, :cond_1e

    .line 205
    :cond_1d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 207
    :cond_1e
    sget-object v8, Lcom/android/server/enterprise/otp/engine/common/Base32;->base32Lookup:[B

    aget-byte v1, v8, v4

    .line 208
    if-ne v1, v9, :cond_1f

    .line 209
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "invalid character in Base32 string"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 212
    :cond_1f
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    or-int v8, v5, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 226
    .local v0, "base32":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 227
    .local v3, "i":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 232
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 233
    .local v1, "currByte":I
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 234
    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v2, v5, 0x2

    .line 235
    .local v2, "digit":I
    array-length v5, p0

    if-lt v4, v5, :cond_1

    .line 236
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .line 271
    .end local v1    # "currByte":I
    .end local v2    # "digit":I
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 240
    .end local v3    # "i":I
    .restart local v1    # "currByte":I
    .restart local v2    # "digit":I
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v5, p0, v4

    and-int/lit16 v1, v5, 0xff

    .line 241
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x6

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x1

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    and-int/lit8 v5, v1, 0x1

    shl-int/lit8 v2, v5, 0x4

    .line 244
    array-length v5, p0

    if-lt v3, v5, :cond_2

    .line 245
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 249
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 250
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x4

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 251
    and-int/lit8 v5, v1, 0xf

    shl-int/lit8 v2, v5, 0x1

    .line 252
    array-length v5, p0

    if-lt v4, v5, :cond_3

    .line 253
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .line 254
    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 257
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    aget-byte v5, p0, v4

    and-int/lit16 v1, v5, 0xff

    .line 258
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x7

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 259
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x2

    and-int/lit8 v6, v6, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    and-int/lit8 v5, v1, 0x3

    shl-int/lit8 v2, v5, 0x3

    .line 261
    array-length v5, p0

    if-lt v3, v5, :cond_4

    .line 262
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 266
    :cond_4
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, p0, v3

    and-int/lit16 v1, v5, 0xff

    .line 267
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    shr-int/lit8 v6, v1, 0x5

    or-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    const-string/jumbo v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    and-int/lit8 v6, v1, 0x1f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_0
.end method
