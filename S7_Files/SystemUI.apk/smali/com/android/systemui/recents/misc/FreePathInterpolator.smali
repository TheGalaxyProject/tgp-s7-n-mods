.class public Lcom/android/systemui/recents/misc/FreePathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "FreePathInterpolator.java"


# instance fields
.field private mArcLength:F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 56
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 20
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 61
    const v13, 0x3b03126f    # 0.002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v7

    .line 63
    .local v7, "pointComponents":[F
    array-length v13, v7

    div-int/lit8 v6, v13, 0x3

    .line 65
    .local v6, "numPoints":I
    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    .line 66
    new-array v13, v6, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    .line 67
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 68
    const/4 v9, 0x0

    .line 69
    .local v9, "prevX":F
    const/4 v10, 0x0

    .line 70
    .local v10, "prevY":F
    const/4 v8, 0x0

    .line 71
    .local v8, "prevFraction":F
    const/4 v2, 0x0

    .line 72
    .local v2, "componentIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v3, v2

    .end local v2    # "componentIndex":I
    .local v3, "componentIndex":I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 73
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v4, v7, v3

    .line 74
    .local v4, "fraction":F
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    aget v11, v7, v2

    .line 75
    .local v11, "x":F
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "componentIndex":I
    .restart local v2    # "componentIndex":I
    aget v12, v7, v3

    .line 76
    .local v12, "y":F
    cmpl-float v13, v4, v8

    if-nez v13, :cond_0

    cmpl-float v13, v11, v9

    if-eqz v13, :cond_0

    .line 77
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string/jumbo v14, "The Path cannot have discontinuity in the X axis."

    .line 77
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 80
    :cond_0
    cmpg-float v13, v11, v9

    if-gez v13, :cond_1

    .line 81
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "The Path cannot loop back on itself."

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 83
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aput v11, v13, v5

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aput v12, v13, v5

    .line 85
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    float-to-double v14, v13

    sub-float v13, v11, v9

    float-to-double v0, v13

    move-wide/from16 v16, v0

    sub-float v13, v12, v10

    float-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-float v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    .line 86
    move v9, v11

    .line 87
    move v10, v12

    .line 88
    move v8, v4

    .line 72
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "componentIndex":I
    .restart local v3    # "componentIndex":I
    goto :goto_0

    .line 60
    .end local v4    # "fraction":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_2
    return-void
.end method


# virtual methods
.method public getArcLength()F
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mArcLength:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 13
    .param p1, "t"    # F

    .prologue
    const/high16 v12, 0x3fc00000    # 1.5f

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 108
    .local v0, "endIndex":I
    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTransParentBehindTaskView:Z

    if-eqz v8, :cond_3

    .line 109
    cmpl-float v8, p1, v10

    if-nez v8, :cond_0

    .line 110
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 111
    :cond_0
    cmpg-float v8, p1, v11

    if-gez v8, :cond_1

    .line 112
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3db17e4b

    add-float/2addr v8, v9

    return v8

    .line 113
    :cond_1
    cmpg-float v8, p1, v10

    if-gez v8, :cond_2

    .line 114
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e051eb8    # 0.13f

    mul-float/2addr v9, p1

    div-float/2addr v9, v12

    sub-float/2addr v8, v9

    return v8

    .line 115
    :cond_2
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    .line 116
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 118
    :cond_3
    sget-boolean v8, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v8, :cond_7

    .line 119
    cmpl-float v8, p1, v10

    if-nez v8, :cond_4

    .line 120
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 121
    :cond_4
    cmpg-float v8, p1, v11

    if-gez v8, :cond_5

    .line 122
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dda740d

    add-float/2addr v8, v9

    return v8

    .line 123
    :cond_5
    cmpg-float v8, p1, v10

    if-gez v8, :cond_6

    .line 124
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, p1

    div-float/2addr v9, v12

    sub-float/2addr v8, v9

    return v8

    .line 125
    :cond_6
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    .line 126
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 130
    :cond_7
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_8

    .line 131
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 132
    :cond_8
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_9

    .line 133
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 138
    :cond_9
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    .line 139
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 140
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_a

    .line 141
    move v0, v3

    goto :goto_0

    .line 143
    :cond_a
    move v4, v3

    goto :goto_0

    .line 147
    .end local v3    # "midIndex":I
    :cond_b
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 148
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_c

    .line 149
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 152
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 153
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 155
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 156
    .local v5, "startY":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 157
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getInterpolationOnLandscape(F)F
    .locals 11
    .param p1, "t"    # F

    .prologue
    const/4 v10, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 166
    .local v0, "endIndex":I
    cmpl-float v8, p1, v10

    if-nez v8, :cond_0

    .line 167
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 168
    :cond_0
    const/high16 v8, -0x40800000    # -1.0f

    cmpg-float v8, p1, v8

    if-gez v8, :cond_1

    .line 169
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3dda740d

    add-float/2addr v8, v9

    return v8

    .line 170
    :cond_1
    cmpg-float v8, p1, v10

    if-gez v8, :cond_2

    .line 171
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    const v9, 0x3e23d70a    # 0.16f

    mul-float/2addr v9, p1

    const/high16 v10, 0x3fc00000    # 1.5f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    return v8

    .line 172
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_3

    .line 173
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    return v8

    .line 177
    :cond_3
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 178
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 179
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_4

    .line 180
    move v0, v3

    goto :goto_0

    .line 182
    :cond_4
    move v4, v3

    goto :goto_0

    .line 186
    .end local v3    # "midIndex":I
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 187
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_6

    .line 188
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 191
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 192
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 194
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 195
    .local v5, "startY":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 196
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method

.method public getX(F)F
    .locals 11
    .param p1, "y"    # F

    .prologue
    const/4 v10, 0x0

    .line 206
    const/4 v4, 0x0

    .line 207
    .local v4, "startIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 210
    .local v0, "endIndex":I
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    .line 211
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v0

    return v8

    .line 212
    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_1

    .line 213
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    .line 217
    :cond_1
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 218
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 219
    .local v3, "midIndex":I
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    .line 220
    move v4, v3

    goto :goto_0

    .line 222
    :cond_2
    move v0, v3

    goto :goto_0

    .line 226
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v0

    iget-object v9, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 227
    .local v7, "yRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    .line 228
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v8, v8, v4

    return v8

    .line 231
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mY:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 232
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 234
    .local v2, "fraction":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v5, v8, v4

    .line 235
    .local v5, "startX":F
    iget-object v8, p0, Lcom/android/systemui/recents/misc/FreePathInterpolator;->mX:[F

    aget v1, v8, v0

    .line 236
    .local v1, "endX":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
