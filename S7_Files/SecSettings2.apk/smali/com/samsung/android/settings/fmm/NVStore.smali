.class public Lcom/samsung/android/settings/fmm/NVStore;
.super Ljava/lang/Object;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/NVStore$datatype;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNvData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 100
    return v5

    .line 102
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 105
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 106
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 112
    return v5

    .line 114
    :cond_2
    aget-object v3, v2, v6

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 115
    return v6

    .line 117
    :cond_3
    return v5
.end method

.method public GetPhPWD()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 75
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 76
    return-object v5

    .line 79
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 82
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 83
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    .line 89
    return-object v5

    .line 91
    :cond_2
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_4

    .line 92
    :cond_3
    return-object v5

    .line 94
    :cond_4
    aget-object v3, v2, v6

    return-object v3
.end method

.method public GetRec1()Ljava/lang/String;
    .locals 5

    .prologue
    .line 146
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 147
    const-string/jumbo v3, "none"

    return-object v3

    .line 149
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 152
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 153
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    .line 159
    const-string/jumbo v3, "none"

    return-object v3

    .line 161
    :cond_2
    const/4 v3, 0x3

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec2()Ljava/lang/String;
    .locals 5

    .prologue
    .line 166
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 167
    const-string/jumbo v3, "none"

    return-object v3

    .line 169
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 172
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 173
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 179
    const-string/jumbo v3, "none"

    return-object v3

    .line 181
    :cond_2
    const/4 v3, 0x4

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec3()Ljava/lang/String;
    .locals 5

    .prologue
    .line 185
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 186
    const-string/jumbo v3, "none"

    return-object v3

    .line 188
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 191
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 192
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    .line 198
    const-string/jumbo v3, "none"

    return-object v3

    .line 200
    :cond_2
    const/4 v3, 0x5

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec4()Ljava/lang/String;
    .locals 5

    .prologue
    .line 204
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 205
    const-string/jumbo v3, "none"

    return-object v3

    .line 207
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 210
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 211
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    .line 217
    const-string/jumbo v3, "none"

    return-object v3

    .line 219
    :cond_2
    const/4 v3, 0x6

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec5()Ljava/lang/String;
    .locals 5

    .prologue
    .line 223
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 224
    const-string/jumbo v3, "none"

    return-object v3

    .line 226
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 229
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 230
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    .line 236
    const-string/jumbo v3, "none"

    return-object v3

    .line 238
    :cond_2
    const/4 v3, 0x7

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetSenderName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 123
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 124
    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    .line 126
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 129
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 130
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    .line 136
    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    .line 138
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_3

    .line 139
    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    .line 141
    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetSmsMsg()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 242
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 243
    const-string/jumbo v3, "Keep this message."

    return-object v3

    .line 245
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 248
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 249
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const/16 v3, 0x9

    if-ge v0, v3, :cond_2

    .line 255
    const-string/jumbo v3, "Keep this message."

    return-object v3

    .line 256
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-le v3, v4, :cond_3

    .line 257
    const-string/jumbo v3, "Keep this message."

    return-object v3

    .line 259
    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredICCID()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0xb

    .line 318
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 319
    const-string/jumbo v3, "00000000"

    return-object v3

    .line 321
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 324
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 325
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    const/16 v3, 0xc

    if-ge v0, v3, :cond_2

    .line 331
    const-string/jumbo v3, "00000000"

    return-object v3

    .line 332
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_3

    .line 333
    const-string/jumbo v3, "00000000"

    return-object v3

    .line 335
    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredIMSI()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 264
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 265
    const-string/jumbo v3, "0000"

    return-object v3

    .line 267
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 270
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 271
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 277
    const-string/jumbo v3, "0000"

    return-object v3

    .line 278
    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_3

    .line 279
    const-string/jumbo v3, "0000"

    return-object v3

    .line 281
    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredIMSI2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const-string/jumbo v0, "0000"

    return-object v0
.end method

.method public IsPhLockeEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 290
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 291
    return v5

    .line 293
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .local v1, "str":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 296
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 297
    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/16 v3, 0xb

    if-ge v0, v3, :cond_2

    .line 305
    return v5

    .line 306
    :cond_2
    const/16 v3, 0xa

    aget-object v3, v2, v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 309
    const/4 v3, 0x1

    return v3

    .line 313
    :cond_3
    return v5
.end method

