.class Lcom/android/systemui/qs/PageIndicator$2;
.super Ljava/lang/Object;
.source "PageIndicator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/PageIndicator;

.field final synthetic val$alphaAnimator:Landroid/animation/ValueAnimator;

.field final synthetic val$indicator:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/PageIndicator;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/PageIndicator;
    .param p2, "val$indicator"    # Landroid/widget/ImageView;
    .param p3, "val$alphaAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/qs/PageIndicator$2;->this$0:Lcom/android/systemui/qs/PageIndicator;

    iput-object p2, p0, Lcom/android/systemui/qs/PageIndicator$2;->val$indicator:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/systemui/qs/PageIndicator$2;->val$alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator$2;->val$indicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator$2;->val$indicator:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator$2;->val$alphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 212
    :cond_0
    return-void
.end method
