.class Lcom/android/keyguard/KeyguardDirectionLockView$4;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
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
    .line 425
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "curDirection"    # Ljava/lang/String;
    .param p2, "isDirectionDetected"    # Z

    .prologue
    const/4 v6, 0x0

    .line 441
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get2(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 444
    const-string/jumbo v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    .line 445
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get4(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get4(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get21(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get19(Lcom/android/keyguard/KeyguardDirectionLockView;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 456
    .local v0, "elapsed":J
    const-wide/16 v2, 0x1b58

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set5(Lcom/android/keyguard/KeyguardDirectionLockView;J)J

    .line 460
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap9(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 468
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get23(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 469
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get23(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardMessageArea;->setVisibility(I)V

    .line 472
    const-string/jumbo v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    new-instance v3, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {v3, v4, v6}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;)V

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set6(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    .line 474
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get25(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 475
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get25(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->start()V

    .line 479
    :cond_2
    if-eqz p2, :cond_3

    .line 480
    const-string/jumbo v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 440
    :cond_3
    :goto_1
    return-void

    .line 448
    .end local v0    # "elapsed":J
    :cond_4
    if-eqz p2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get4(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get4(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get14(Lcom/android/keyguard/KeyguardDirectionLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 481
    .restart local v0    # "elapsed":J
    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x16

    if-gt v2, v3, :cond_3

    .line 482
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap7(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    goto :goto_1
.end method

.method public onDirectionStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get16(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    .line 427
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get17(Lcom/android/keyguard/KeyguardDirectionLockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get25(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get25(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->interrupt()V

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set6(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;)Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$4;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    goto :goto_0
.end method
