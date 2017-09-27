.class final Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;
.super Ljava/lang/Object;
.source "CaseInsensitiveMap.java"


# static fields
.field private static CHUNK_MASK:I

.field private static CHUNK_SHIFT:I

.field private static CHUNK_SIZE:I

.field private static INITIAL_CHUNK_COUNT:I

.field private static LOWER_CASE_MATCH:I

.field private static UPPER_CASE_MATCH:I

.field private static caseInsensitiveMap:[[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0xa

    .line 27
    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    .line 28
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    shl-int v0, v1, v0

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    .line 29
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    const/16 v0, 0x40

    .line 30
    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    .line 34
    sput v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    const/4 v0, 0x2

    .line 35
    sput v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    .line 38
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->buildCaseInsensitiveMap()V

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCaseInsensitiveMap()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 57
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->INITIAL_CHUNK_COUNT:I

    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SIZE:I

    const-class v3, [I

    new-array v5, v4, [I

    aput v0, v5, v2

    aput v1, v5, v8

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    move v1, v2

    :goto_0
    const/high16 v0, 0x10000

    .line 59
    if-ge v1, v0, :cond_7

    .line 60
    int-to-char v0, v1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 61
    int-to-char v0, v1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 64
    if-eq v3, v5, :cond_2

    .line 65
    :cond_0
    new-array v0, v4, [I

    .line 68
    if-ne v3, v1, :cond_3

    move v3, v2

    .line 77
    :goto_1
    if-ne v5, v1, :cond_5

    .line 89
    :cond_1
    :goto_2
    invoke-static {v1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    .line 59
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 64
    :cond_2
    if-ne v3, v1, :cond_0

    goto :goto_3

    .line 69
    :cond_3
    aput v3, v0, v2

    .line 70
    sget v6, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    aput v6, v0, v8

    .line 71
    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v6

    .line 72
    if-nez v6, :cond_4

    move v3, v4

    goto :goto_1

    .line 73
    :cond_4
    sget v7, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->LOWER_CASE_MATCH:I

    invoke-static {v1, v0, v3, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v0

    move v3, v4

    goto :goto_1

    .line 78
    :cond_5
    array-length v6, v0

    if-eq v3, v6, :cond_6

    .line 81
    :goto_4
    add-int/lit8 v6, v3, 0x1

    aput v5, v0, v3

    .line 82
    add-int/lit8 v3, v6, 0x1

    sget v3, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    aput v3, v0, v6

    .line 83
    invoke-static {v5}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v3

    .line 84
    if-eqz v3, :cond_1

    .line 85
    sget v6, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->UPPER_CASE_MATCH:I

    invoke-static {v1, v0, v5, v3, v6}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->updateMap(I[II[II)[I

    move-result-object v0

    goto :goto_2

    .line 79
    :cond_6
    invoke-static {v0, v4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandMap([II)[I

    move-result-object v0

    goto :goto_4

    .line 92
    :cond_7
    return-void
.end method

.method private static contains([II)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 136
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 137
    aget v2, p0, v0

    if-eq v2, p1, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 138
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_1
    return v1
.end method

.method private static contains([III)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 145
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 146
    aget v2, p0, v0

    if-eq v2, p1, :cond_1

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 146
    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    if-ne v2, p2, :cond_0

    .line 147
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_2
    return v1
.end method

.method private static expandAndAdd([III)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    array-length v0, p0

    .line 155
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [I

    .line 157
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    aput p1, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    aput p2, v1, v0

    .line 160
    return-object v1
.end method

.method private static expandMap([II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    array-length v0, p0

    .line 96
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 98
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v1
.end method

.method public static get(I)[I
    .locals 1

    .prologue
    const/high16 v0, 0x10000

    .line 46
    if-lt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private static getMapping(I)[I
    .locals 3

    .prologue
    .line 50
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v0

    .line 51
    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int/2addr v1, p0

    .line 53
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static set(I[I)V
    .locals 3

    .prologue
    .line 103
    sget v0, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_SHIFT:I

    ushr-int v0, p0, v0

    .line 104
    sget v1, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->CHUNK_MASK:I

    and-int/2addr v1, p0

    .line 106
    sget-object v2, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->caseInsensitiveMap:[[[I

    aget-object v0, v2, v0

    aput-object p1, v0, v1

    .line 107
    return-void
.end method

.method private static updateMap(I[II[II)[I
    .locals 5

    .prologue
    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    .line 111
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    .line 112
    aget v2, p3, v1

    .line 113
    invoke-static {v2}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->getMapping(I)[I

    move-result-object v3

    .line 114
    if-nez v3, :cond_1

    .line 111
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v3, p2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([III)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-static {v3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 120
    :goto_2
    invoke-static {v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    invoke-static {v0, v2, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v0

    goto :goto_1

    .line 117
    :cond_2
    invoke-static {v3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    goto :goto_2

    .line 127
    :cond_3
    invoke-static {p3, p0}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    :goto_3
    return-object v0

    .line 128
    :cond_4
    invoke-static {p3, p0, p4}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->expandAndAdd([III)[I

    move-result-object v1

    .line 129
    invoke-static {p2, v1}, Lmf/org/apache/xerces/impl/xpath/regex/CaseInsensitiveMap;->set(I[I)V

    goto :goto_3
.end method
