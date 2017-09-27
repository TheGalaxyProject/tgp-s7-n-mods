.class Lcom/android/systemui/volume/SecVolumeDialog$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->createCollapseExpandAnim()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/SecVolumeDialog;

    .prologue
    .line 2581
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 2593
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2594
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-set1(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2596
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->-set10(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 2597
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2598
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2617
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap5(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 2592
    return-void

    .line 2600
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "row$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2601
    .local v2, "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v6

    if-ne v2, v6, :cond_3

    const/4 v0, 0x1

    .line 2602
    .local v0, "isActive":Z
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6, v2, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap1(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    move-result v4

    .line 2603
    .local v4, "visible":Z
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 2604
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v8

    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v6

    :goto_3
    invoke-static {v8, v6}, Lcom/android/systemui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    .line 2605
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    .line 2606
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2607
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2601
    .end local v0    # "isActive":Z
    .end local v4    # "visible":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isActive":Z
    goto :goto_2

    .restart local v4    # "visible":Z
    :cond_4
    move v6, v7

    .line 2604
    goto :goto_3

    .line 2610
    .end local v0    # "isActive":Z
    .end local v2    # "row":Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .end local v4    # "visible":Z
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get12(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 2611
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2613
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, -0x2

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2614
    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2584
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set1(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->-set10(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 2587
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get2(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2588
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$16;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get3(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get21(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2582
    :cond_1
    return-void
.end method
