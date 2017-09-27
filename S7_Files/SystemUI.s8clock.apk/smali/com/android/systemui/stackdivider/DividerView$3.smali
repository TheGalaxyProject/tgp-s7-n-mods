.class Lcom/android/systemui/stackdivider/DividerView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/stackdivider/DividerView;->-set0(Lcom/android/systemui/stackdivider/DividerView;Z)Z

    .line 420
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;II)V

    goto :goto_0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerView;->-wrap1(Lcom/android/systemui/stackdivider/DividerView;II)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 402
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 403
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    .line 404
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->-get3(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v3

    .line 405
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/systemui/stackdivider/DividerView;->-wrap0(Lcom/android/systemui/stackdivider/DividerView;II)I

    move-result v4

    const/4 v5, 0x0

    .line 404
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v2

    .line 406
    .local v2, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-boolean v3, v0, Landroid/util/MutableBoolean;->value:Z

    if-nez v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    sget v4, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_DIVIDER_BUTTON_INVISIBLE:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->checkDividerFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 408
    :cond_1
    iget v3, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->flag:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iget-boolean v3, v3, Lcom/android/systemui/stackdivider/DividerView;->mSnapModeRunning:Z

    .line 406
    if-eqz v3, :cond_0

    .line 409
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    .line 410
    new-instance v4, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v5, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_VISIBLE:I

    sget v6, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    or-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    .line 409
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 411
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$3;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->-wrap3(Lcom/android/systemui/stackdivider/DividerView;)V

    goto :goto_0
.end method
