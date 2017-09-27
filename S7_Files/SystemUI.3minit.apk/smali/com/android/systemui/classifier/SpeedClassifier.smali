.class public Lcom/android/systemui/classifier/SpeedClassifier;
.super Lcom/android/systemui/classifier/StrokeClassifier;
.source "SpeedClassifier.java"


# instance fields
.field private final NANOS_TO_SECONDS:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/ClassifierData;)V
    .locals 1
    .param p1, "classifierData"    # Lcom/android/systemui/classifier/ClassifierData;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/classifier/StrokeClassifier;-><init>()V

    .line 24
    const v0, 0x4e6e6b28    # 1.0E9f

    iput v0, p0, Lcom/android/systemui/classifier/SpeedClassifier;->NANOS_TO_SECONDS:F

    .line 26
    return-void
.end method


# virtual methods
.method public getFalseTouchEvaluation(ILcom/android/systemui/classifier/Stroke;)F
    .locals 5
    .param p1, "type"    # I
    .param p2, "stroke"    # Lcom/android/systemui/classifier/Stroke;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getDurationNanos()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v1, v2

    .line 37
    .local v0, "duration":F
    cmpl-float v1, v0, v4

    if-nez v1, :cond_0

    .line 38
    invoke-static {v4}, Lcom/android/systemui/classifier/SpeedEvaluator;->evaluate(F)F

    move-result v1

    return v1

    .line 40
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/classifier/Stroke;->getTotalLength()F

    move-result v1

    div-float/2addr v1, v0

    invoke-static {v1}, Lcom/android/systemui/classifier/SpeedEvaluator;->evaluate(F)F

    move-result v1

    return v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "SPD"

    return-object v0
.end method
