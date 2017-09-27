.class Lcom/samsung/android/settings/widget/IntervalSeekBar$2;
.super Ljava/lang/Object;
.source "IntervalSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/widget/IntervalSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/IntervalSeekBar;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/IntervalSeekBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar$2;->this$0:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 116
    .local v0, "Value":Ljava/lang/Float;
    iget-object v1, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar$2;->this$0:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->-wrap0(Lcom/samsung/android/settings/widget/IntervalSeekBar;F)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/widget/IntervalSeekBar$2;->this$0:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->invalidate()V

    .line 114
    return-void
.end method
