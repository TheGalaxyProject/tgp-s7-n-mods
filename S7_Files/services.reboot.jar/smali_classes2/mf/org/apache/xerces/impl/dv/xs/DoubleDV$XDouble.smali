.class final Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;
.super Ljava/lang/Object;
.source "DoubleDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XDouble"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;->isPossibleFP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "INF"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-INF"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "NaN"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    .line 99
    :goto_0
    return-void

    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 88
    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    :cond_2
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 91
    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 94
    iput-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I

    move-result v0

    return v0
.end method

.method private compareTo(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 146
    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    .line 149
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    const/4 v0, -0x1

    .line 150
    return v0

    .line 152
    :cond_0
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 153
    return v0

    .line 156
    :cond_1
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v0

    if-nez v2, :cond_2

    .line 157
    return v6

    .line 161
    :cond_2
    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_4

    .line 163
    cmpl-double v0, v0, v0

    if-eqz v0, :cond_3

    .line 164
    return v6

    .line 166
    :cond_3
    return v7

    .line 170
    :cond_4
    return v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    if-eq p1, p0, :cond_0

    .line 105
    instance-of v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    if-eqz v0, :cond_1

    .line 107
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;

    .line 110
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 111
    return v5

    .line 103
    :cond_0
    return v5

    .line 106
    :cond_1
    return v4

    .line 113
    :cond_2
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 114
    return v5

    .line 116
    :cond_3
    return v4
.end method

.method public getValue()D
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 121
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    return v0

    .line 124
    :cond_0
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    .line 125
    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 130
    if-eq p1, p0, :cond_0

    .line 134
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 135
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 136
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 135
    return v5

    .line 131
    :cond_0
    return v4

    .line 135
    :cond_1
    return v4

    .line 139
    :cond_2
    iget-wide v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v2, p1, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 140
    return v4

    .line 142
    :cond_3
    return v5
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v11, 0x30

    const/16 v10, 0x2e

    const/4 v2, 0x0

    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 176
    :cond_1
    :try_start_1
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    const-string/jumbo v0, "INF"

    .line 177
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 178
    :cond_2
    :try_start_2
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v6, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v4, v6

    if-nez v0, :cond_3

    const-string/jumbo v0, "-INF"

    .line 179
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_3
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_4

    const-string/jumbo v0, "NaN"

    .line 181
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 183
    :cond_4
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_5

    const-string/jumbo v0, "0.0E1"

    .line 184
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto :goto_0

    .line 189
    :cond_5
    iget-wide v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/16 v3, 0x45

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 193
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 195
    add-int/lit8 v0, v4, 0x3

    new-array v5, v0, [C

    .line 196
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x0

    .line 198
    aget-char v0, v5, v0

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_7

    move v0, v1

    .line 200
    :goto_1
    iget-wide v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_8

    :goto_2
    if-nez v1, :cond_6

    iget-wide v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->value:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v1, v2, v6

    if-gtz v1, :cond_c

    .line 202
    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 204
    :goto_3
    if-le v1, v0, :cond_9

    .line 205
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    int-to-char v3, v3

    aput-char v3, v5, v1

    .line 204
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    .line 198
    goto :goto_1

    :cond_8
    move v1, v2

    .line 200
    goto :goto_2

    .line 207
    :cond_9
    const/16 v1, 0x2e

    aput-char v1, v5, v0

    move v1, v4

    .line 209
    :goto_4
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-ne v3, v11, :cond_a

    .line 210
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 212
    :cond_a
    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-eq v3, v10, :cond_b

    .line 215
    :goto_5
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x45

    aput-char v4, v5, v1

    .line 217
    sub-int v1, v2, v0

    .line 220
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v5, v3

    .line 248
    :goto_6
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV$XDouble;->canonical:Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 224
    :cond_c
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 226
    :goto_7
    aget-char v1, v5, v3

    if-ne v1, v11, :cond_d

    .line 227
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_7

    .line 229
    :cond_d
    add-int/lit8 v1, v0, -0x1

    aget-char v2, v5, v3

    int-to-char v2, v2

    aput-char v2, v5, v1

    .line 230
    const/16 v1, 0x2e

    aput-char v1, v5, v0

    .line 232
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v1, v0, 0x1

    :goto_8
    if-ge v2, v4, :cond_e

    .line 233
    aget-char v6, v5, v2

    int-to-char v6, v6

    aput-char v6, v5, v1

    .line 232
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 235
    :cond_e
    sub-int v1, v3, v0

    sub-int v1, v4, v1

    .line 237
    add-int/lit8 v2, v0, 0x1

    if-eq v1, v2, :cond_f

    .line 240
    :goto_9
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x45

    aput-char v4, v5, v1

    .line 241
    add-int/lit8 v1, v2, 0x1

    const/16 v4, 0x2d

    aput-char v4, v5, v2

    .line 243
    sub-int v2, v3, v0

    .line 246
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v5, v1

    goto :goto_6

    .line 238
    :cond_f
    add-int/lit8 v2, v1, 0x1

    const/16 v4, 0x30

    aput-char v4, v5, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    goto :goto_9
.end method
