.class public Lcom/android/systemui/statusbar/phone/LightStatusBarController;
.super Ljava/lang/Object;
.source "LightStatusBarController.java"


# instance fields
.field private mAppCoverState:Z

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mCoverClosed:Z

.field private mDockedLight:Z

.field private mDockedStackVisibility:I

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mStatusBarMode:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "iconController"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .param p2, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 59
    return-void
.end method

.method private animateChange()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v3, :cond_0

    .line 109
    return v2

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    .line 112
    .local v0, "unlockMode":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 113
    if-eq v0, v1, :cond_1

    .line 112
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 113
    goto :goto_0

    :cond_2
    move v1, v2

    .line 112
    goto :goto_0
.end method

.method private isLight(II)Z
    .locals 5
    .param p1, "vis"    # I
    .param p2, "statusBarMode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x4

    if-eq p2, v4, :cond_0

    .line 100
    const/4 v4, 0x6

    if-ne p2, v4, :cond_1

    .line 101
    .local v1, "isTransparentBar":Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 102
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mCoverClosed:Z

    if-eqz v4, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mAppCoverState:Z

    .line 103
    :goto_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    .line 104
    .local v2, "light":Z
    :goto_2
    if-eqz v0, :cond_5

    .end local v2    # "light":Z
    :goto_3
    return v2

    .end local v1    # "isTransparentBar":Z
    :cond_1
    move v1, v3

    .line 100
    goto :goto_0

    .line 102
    .restart local v1    # "isTransparentBar":Z
    :cond_2
    const/4 v0, 0x1

    .local v0, "allowLight":Z
    goto :goto_1

    .line 101
    .end local v0    # "allowLight":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "allowLight":Z
    goto :goto_1

    .line 103
    .end local v0    # "allowLight":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "light":Z
    goto :goto_2

    :cond_5
    move v2, v3

    .line 104
    goto :goto_3
.end method

.method private refreshIconsDarkState()V
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mStatusBarMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    .line 163
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mStatusBarMode:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 161
    return-void
.end method

.method private update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p2, "dockedStackBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    .line 118
    .local v1, "hasDockedStack":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mCoverClosed:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mAppCoverState:Z

    if-eqz v4, :cond_6

    :cond_0
    const/4 v3, 0x0

    .line 122
    .local v3, "skipAnimateIconTint":Z
    :goto_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-nez v4, :cond_7

    move v2, v6

    .line 123
    .local v2, "isDockedMinimized":Z
    :goto_2
    if-eqz v2, :cond_8

    move v4, v5

    :goto_3
    and-int/2addr v1, v4

    .line 129
    .local v1, "hasDockedStack":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    if-nez v4, :cond_9

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v4, :cond_2

    if-eqz v1, :cond_9

    .line 137
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    if-eqz v4, :cond_b

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-nez v4, :cond_4

    if-eqz v1, :cond_b

    .line 144
    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    if-eqz v4, :cond_d

    move-object v0, p1

    .line 145
    .local v0, "bounds":Landroid/graphics/Rect;
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 146
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 150
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v3, :cond_f

    :goto_6
    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    .line 116
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :goto_7
    return-void

    .line 117
    .end local v1    # "hasDockedStack":Z
    .end local v2    # "isDockedMinimized":Z
    .end local v3    # "skipAnimateIconTint":Z
    :cond_5
    const/4 v1, 0x1

    .local v1, "hasDockedStack":Z
    goto :goto_0

    .line 118
    :cond_6
    const/4 v3, 0x1

    .restart local v3    # "skipAnimateIconTint":Z
    goto :goto_1

    :cond_7
    move v2, v5

    .line 122
    goto :goto_2

    .restart local v2    # "isDockedMinimized":Z
    :cond_8
    move v4, v6

    .line 123
    goto :goto_3

    .line 130
    .local v1, "hasDockedStack":Z
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 131
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v3, :cond_a

    :goto_8
    invoke-virtual {v4, v6, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_7

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v5

    goto :goto_8

    .line 138
    :cond_b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    if-eqz v3, :cond_c

    move v4, v5

    :goto_9
    invoke-virtual {v6, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDark(ZZ)V

    goto :goto_7

    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v4

    goto :goto_9

    :cond_d
    move-object v0, p2

    .line 144
    goto :goto_4

    .line 148
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 150
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->animateChange()Z

    move-result v5

    goto :goto_6
.end method


# virtual methods
.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8
    .param p1, "fullscreenStackVis"    # I
    .param p2, "dockedStackVis"    # I
    .param p3, "mask"    # I
    .param p4, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p5, "dockedStackBounds"    # Landroid/graphics/Rect;
    .param p6, "sbModeChanged"    # Z
    .param p7, "statusBarMode"    # I

    .prologue
    .line 72
    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    .line 73
    .local v5, "oldFullscreen":I
    not-int v6, p3

    and-int/2addr v6, v5

    and-int v7, p1, p3

    or-int v3, v6, v7

    .line 74
    .local v3, "newFullscreen":I
    xor-int v1, v3, v5

    .line 75
    .local v1, "diffFullscreen":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    .line 76
    .local v4, "oldDocked":I
    not-int v6, p3

    and-int/2addr v6, v4

    and-int v7, p2, p3

    or-int v2, v6, v7

    .line 77
    .local v2, "newDocked":I
    xor-int v0, v2, v4

    .line 78
    .local v0, "diffDocked":I
    and-int/lit16 v6, v1, 0x2000

    if-nez v6, :cond_0

    .line 79
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_1

    .line 85
    :cond_0
    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mStatusBarMode:I

    .line 88
    invoke-direct {p0, v3, p7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenLight:Z

    .line 89
    invoke-direct {p0, v2, p7}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->isLight(II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedLight:Z

    .line 90
    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->update(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 92
    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFullscreenStackVisibility:I

    .line 93
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mDockedStackVisibility:I

    .line 94
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    return-void

    .line 78
    :cond_1
    if-nez p6, :cond_0

    .line 81
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 65
    return-void
.end method

.method public updateCoverState(ZZ)V
    .locals 0
    .param p1, "coverClosed"    # Z
    .param p2, "appCoverState"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mCoverClosed:Z

    .line 157
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->mAppCoverState:Z

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightStatusBarController;->refreshIconsDarkState()V

    .line 155
    return-void
.end method
