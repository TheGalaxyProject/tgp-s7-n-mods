.class Lcom/android/keyguard/KeyguardDirectionLockView$9;
.super Landroid/os/Handler;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardDirectionLockView;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 587
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 588
    .local v6, "timeoutMs":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap4(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 590
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x23

    if-ne v7, v8, :cond_a

    .line 591
    const-string/jumbo v7, "KeyguardDirectionLockView"

    const-string/jumbo v8, "In handleMessage()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7, v10}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 594
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 596
    .local v4, "pwdLength":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 597
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 598
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v7

    if-lt v4, v7, :cond_0

    .line 599
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get26(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set7(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    .line 600
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-interface {v7, v8, v10, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 603
    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap0(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v1

    .line 605
    .local v1, "lDeviceDisableForMaxFailedAttempt":Z
    if-nez v1, :cond_9

    .line 606
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get3(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    .line 607
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 606
    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 609
    .local v0, "attempts":I
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v8, v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap2(Lcom/android/keyguard/KeyguardDirectionLockView;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set1(Lcom/android/keyguard/KeyguardDirectionLockView;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->getRemainingAttemptsBeforeWipe()I

    move-result v5

    .line 612
    .local v5, "remainingAttemptsBeforeWipe":I
    const/4 v7, 0x5

    if-eq v0, v7, :cond_1

    const/16 v7, 0x9

    if-le v0, v7, :cond_2

    :cond_1
    if-eqz v5, :cond_2

    .line 613
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap0(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 648
    :cond_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get22(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get1(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 656
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get23(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get11(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/keyguard/KeyguardMessageArea;->startAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get27(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/os/Vibrator;

    move-result-object v7

    .line 659
    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_NOTIFICATION:Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 658
    const v9, 0xc371

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 657
    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 585
    .end local v0    # "attempts":I
    .end local v1    # "lDeviceDisableForMaxFailedAttempt":Z
    .end local v4    # "pwdLength":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :cond_4
    :goto_1
    return-void

    .line 615
    .restart local v0    # "attempts":I
    .restart local v1    # "lDeviceDisableForMaxFailedAttempt":Z
    .restart local v4    # "pwdLength":I
    .restart local v5    # "remainingAttemptsBeforeWipe":I
    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get0(Lcom/android/keyguard/KeyguardDirectionLockView;)I

    move-result v7

    if-lt v4, v7, :cond_7

    .line 616
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    .line 617
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 616
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(I)J

    move-result-wide v2

    .line 625
    .local v2, "deadline":J
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    .line 627
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 625
    invoke-virtual {v7, v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 628
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get18(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 636
    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7, v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap8(Lcom/android/keyguard/KeyguardDirectionLockView;J)V

    .line 642
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->reset()V

    goto :goto_1

    .line 620
    .end local v2    # "deadline":J
    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get20(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    .line 621
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 620
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v2

    .restart local v2    # "deadline":J
    goto :goto_2

    .line 653
    .end local v2    # "deadline":J
    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get24(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get10(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/lang/String;

    move-result-object v8

    .line 654
    iget-object v9, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get13(Lcom/android/keyguard/KeyguardDirectionLockView;)Ljava/util/HashMap;

    move-result-object v9

    .line 653
    invoke-virtual {v7, v8, v10, v9}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 662
    .end local v0    # "attempts":I
    .end local v5    # "remainingAttemptsBeforeWipe":I
    :cond_9
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap5(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    goto :goto_1

    .line 665
    .end local v1    # "lDeviceDisableForMaxFailedAttempt":Z
    .end local v4    # "pwdLength":I
    :cond_a
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x25

    if-ne v7, v8, :cond_4

    .line 666
    const-string/jumbo v7, "KeyguardDirectionLockView"

    const-string/jumbo v8, "verifyPasswordAndUnlock"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-interface {v7, v8, v9, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 668
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7, v10}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set7(Lcom/android/keyguard/KeyguardDirectionLockView;I)I

    .line 669
    iget-object v7, p0, Lcom/android/keyguard/KeyguardDirectionLockView$9;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto/16 :goto_1
.end method
