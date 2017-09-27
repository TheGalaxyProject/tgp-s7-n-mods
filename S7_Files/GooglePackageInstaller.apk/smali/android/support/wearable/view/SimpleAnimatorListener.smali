.class public Landroid/support/wearable/view/SimpleAnimatorListener;
.super Ljava/lang/Object;
.source "SimpleAnimatorListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# instance fields
.field private mWasCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    .line 33
    return-void
.end method

.method public onAnimationComplete(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 56
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/SimpleAnimatorListener;->onAnimationComplete(Landroid/animation/Animator;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 45
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    .line 49
    return-void
.end method

.method public wasCanceled()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    return v0
.end method
