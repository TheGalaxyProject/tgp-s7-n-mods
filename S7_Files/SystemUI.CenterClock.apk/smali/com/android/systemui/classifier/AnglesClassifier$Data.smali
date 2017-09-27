.class Lcom/android/systemui/classifier/AnglesClassifier$Data;
.super Ljava/lang/Object;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private final ANGLE_DEVIATION:F

.field private mAnglesCount:F

.field private mBiggestAngle:F

.field private mCount:F

.field private mFirstAngleVariance:F

.field private mFirstLength:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAngles:F

.field private mLength:F

.field private mPreviousAngle:F

.field private mRightAngles:F

.field private mSecondCount:F

.field private mSecondSum:F

.field private mSecondSumSquares:F

.field private mStraightAngles:F

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const v0, 0x3e20d97c

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->ANGLE_DEVIATION:F

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    .line 107
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    .line 108
    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    .line 109
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 110
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 111
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    .line 112
    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    .line 113
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    .line 114
    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iput v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    .line 106
    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 10
    .param p1, "point"    # Lcom/android/systemui/classifier/Point;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 120
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v2, p1}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v2, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v2

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/Point;

    .line 130
    iget-object v4, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/Point;

    .line 129
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v0

    .line 132
    .local v0, "angle":F
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    .line 133
    float-to-double v2, v0

    const-wide v4, 0x4007e0485c442d18L    # 2.9845130165391645

    cmpg-double v2, v2, v4

    if-gez v2, :cond_3

    .line 134
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    .line 141
    :goto_1
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    sub-float v1, v0, v2

    .line 146
    .local v1, "difference":F
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_5

    .line 147
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mBiggestAngle:F

    .line 148
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    .line 149
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    iget v4, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    .line 150
    iput v7, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 151
    iput v7, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 152
    iput v6, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    .line 159
    :goto_2
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    .line 160
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    .line 161
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    float-to-double v2, v2

    add-double/2addr v2, v8

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    .line 162
    iput v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mPreviousAngle:F

    goto/16 :goto_0

    .line 135
    .end local v1    # "difference":F
    :cond_3
    float-to-double v2, v0

    const-wide v4, 0x400a63ae4c442d18L    # 3.298672290640422

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    .line 136
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    goto :goto_1

    .line 138
    :cond_4
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    add-float/2addr v2, v6

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    goto :goto_1

    .line 154
    .restart local v1    # "difference":F
    :cond_5
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    .line 155
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    .line 156
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    float-to-double v2, v2

    add-double/2addr v2, v8

    double-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    goto :goto_2
.end method

.method public getAnglesPercentage()F
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 182
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 184
    :cond_0
    iget v0, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLeftAngles:F

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mRightAngles:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mStraightAngles:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mAnglesCount:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getAnglesVariance()F
    .locals 5

    .prologue
    .line 172
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSumSquares:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSum:F

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mCount:F

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v0

    .line 173
    .local v0, "anglesVariance":F
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstLength:F

    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mLength:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 174
    iget v1, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mFirstAngleVariance:F

    .line 175
    iget v2, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSumSquares:F

    iget v3, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondSum:F

    iget v4, p0, Lcom/android/systemui/classifier/AnglesClassifier$Data;->mSecondCount:F

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance(FFF)F

    move-result v2

    .line 174
    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 177
    :cond_0
    return v0
.end method

.method public getAnglesVariance(FFF)F
    .locals 3
    .param p1, "sumSquares"    # F
    .param p2, "sum"    # F
    .param p3, "count"    # F

    .prologue
    .line 168
    div-float v0, p1, p3

    div-float v1, p2, p3

    div-float v2, p2, p3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
