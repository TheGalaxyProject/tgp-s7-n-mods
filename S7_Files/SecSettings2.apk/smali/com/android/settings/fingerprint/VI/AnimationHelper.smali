.class public Lcom/android/settings/fingerprint/VI/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaEnd(Landroid/view/View;JJ)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 115
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 116
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 117
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/settings/fingerprint/VI/AnimationHelper$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    new-instance v2, Lcom/android/settings/fingerprint/VI/AnimationHelper$6;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$6;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    new-instance v2, Lcom/android/settings/fingerprint/VI/SineInOut33;

    invoke-direct {v2}, Lcom/android/settings/fingerprint/VI/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 151
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 152
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 153
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    return-void

    .line 115
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static alphaStart(Landroid/view/View;JJ)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    .line 72
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 73
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 74
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 84
    new-instance v2, Lcom/android/settings/fingerprint/VI/AnimationHelper$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$4;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 107
    new-instance v2, Lcom/android/settings/fingerprint/VI/SineInOut33;

    invoke-direct {v2}, Lcom/android/settings/fingerprint/VI/SineInOut33;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 109
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 110
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 70
    return-void

    .line 72
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fromBottom(Landroid/view/View;JJ)V
    .locals 11
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 158
    const/high16 v2, 0x43960000    # 300.0f

    .line 160
    .local v2, "start":F
    const-string/jumbo v4, "log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 162
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v4, "trans"

    new-array v5, v7, [F

    .line 158
    const/high16 v6, 0x43960000    # 300.0f

    .line 162
    aput v6, v5, v8

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 164
    .local v3, "trans":Landroid/animation/PropertyValuesHolder;
    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v3, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 165
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v4, Lcom/android/settings/fingerprint/VI/AnimationHelper$7;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 181
    new-instance v4, Lcom/android/settings/fingerprint/VI/AnimationHelper$8;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$8;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    new-instance v4, Lcom/android/settings/fingerprint/VI/SineInOut80;

    invoke-direct {v4}, Lcom/android/settings/fingerprint/VI/SineInOut80;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 211
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 156
    return-void

    .line 161
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static fromRight(Landroid/view/View;JJ)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 19
    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 20
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "trans"

    new-array v4, v6, [F

    .line 17
    const/high16 v5, 0x430c0000    # 140.0f

    .line 20
    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 22
    .local v2, "trans":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 23
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/settings/fingerprint/VI/AnimationHelper$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37
    new-instance v3, Lcom/android/settings/fingerprint/VI/AnimationHelper$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/VI/AnimationHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    new-instance v3, Lcom/android/settings/fingerprint/VI/SineInOut70;

    invoke-direct {v3}, Lcom/android/settings/fingerprint/VI/SineInOut70;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 67
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 15
    return-void

    .line 19
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
