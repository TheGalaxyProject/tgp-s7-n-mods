.class public Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;
.super Ljava/lang/Object;
.source "BMPattern.java"


# instance fields
.field final ignoreCase:Z

.field final pattern:[C

.field final shiftTable:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    .line 40
    new-array v0, p2, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    .line 41
    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    .line 43
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v2, v0

    move v0, v1

    .line 44
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 45
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v2, v3, v0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    aget-char v0, v0, v1

    .line 49
    sub-int v3, v2, v1

    add-int/lit8 v3, v3, -0x1

    .line 50
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v4, v4

    rem-int v4, v0, v4

    .line 51
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_3

    .line 53
    :goto_1
    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v4, :cond_4

    .line 47
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-lt v1, v2, :cond_0

    .line 64
    return-void

    .line 52
    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v3, v5, v4

    goto :goto_1

    .line 54
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 55
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v4, v4

    rem-int v4, v0, v4

    .line 56
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v4

    if-lt v3, v5, :cond_5

    .line 58
    :goto_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 59
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v4, v4

    rem-int/2addr v0, v4

    .line 60
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v4, v4, v0

    if-ge v3, v4, :cond_1

    .line 61
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v3, v4, v0

    goto :goto_2

    .line 57
    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v3, v5, v4

    goto :goto_3
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/16 v0, 0x100

    .line 35
    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    .line 36
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;II)I
    .locals 6

    .prologue
    .line 96
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v0, :cond_3

    .line 97
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    .line 98
    if-eqz v1, :cond_4

    .line 99
    add-int v0, p2, v1

    .line 100
    :cond_0
    :goto_0
    if-gt v0, p3, :cond_6

    .line 103
    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    .line 106
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_2

    .line 108
    if-eqz v0, :cond_5

    .line 105
    if-gtz v0, :cond_1

    .line 111
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 112
    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/lang/String;II)I

    move-result v0

    return v0

    .line 98
    :cond_4
    return p2

    .line 109
    :cond_5
    return v2

    :cond_6
    const/4 v0, -0x1

    .line 114
    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;II)I
    .locals 6

    .prologue
    .line 71
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    .line 73
    if-eqz v1, :cond_4

    .line 74
    add-int v0, p2, v1

    .line 75
    :cond_0
    :goto_0
    if-gt v0, p3, :cond_6

    .line 77
    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    .line 80
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_2

    .line 82
    if-eqz v0, :cond_5

    .line 79
    if-gtz v0, :cond_1

    .line 85
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 86
    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/text/CharacterIterator;II)I

    move-result v0

    return v0

    .line 73
    :cond_4
    return p2

    .line 83
    :cond_5
    return v2

    :cond_6
    const/4 v0, -0x1

    .line 88
    return v0
.end method

.method public matches([CII)I
    .locals 6

    .prologue
    .line 121
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-nez v0, :cond_3

    .line 122
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    .line 123
    if-eqz v1, :cond_4

    .line 124
    add-int v0, p2, v1

    .line 125
    :cond_0
    :goto_0
    if-gt v0, p3, :cond_6

    .line 128
    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    .line 131
    :cond_1
    add-int/lit8 v2, v2, -0x1

    aget-char v4, p1, v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    if-ne v4, v5, :cond_2

    .line 133
    if-eqz v0, :cond_5

    .line 130
    if-gtz v0, :cond_1

    .line 136
    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 137
    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase([CII)I

    move-result v0

    return v0

    .line 123
    :cond_4
    return p2

    .line 134
    :cond_5
    return v2

    :cond_6
    const/4 v0, -0x1

    .line 139
    return v0
.end method

.method matchesIgnoreCase(Ljava/lang/String;II)I
    .locals 7

    .prologue
    .line 169
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    .line 170
    if-eqz v1, :cond_4

    .line 171
    add-int v0, p2, v1

    .line 172
    :cond_0
    :goto_0
    if-gt v0, p3, :cond_7

    .line 174
    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    .line 177
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 178
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    .line 179
    if-ne v4, v5, :cond_5

    .line 185
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 176
    if-gtz v0, :cond_1

    .line 188
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 189
    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    .line 170
    :cond_4
    return p2

    .line 180
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 181
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 182
    if-eq v6, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v6, v5, :cond_3

    goto :goto_1

    .line 186
    :cond_6
    return v2

    :cond_7
    const/4 v0, -0x1

    .line 191
    return v0
.end method

.method matchesIgnoreCase(Ljava/text/CharacterIterator;II)I
    .locals 7

    .prologue
    .line 143
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    .line 144
    if-eqz v1, :cond_4

    .line 145
    add-int v0, p2, v1

    .line 146
    :cond_0
    :goto_0
    if-gt v0, p3, :cond_7

    .line 148
    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    .line 151
    :cond_1
    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v4

    .line 152
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    .line 153
    if-ne v4, v5, :cond_5

    .line 159
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 150
    if-gtz v0, :cond_1

    .line 162
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 163
    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    .line 144
    :cond_4
    return p2

    .line 154
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 155
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 156
    if-eq v6, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v6, v5, :cond_3

    goto :goto_1

    .line 160
    :cond_6
    return v2

    :cond_7
    const/4 v0, -0x1

    .line 165
    return v0
.end method

.method matchesIgnoreCase([CII)I
    .locals 7

    .prologue
    .line 194
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v1, v0

    .line 195
    if-eqz v1, :cond_4

    .line 196
    add-int v0, p2, v1

    .line 197
    :cond_0
    :goto_0
    if-gt v0, p3, :cond_7

    .line 199
    add-int/lit8 v3, v0, 0x1

    move v2, v0

    move v0, v1

    .line 202
    :cond_1
    add-int/lit8 v2, v2, -0x1

    aget-char v4, p1, v2

    .line 203
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v5, v5, v0

    .line 204
    if-ne v4, v5, :cond_5

    .line 210
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 201
    if-gtz v0, :cond_1

    .line 213
    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int/2addr v4, v5

    aget v0, v0, v4

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 214
    if-ge v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    .line 195
    :cond_4
    return p2

    .line 205
    :cond_5
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 206
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 207
    if-eq v6, v5, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    if-ne v6, v5, :cond_3

    goto :goto_1

    .line 211
    :cond_6
    return v2

    :cond_7
    const/4 v0, -0x1

    .line 216
    return v0
.end method
