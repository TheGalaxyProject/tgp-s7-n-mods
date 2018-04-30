.class Landroid/support/wearable/view/CircledImageView$2;
.super Ljava/lang/Object;
.source "CircledImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/CircledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CircledImageView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-static {v1}, Landroid/support/wearable/view/CircledImageView;->-get0(Landroid/support/wearable/view/CircledImageView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-static {v1, v0}, Landroid/support/wearable/view/CircledImageView;->-set0(Landroid/support/wearable/view/CircledImageView;I)I

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v1}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    :cond_0
    return-void
.end method
