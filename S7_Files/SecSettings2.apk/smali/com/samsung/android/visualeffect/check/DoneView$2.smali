.class Lcom/samsung/android/visualeffect/check/DoneView$2;
.super Ljava/lang/Object;
.source "DoneView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/check/DoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/check/DoneView;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/check/DoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/visualeffect/check/DoneView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/visualeffect/check/DoneView$2;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView$2;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    .line 113
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView$2;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    .line 108
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/visualeffect/check/DoneView$2;->this$0:Lcom/samsung/android/visualeffect/check/DoneView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/visualeffect/check/DoneView;->initialDraw:Z

    .line 103
    return-void
.end method