.method public ReaddataFromNv()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 342
    const/4 v4, 0x0

    .line 343
    .local v4, "fIn":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 350
    .local v8, "isr":Ljava/io/InputStreamReader;
    :try_start_0
    const-string/jumbo v6, "/efs/sec_efs/mobiletracker.txt"

    .line 354
    .local v6, "fname":Ljava/lang/String;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .local v5, "fIn":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 357
    .local v9, "isr":Ljava/io/InputStreamReader;
    const/16 v11, 0x100

    :try_start_2
    new-array v7, v11, [C

    .line 361
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v7, "inputBuffer":[C
    invoke-virtual {v9, v7}, Ljava/io/InputStreamReader;->read([C)I

    .line 362
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 363
    .local v10, "readString":Ljava/lang/String;
    move-object v0, v10

    .line 383
    .local v0, "data":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 387
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 391
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 395
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 400
    :cond_1
    :goto_1
    return-object v10

    .line 388
    :catch_0
    move-exception v3

    .local v3, "e1":Ljava/io/IOException;
    goto :goto_0

    .line 396
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_1

    .line 375
    .end local v0    # "data":Ljava/lang/String;
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .end local v6    # "fname":Ljava/lang/String;
    .end local v7    # "inputBuffer":[C
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "readString":Ljava/lang/String;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    .line 383
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    if-eqz v8, :cond_2

    .line 387
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 391
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 395
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 379
    :cond_3
    :goto_4
    return-object v12

    .line 388
    :catch_3
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_3

    .line 396
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_4

    .line 370
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    .line 383
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_5
    if-eqz v8, :cond_4

    .line 387
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 391
    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 395
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 374
    :cond_5
    :goto_7
    return-object v12

    .line 388
    :catch_6
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_6

    .line 396
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_7

    .line 380
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v11

    .line 383
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    :goto_8
    if-eqz v8, :cond_6

    .line 387
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 391
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 395
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 380
    :cond_7
    :goto_a
    throw v11

    .line 388
    :catch_8
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_9

    .line 396
    .end local v3    # "e1":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .restart local v3    # "e1":Ljava/io/IOException;
    goto :goto_a

    .line 380
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v6    # "fname":Ljava/lang/String;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .local v4, "fIn":Ljava/io/FileInputStream;
    goto :goto_8

    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    goto :goto_8

    .line 370
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .restart local v5    # "fIn":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :catch_a
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    goto :goto_5

    .line 375
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .restart local v5    # "fIn":Ljava/io/FileInputStream;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fIn":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fIn":Ljava/io/FileInputStream;
    .restart local v4    # "fIn":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public writedata(Ljava/lang/String;Lcom/samsung/android/settings/fmm/NVStore$datatype;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/samsung/android/settings/fmm/NVStore$datatype;

    .prologue
    .line 406
    const-string/jumbo v6, ""

    .line 407
    .local v6, "newdata":Ljava/lang/String;
    const/4 v7, 0x0

    .line 408
    .local v7, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    .line 410
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHPWD:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_4

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v5, "1"

    .line 416
    .local v5, "mtStatus":Ljava/lang/String;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 417
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 418
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 418
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->IsPhLockeEnabled()Z

    move-result v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 418
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 419
    const-string/jumbo v10, ";"

    .line 416
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 447
    .end local v5    # "mtStatus":Ljava/lang/String;
    :goto_1
    iput-object v6, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    .line 449
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    .line 451
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_pwd"

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 452
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 453
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_state"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    :cond_0
    :goto_2
    :try_start_0
    const-string/jumbo v4, "/efs/sec_efs/mobiletracker.txt"

    .line 466
    .local v4, "fname":Ljava/lang/String;
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rw"

    invoke-direct {v8, v4, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v8, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    if-eqz v8, :cond_1

    .line 489
    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_3
    move-object v7, v8

    .line 403
    .end local v4    # "fname":Ljava/lang/String;
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_4
    return-void

    .line 414
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    const-string/jumbo v5, "0"

    .restart local v5    # "mtStatus":Ljava/lang/String;
    goto/16 :goto_0

    .line 420
    .end local v5    # "mtStatus":Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHLOCK_STATE:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_6

    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v5, "1"

    .line 425
    .restart local v5    # "mtStatus":Ljava/lang/String;
    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 426
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 427
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 428
    const-string/jumbo v10, ";"

    .line 425
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 424
    .end local v5    # "mtStatus":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "0"

    .restart local v5    # "mtStatus":Ljava/lang/String;
    goto/16 :goto_5

    .line 429
    .end local v5    # "mtStatus":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_8

    .line 434
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v5, "1"

    .line 436
    .restart local v5    # "mtStatus":Ljava/lang/String;
    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 437
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    const-string/jumbo v10, "1"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 439
    const-string/jumbo v10, ";"

    .line 436
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 434
    .end local v5    # "mtStatus":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "0"

    .restart local v5    # "mtStatus":Ljava/lang/String;
    goto/16 :goto_6

    .line 444
    .end local v5    # "mtStatus":Ljava/lang/String;
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 455
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_state"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 490
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "fname":Ljava/lang/String;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    .local v3, "ex1":Ljava/io/IOException;
    goto/16 :goto_3

    .line 479
    .end local v3    # "ex1":Ljava/io/IOException;
    .end local v4    # "fname":Ljava/lang/String;
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    .line 485
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "ex":Ljava/io/IOException;
    :goto_7
    if-eqz v7, :cond_2

    .line 489
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 490
    :catch_2
    move-exception v3

    .restart local v3    # "ex1":Ljava/io/IOException;
    goto/16 :goto_4

    .line 476
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "ex1":Ljava/io/IOException;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v2

    .line 485
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    :goto_8
    if-eqz v7, :cond_2

    .line 489
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 490
    :catch_4
    move-exception v3

    .restart local v3    # "ex1":Ljava/io/IOException;
    goto/16 :goto_4

    .line 473
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "ex1":Ljava/io/IOException;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_5
    move-exception v0

    .line 485
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_9
    if-eqz v7, :cond_2

    .line 489
    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_4

    .line 490
    :catch_6
    move-exception v3

    .restart local v3    # "ex1":Ljava/io/IOException;
    goto/16 :goto_4

    .line 482
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .end local v3    # "ex1":Ljava/io/IOException;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v9

    .line 485
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    :goto_a
    if-eqz v7, :cond_a

    .line 489
    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 482
    :cond_a
    :goto_b
    throw v9

    .line 490
    :catch_7
    move-exception v3

    .restart local v3    # "ex1":Ljava/io/IOException;
    goto :goto_b

    .line 482
    .end local v3    # "ex1":Ljava/io/IOException;
    .restart local v4    # "fname":Ljava/lang/String;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    goto :goto_a

    .line 473
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    .restart local v0    # "ex":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_9

    .line 476
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v2

    .restart local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 479
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7
.end method
