.class Lcom/android/systemui/qs/QSQuickConnectView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSQuickConnectView;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSQuickConnectView;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSQuickConnectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSQuickConnectView;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/systemui/qs/QSQuickConnectView$3;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/qs/QSQuickConnectView$3;->this$0:Lcom/android/systemui/qs/QSQuickConnectView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSQuickConnectView;->-set0(Lcom/android/systemui/qs/QSQuickConnectView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 262
    return-void
.end method
