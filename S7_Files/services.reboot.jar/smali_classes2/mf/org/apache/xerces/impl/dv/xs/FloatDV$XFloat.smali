.class final Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;
.super Ljava/lang/Object;
.source "FloatDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSFloat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/FloatDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XFloat"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;->isPossibleFP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "INF"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-INF"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "NaN"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 81
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    .line 83
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 72
    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_2
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 75
    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0

    :cond_3
    const/high16 v0, 0x7fc00000    # NaNf

    .line 78
    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I

    move-result v0

    return v0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 126
    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    .line 129
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    const/4 v0, -0x1

    .line 130
    return v0

    .line 132
    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 133
    return v0

    .line 136
    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 137
    return v3

    .line 141
    :cond_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    .line 143
    cmpl-float v0, v0, v0

    if-eqz v0, :cond_3

    .line 144
    return v3

    .line 146
    :cond_3
    return v4

    .line 150
    :cond_4
    return v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    if-eq p1, p0, :cond_0

    .line 89
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    if-eqz v0, :cond_1

    .line 91
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;

    .line 94
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 95
    return v3

    .line 87
    :cond_0
    return v3

    .line 90
    :cond_1
    return v2

    .line 97
    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 98
    return v3

    .line 100
    :cond_3
    return v2
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    if-eq p1, p0, :cond_1

    .line 114
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 115
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 116
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 115
    :cond_0
    return v2

    .line 111
    :cond_1
    return v2

    .line 115
    :cond_2
    return v3

    .line 119
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 120
    return v2

    .line 122
    :cond_4
    return v3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/4 v2, 0x0

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 156
    :cond_1
    :try_start_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const-string/jumbo v0, "INF"

    .line 157
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_2
    :try_start_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    const-string/jumbo v0, "-INF"

    .line 159
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NaN"

    .line 161
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    const-string/jumbo v0, "0.0E1"

    .line 164
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 173
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 175
    add-int/lit8 v0, v4, 0x3

    new-array v5, v0, [C

    .line 176
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x0

    .line 178
    aget-char v0, v5, v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_7

    move v0, v1

    .line 180
    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_8

    :goto_2
    if-nez v1, :cond_6

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->value:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_c

    .line 182
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 184
    :goto_3
    if-le v1, v0, :cond_9

    .line 185
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    int-to-char v3, v3

    aput-char v3, v5, v1

    .line 184
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    .line 178
    goto :goto_1

    :cond_8
    move v1, v2

    .line 180
    goto :goto_2

    .line 187
    :cond_9
    const/16 v1, 0x2e

    aput-char v1, v5, v0

    move v1, v4

    .line 189
    :goto_4
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-ne v3, v8, :cond_a

    .line 190
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 192
    :cond_a
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-eq v3, v7, :cond_b

    .line 195
    :goto_5
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x45

    aput-char v4, v5, v1

    .line 197
    sub-int v1, v2, v0

    .line 200
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v5, v3

    .line 228
    :goto_6
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/FloatDV$XFloat;->canonical:Ljava/lang/String;

    goto/16 :goto_0

    .line 193
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 204
    :cond_c
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 206
    :goto_7
    aget-char v1, v5, v3

    if-ne v1, v8, :cond_d

    .line 207
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    .line 209
    :cond_d
    add-int/lit8 v1, v0, -0x1

    aget-char v2, v5, v3

    int-to-char v2, v2

    aput-char v2, v5, v1

    .line 210
    const/16 v1, 0x2e

    aput-char v1, v5, v0

    .line 212
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v0, 0x1

    :goto_8
    if-ge v2, v4, :cond_e

    .line 213
    aget-char v6, v5, v2

    int-to-char v6, v6

    aput-char v6, v5, v1

    .line 212
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 215
    :cond_e
    sub-int v1, v3, v0

    sub-int v1, v4, v1

    .line 217
    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_f

    .line 220
    :goto_9
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x45

    aput-char v4, v5, v1

    .line 221
    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x2d

    aput-char v4, v5, v2

    .line 223
    sub-int v2, v3, v0

    .line 226
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v5, v1

    goto :goto_6

    .line 218
    :cond_f
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    aput-char v4, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_9
.end method
