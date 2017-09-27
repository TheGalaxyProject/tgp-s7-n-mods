.class public Lcom/android/systemui/classifier/DurationCountEvaluator;
.super Ljava/lang/Object;
.source "DurationCountEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .locals 7
    .param p0, "value"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "evaluation":F
    float-to-double v2, p0

    const-wide v4, 0x3f85810624dd2f1bL    # 0.0105

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    :cond_0
    float-to-double v2, p0

    const-wide v4, 0x3f829dc725c3dee8L    # 0.00909

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    add-float/2addr v0, v6

    .line 25
    :cond_1
    float-to-double v2, p0

    const-wide v4, 0x3f7b52007dd44135L    # 0.00667

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    add-float/2addr v0, v6

    .line 26
    :cond_2
    float-to-double v2, p0

    const-wide v4, 0x3fa10cb295e9e1b1L    # 0.0333

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    add-float/2addr v0, v6

    .line 27
    :cond_3
    float-to-double v2, p0

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    add-float/2addr v0, v6

    .line 28
    :cond_4
    return v0
.end method
