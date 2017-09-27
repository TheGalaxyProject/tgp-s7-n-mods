.class Landroid/support/wearable/view/WearableListView$6;
.super Landroid/support/wearable/view/SimpleAnimatorListener;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/WearableListView;->animateToCenter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 708
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$6;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$6;->wasCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$6;->this$0:Landroid/support/wearable/view/WearableListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableListView;->-set0(Landroid/support/wearable/view/WearableListView;Z)Z

    .line 710
    :cond_0
    return-void
.end method
