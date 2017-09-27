.class Lcom/android/systemui/stackdivider/DividerView$GuideView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView$GuideView;->dismiss(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView$GuideView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/stackdivider/DividerView$GuideView;

    .prologue
    .line 2692
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 2694
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get4(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/FocusedFrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get4(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/FocusedFrameView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/FocusedFrameView;->setGuideView(Z)V

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get0(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get5(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/DividerHandleView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2698
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get0(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get2(Lcom/android/systemui/stackdivider/DividerView$GuideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2699
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get5(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Lcom/android/systemui/stackdivider/DividerHandleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerHandleView;->setGuideViewMode(Z)V

    .line 2701
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2702
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get7(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2703
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-get1(Lcom/android/systemui/stackdivider/DividerView$GuideView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2705
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$GuideView$4;->this$1:Lcom/android/systemui/stackdivider/DividerView$GuideView;

    invoke-static {v0, v2}, Lcom/android/systemui/stackdivider/DividerView$GuideView;->-set0(Lcom/android/systemui/stackdivider/DividerView$GuideView;Z)Z

    .line 2693
    return-void
.end method
