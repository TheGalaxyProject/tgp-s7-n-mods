.class public Lcom/android/systemui/classifier/HistoryEvaluator;
.super Ljava/lang/Object;
.source "HistoryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    }
.end annotation


# instance fields
.field private final mGestureWeights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdate:J

.field private final mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    .line 33
    return-void
.end method

.method private decayValue()V
    .locals 8

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, "currentTimeMillis":J
    const-wide v4, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 76
    iget-wide v6, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    sub-long v6, v0, v6

    long-to-float v3, v6

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    .line 75
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 78
    .local v2, "factor":F
    iget-object v3, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 79
    iget-object v3, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue(Ljava/util/ArrayList;F)V

    .line 80
    iput-wide v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mLastUpdate:J

    .line 71
    return-void
.end method

.method private decayValue(Ljava/util/ArrayList;F)V
    .locals 5
    .param p2, "factor"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/classifier/HistoryEvaluator$Data;>;"
    const/4 v4, 0x0

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v3, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v3, p2

    iput v3, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    iget v2, v2, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/classifier/HistoryEvaluator;->isZero(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 83
    :cond_1
    return-void
.end method

.method private isZero(F)Z
    .locals 2
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x0

    .line 96
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const v1, -0x48d83a54    # -1.0E-5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private weightedAverage(Ljava/util/ArrayList;)F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/HistoryEvaluator$Data;",
            ">;)F"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/classifier/HistoryEvaluator$Data;>;"
    const/4 v7, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "sumValue":F
    const/4 v4, 0x0

    .line 57
    .local v4, "sumWeight":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 58
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    .line 60
    .local v0, "data":Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    iget v5, v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->evaluation:F

    iget v6, v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 61
    iget v5, v0, Lcom/android/systemui/classifier/HistoryEvaluator$Data;->weight:F

    add-float/2addr v4, v5

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "data":Lcom/android/systemui/classifier/HistoryEvaluator$Data;
    :cond_0
    cmpl-float v5, v4, v7

    if-nez v5, :cond_1

    .line 65
    return v7

    .line 68
    :cond_1
    div-float v5, v3, v4

    return v5
.end method


# virtual methods
.method public addGesture(F)V
    .locals 2
    .param p1, "evaluation"    # F

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public addStroke(F)V
    .locals 2
    .param p1, "evaluation"    # F

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/classifier/HistoryEvaluator;->decayValue()V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/classifier/HistoryEvaluator$Data;

    invoke-direct {v1, p1}, Lcom/android/systemui/classifier/HistoryEvaluator$Data;-><init>(F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public getEvaluation()F
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mStrokes:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/classifier/HistoryEvaluator;->mGestureWeights:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/HistoryEvaluator;->weightedAverage(Ljava/util/ArrayList;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method
