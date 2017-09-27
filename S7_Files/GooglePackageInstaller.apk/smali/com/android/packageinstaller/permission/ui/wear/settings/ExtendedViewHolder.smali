.class public Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;
.super Landroid/support/wearable/view/WearableListView$ViewHolder;
.source "ExtendedViewHolder.java"


# instance fields
.field private mMaxValue:F

.field private mMinValue:F

.field private mScalingDownAnimator:Landroid/animation/ObjectAnimator;

.field private mScalingUpAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 10
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    instance-of v1, p1, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;

    .line 40
    .local v0, "item":Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;
    invoke-interface {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->getProximityMinValue()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMinValue:F

    .line 41
    iget v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMinValue:F

    invoke-interface {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->setScalingAnimatorValue(F)V

    .line 42
    invoke-interface {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->getProximityMaxValue()F

    move-result v1

    iput v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMaxValue:F

    .line 43
    const-string/jumbo v1, "scalingAnimatorValue"

    new-array v2, v6, [F

    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMinValue:F

    aput v3, v2, v4

    .line 44
    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMaxValue:F

    aput v3, v2, v5

    .line 43
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    .line 45
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    const-string/jumbo v1, "scalingAnimatorValue"

    new-array v2, v6, [F

    .line 47
    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMaxValue:F

    aput v3, v2, v4

    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMinValue:F

    aput v3, v2, v5

    .line 46
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    .line 48
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    .end local v0    # "item":Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCenterProximity(ZZ)V
    .locals 6
    .param p1, "isCentralItem"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;

    if-nez v1, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;

    .line 57
    .local v0, "item":Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;
    if-eqz p1, :cond_3

    .line 58
    if-eqz p2, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 60
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    invoke-interface {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->getCurrentProximityValue()F

    move-result v3

    aput v3, v2, v4

    .line 62
    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMaxValue:F

    aput v3, v2, v5

    .line 61
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 63
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 82
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/wearable/view/WearableListView$ViewHolder;->onCenterProximity(ZZ)V

    .line 52
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 67
    invoke-interface {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->getProximityMaxValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->setScalingAnimatorValue(F)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 71
    if-eqz p2, :cond_4

    .line 72
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v2, v2, [F

    invoke-interface {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->getCurrentProximityValue()F

    move-result v3

    aput v3, v2, v4

    .line 74
    iget v3, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mMinValue:F

    aput v3, v2, v5

    .line 73
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 75
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 78
    :cond_4
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedViewHolder;->mScalingDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 79
    invoke-interface {v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->getProximityMinValue()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/settings/ExtendedOnCenterProximityListener;->setScalingAnimatorValue(F)V

    goto :goto_0
.end method
