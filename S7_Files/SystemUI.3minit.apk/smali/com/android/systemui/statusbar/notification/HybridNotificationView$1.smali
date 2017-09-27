.class Lcom/android/systemui/statusbar/notification/HybridNotificationView$1;
.super Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;
.source "HybridNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/HybridNotificationView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/HybridNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/HybridNotificationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/HybridNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;-><init>()V

    return-void
.end method


# virtual methods
.method public transformFrom(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 3
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p3, "transformationAmount"    # F

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-interface {p2, v2}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 100
    .local v0, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewVerticalFrom(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 105
    :cond_0
    return v2
.end method

.method public transformTo(Lcom/android/systemui/statusbar/notification/TransformState;Lcom/android/systemui/statusbar/TransformableView;F)Z
    .locals 3
    .param p1, "ownState"    # Lcom/android/systemui/statusbar/notification/TransformState;
    .param p2, "notification"    # Lcom/android/systemui/statusbar/TransformableView;
    .param p3, "transformationAmount"    # F

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-interface {p2, v2}, Lcom/android/systemui/statusbar/TransformableView;->getCurrentState(I)Lcom/android/systemui/statusbar/notification/TransformState;

    move-result-object v0

    .line 86
    .local v0, "otherState":Lcom/android/systemui/statusbar/notification/TransformState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/HybridNotificationView$1;->this$0:Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->mTextView:Landroid/widget/TextView;

    invoke-static {v1, p3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;F)V

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/notification/TransformState;->transformViewVerticalTo(Lcom/android/systemui/statusbar/notification/TransformState;F)V

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 91
    :cond_0
    return v2
.end method
