.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->transitOtherViews(Z[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

.field final synthetic val$views:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
    .param p2, "val$views"    # [Landroid/view/View;

    .prologue
    .line 474
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;->val$views:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 477
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 478
    .local v0, "animatedValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 479
    check-cast v0, Ljava/lang/Float;

    .end local v0    # "animatedValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 480
    .local v1, "currentAlpha":F
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$10;->val$views:[Landroid/view/View;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 481
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "currentAlpha":F
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
