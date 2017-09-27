.class public Lcom/android/systemui/classifier/AnglesClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/AnglesClassifier$Data;
    }
.end annotation


# instance fields
.field private mStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/classifier/Stroke;",
            "Lcom/android/systemui/classifier/AnglesClassifier$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    .line 53
    iput-object p1, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    .line 52
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 3
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    .line 82
    .local v0, "data":Lcom/android/systemui/classifier/AnglesClassifier$Data;
    invoke-virtual {v0}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesVariance()F

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/classifier/AnglesVarianceEvaluator;->evaluate(F)F

    move-result v1

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->getAnglesPercentage()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/classifier/AnglesPercentageEvaluator;->evaluate(F)F

    move-result v2

    .line 82
    add-float/2addr v1, v2

    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "ANG"

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 65
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 66
    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 69
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 70
    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mClassifierData:Lcom/android/systemui/classifier/ClassifierData;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/classifier/ClassifierData;->getStroke(I)Lcom/android/systemui/classifier/Stroke;

    move-result-object v2

    .line 72
    .local v2, "stroke":Lcom/android/systemui/classifier/Stroke;
    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-direct {v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/classifier/AnglesClassifier;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/AnglesClassifier$Data;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/classifier/Stroke;->getPoints()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, v4}, Lcom/android/systemui/classifier/AnglesClassifier$Data;->addPoint(Lcom/android/systemui/classifier/Point;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v2    # "stroke":Lcom/android/systemui/classifier/Stroke;
    :cond_2
    return-void
.end method
