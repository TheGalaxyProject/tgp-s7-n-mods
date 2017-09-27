.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$isHeadsUpDisappear:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p2, "val$child"    # Landroid/view/View;
    .param p3, "val$isHeadsUpDisappear"    # Z

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$child:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$isHeadsUpDisappear:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$child:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsClickedNotification(Landroid/view/View;Z)V

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$child:Landroid/view/View;

    const v1, 0x7f130021

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 754
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$child:Landroid/view/View;

    const v1, 0x7f13002d

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 755
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$child:Landroid/view/View;

    const v1, 0x7f130027

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 756
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$isHeadsUpDisappear:Z

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;->val$child:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeadsupDisappearRunning(Z)V

    .line 751
    :cond_0
    return-void
.end method
