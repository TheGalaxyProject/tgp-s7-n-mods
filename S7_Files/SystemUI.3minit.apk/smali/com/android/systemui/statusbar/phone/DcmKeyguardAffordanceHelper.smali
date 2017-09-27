.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardAffordanceHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "DcmKeyguardAffordanceHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>()V

    .line 32
    const-string/jumbo v0, "DcmKeyguardAffordanceHelper"

    const-string/jumbo v1, "Make Dummy DcmKeyguardAffordanceHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public cancelDAAffordance()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutPreviewAnimationPlaying()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 0
    .param p1, "animate"    # Z
    .param p2, "left"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public removePreviews()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 43
    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "right"    # Z
    .param p2, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 39
    return-void
.end method

.method public updatePreviews()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
