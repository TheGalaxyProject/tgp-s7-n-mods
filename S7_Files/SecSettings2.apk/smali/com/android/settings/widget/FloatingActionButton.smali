.class public Lcom/android/settings/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    const v0, 0x7f05001f

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 35
    new-instance v0, Lcom/android/settings/widget/FloatingActionButton$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/FloatingActionButton$1;-><init>(Lcom/android/settings/widget/FloatingActionButton;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FloatingActionButton;->setClipToOutline(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/widget/FloatingActionButton;->invalidateOutline()V

    .line 45
    return-void
.end method
