.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeneralTouchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 1493
    const-string/jumbo v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    const-string/jumbo v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: mHintAnimation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",mRight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_0
    const/4 v2, 0x0

    .line 1498
    .local v2, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1500
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1501
    .local v5, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1502
    .local v3, "x":F
    packed-switch v0, :pswitch_data_0

    .line 1639
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v7, 0x1

    return v7

    .line 1504
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1505
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    .line 1506
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1507
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1508
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1510
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1511
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1513
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1515
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get25(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted(Z)V

    .line 1517
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1518
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1519
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1520
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1522
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1523
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1524
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1525
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1526
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1528
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1529
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1533
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1535
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->userActivity()V

    .line 1536
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1538
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v4, v3, v7

    .line 1539
    .local v4, "xDist":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F

    move-result v7

    sub-float v6, v5, v7

    .line 1540
    .local v6, "yDist":F
    float-to-double v8, v4

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v1, v8

    .line 1542
    .local v1, "distance":F
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1544
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_4

    .line 1545
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap13(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1547
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap14(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1548
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1549
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->cancelDAAffordance()V

    .line 1550
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 1553
    :cond_4
    sget-boolean v7, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SKIP_SHORTCUT_ARROW_SHOWING_VI:Z

    if-nez v7, :cond_1

    .line 1554
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap16(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V

    .line 1555
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set20(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_0

    .line 1560
    .end local v1    # "distance":F
    .end local v4    # "xDist":F
    .end local v6    # "yDist":F
    :pswitch_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1563
    const/4 v2, 0x1

    .line 1564
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, v3, v5}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V

    .line 1565
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    .line 1568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    .line 1567
    sub-long/2addr v8, v10

    .line 1568
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v10, v7

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    .line 1567
    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 1569
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1579
    :cond_5
    :goto_1
    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set26(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1581
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v8

    const-string/jumbo v9, "mBlinkAnimator"

    invoke-static {v7, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap2(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1582
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1584
    const-string/jumbo v7, "KeyguardCircleAffordanceView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent: mJustClicked="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1585
    const-string/jumbo v9, ",mReveal="

    .line 1584
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1585
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    .line 1584
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1585
    const-string/jumbo v9, ",isUp="

    .line 1584
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1585
    const-string/jumbo v9, ",mFling="

    .line 1584
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1585
    iget-object v9, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v9

    .line 1584
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v2, :cond_7

    .line 1628
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->releaseShader()V

    goto/16 :goto_0

    .line 1571
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get17(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1573
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onIconClicked(Z)Z

    goto/16 :goto_1

    .line 1587
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/16 v8, 0x59

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set7(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I

    .line 1588
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get21(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1589
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1590
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1592
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1593
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap11(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1594
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1595
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1597
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get18(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1598
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1599
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1600
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 1602
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    if-eqz v7, :cond_8

    .line 1603
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap8(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1604
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get6(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1606
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    goto/16 :goto_0

    .line 1610
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1611
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap1(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1613
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set10(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1614
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F

    .line 1615
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1616
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 1618
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap15(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V

    .line 1619
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap12(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto/16 :goto_0

    .line 1621
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get24(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1622
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap5(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 1623
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto/16 :goto_0

    .line 1633
    :pswitch_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-set19(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z

    .line 1634
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v7, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-wrap3(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V

    .line 1635
    iget-object v7, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget-object v7, v7, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto/16 :goto_0

    .line 1502
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
