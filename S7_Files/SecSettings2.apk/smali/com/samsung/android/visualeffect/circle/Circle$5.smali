.class Lcom/samsung/android/visualeffect/circle/Circle$5;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/circle/Circle;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/circle/Circle;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/circle/Circle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/visualeffect/circle/Circle;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 138
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->-get0(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/circle/Circle;->-get0(Lcom/samsung/android/visualeffect/circle/Circle;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/circle/Circle$5;->this$0:Lcom/samsung/android/visualeffect/circle/Circle;

    invoke-static {v0, v2}, Lcom/samsung/android/visualeffect/circle/Circle;->-set0(Lcom/samsung/android/visualeffect/circle/Circle;Landroid/os/Handler;)Landroid/os/Handler;

    .line 130
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 143
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 125
    return-void
.end method
