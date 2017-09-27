.class public Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;
.super Ljava/lang/Object;
.source "AnimationHelperWifi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animCommonFromRight(Landroid/view/View;JJ)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    const-string/jumbo v2, "trans"

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 181
    const/high16 v4, 0x43480000    # 200.0f

    .line 182
    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 183
    .local v1, "trans":Landroid/animation/PropertyValuesHolder;
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 184
    .local v0, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$9;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    new-instance v2, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$10;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 215
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 216
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void
.end method

.method public static animTitleFromRight(Landroid/view/View;JJ)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 27
    const-string/jumbo v3, "trans"

    new-array v4, v6, [F

    .line 26
    const/high16 v5, 0x43480000    # 200.0f

    .line 27
    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 28
    .local v2, "trans":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 29
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v7

    aput-object v2, v3, v8

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 30
    .local v1, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    new-instance v3, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    new-instance v3, Lcom/samsung/android/settings/wifi/VI/SineInOut70Wifi;

    invoke-direct {v3}, Lcom/samsung/android/settings/wifi/VI/SineInOut70Wifi;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 63
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 25
    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
