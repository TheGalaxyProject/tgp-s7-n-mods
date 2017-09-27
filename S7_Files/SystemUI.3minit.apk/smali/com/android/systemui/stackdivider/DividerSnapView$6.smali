.class Lcom/android/systemui/stackdivider/DividerSnapView$6;
.super Ljava/lang/Object;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerSnapView;->showGuideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerSnapView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerSnapView;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$6;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 443
    .local v0, "alpha":F
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$6;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get5(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 444
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$6;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get0(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$6;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get6(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 446
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$6;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get3(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView$6;->this$0:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->-get1(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    .line 441
    return-void
.end method
