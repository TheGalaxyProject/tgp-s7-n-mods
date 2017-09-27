.class Landroid/view/animation/interpolator/SineBase;
.super Ljava/lang/Object;
.source "SineBase.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInterpolation(F[[F)F
    .locals 12
    .param p0, "input"    # F
    .param p1, "segments"    # [[F

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 6
    div-float v0, p0, v10

    .line 7
    .local v0, "_loc_5":F
    array-length v1, p1

    .line 8
    .local v1, "_loc_6":I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 9
    .local v4, "_loc_9":I
    array-length v6, p1

    if-ge v4, v6, :cond_0

    .line 12
    :goto_0
    int-to-float v6, v4

    int-to-float v7, v1

    div-float v7, v10, v7

    mul-float/2addr v6, v7

    sub-float v6, v0, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 13
    .local v2, "_loc_7":F
    aget-object v3, p1, v4

    .line 14
    .local v3, "_loc_8":[F
    aget v6, v3, v11

    sub-float v7, v10, v2

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    const/4 v8, 0x1

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    aget v8, v3, v8

    aget v9, v3, v11

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    mul-float/2addr v6, v10

    const/4 v7, 0x0

    add-float v5, v7, v6

    .line 17
    .local v5, "ret":F
    return v5

    .line 10
    .end local v2    # "_loc_7":F
    .end local v3    # "_loc_8":[F
    .end local v5    # "ret":F
    :cond_0
    array-length v6, p1

    add-int/lit8 v4, v6, -0x1

    goto :goto_0
.end method
