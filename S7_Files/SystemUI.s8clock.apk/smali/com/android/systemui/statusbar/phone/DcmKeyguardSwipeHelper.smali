.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;
.super Lcom/android/systemui/swipe/SwipeAnimator;
.source "DcmKeyguardSwipeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeAnimator;-><init>()V

    .line 28
    const-string/jumbo v0, "DcmKeyguardSwipeHelper"

    const-string/jumbo v1, "Make Dummy DcmKeyguardSwipeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onUnlockExecuted()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Lcom/android/systemui/swipe/SwipeAnimator;->onUnlockExecuted()V

    .line 44
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setIntercept(Z)V
    .locals 0
    .param p1, "intercepting"    # Z

    .prologue
    .line 38
    return-void
.end method
