.class Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewFocusAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;->this$0:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;->this$0:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    iget-object v0, v0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setHasTransientState(Z)V

    .line 109
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator$1;->this$0:Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    iget-object v0, v0, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->mTargetView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->setHasTransientState(Z)V

    .line 104
    return-void
.end method
