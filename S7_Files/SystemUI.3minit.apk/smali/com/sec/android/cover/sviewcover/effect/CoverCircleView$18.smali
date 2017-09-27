.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setMoveCircleAnimator(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1092
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    .line 1093
    .local v0, "animatedValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    check-cast v0, Ljava/lang/Float;

    .end local v0    # "animatedValue":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set16(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 1095
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get19(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-wrap9(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)V

    .line 1096
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$18;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 1091
    :cond_0
    return-void
.end method
