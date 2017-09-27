.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 431
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v0, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 421
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZZ)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    goto :goto_0
.end method
