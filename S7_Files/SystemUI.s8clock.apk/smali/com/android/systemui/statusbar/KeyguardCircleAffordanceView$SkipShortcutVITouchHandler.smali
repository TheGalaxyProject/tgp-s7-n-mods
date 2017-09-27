.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;
.super Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkipShortcutVITouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1382
    .local v0, "action":I
    const/4 v1, 0x0

    .line 1384
    .local v1, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1385
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1386
    .local v2, "x":F
    packed-switch v0, :pswitch_data_0

    .line 1434
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 1388
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1389
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->bringToFront()V

    .line 1391
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1393
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1394
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1396
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 1398
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1399
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1401
    return v6

    .line 1407
    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1408
    return v6

    .line 1410
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    .line 1414
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1416
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1418
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1419
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1420
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1421
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1422
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1423
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1431
    :cond_3
    :goto_0
    return v6

    .line 1426
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1427
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1428
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$SkipShortcutVITouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_0

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
