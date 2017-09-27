.class public Lcom/samsung/android/settings/location/SatelliteView$SetHandler;
.super Landroid/os/Handler;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/SatelliteView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/location/SatelliteView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/location/SatelliteView;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide v6, 0x412e848000000000L    # 1000000.0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 612
    new-array v1, v10, [D

    .line 613
    .local v1, "position":[D
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get13()D

    move-result-wide v4

    mul-double/2addr v4, v6

    aput-wide v4, v1, v12

    .line 614
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get12()D

    move-result-wide v4

    mul-double/2addr v4, v6

    aput-wide v4, v1, v13

    .line 616
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 618
    .local v0, "message":Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 611
    :goto_0
    return-void

    .line 622
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/location/SatelliteView;->startGPS()V

    .line 623
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-get6(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    .line 624
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    .line 626
    iput v11, v0, Landroid/os/Message;->what:I

    .line 627
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get1()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 628
    invoke-virtual {p0, v13}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    goto :goto_0

    .line 633
    :pswitch_1
    sget v3, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    if-ltz v3, :cond_0

    .line 635
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-get6(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v3

    sget-wide v4, Lcom/samsung/android/settings/location/SatelliteView;->ani_gap_x:D

    sget v6, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    sget-wide v6, Lcom/samsung/android/settings/location/SatelliteView;->ani_gap_y:D

    neg-double v6, v6

    sget v8, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->setPoint(DD)V

    .line 636
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/location/SatelliteView;->showSVStatus()V

    .line 638
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get7()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v5}, Lcom/samsung/android/settings/location/SatelliteView;->-get18(Lcom/samsung/android/settings/location/SatelliteView;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get8()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v5, v5, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v5, v4, v11

    const v5, 0x7f0b0b24

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, "sSatelliteResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-get23(Lcom/samsung/android/settings/location/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    .line 642
    iput v10, v0, Landroid/os/Message;->what:I

    .line 643
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get1()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 647
    .end local v2    # "sSatelliteResult":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    .line 648
    iput v11, v0, Landroid/os/Message;->what:I

    .line 649
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get1()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 650
    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get0()I

    move-result v3

    sput v3, Lcom/samsung/android/settings/location/SatelliteView;->ani_count:I

    goto/16 :goto_0

    .line 656
    :pswitch_2
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->removeMessages(I)V

    .line 657
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-get6(Lcom/samsung/android/settings/location/SatelliteView;)Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/location/SatelliteView$SatelliteDrawView;->invalidate()V

    .line 658
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get7()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v12

    iget-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v5}, Lcom/samsung/android/settings/location/SatelliteView;->-get18(Lcom/samsung/android/settings/location/SatelliteView;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v13

    invoke-static {}, Lcom/samsung/android/settings/location/SatelliteView;->-get8()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    iget-object v5, v5, Lcom/samsung/android/settings/location/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v5, v4, v11

    const v5, 0x7f0b0b24

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/location/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 659
    .restart local v2    # "sSatelliteResult":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/location/SatelliteView$SetHandler;->this$0:Lcom/samsung/android/settings/location/SatelliteView;

    invoke-static {v3}, Lcom/samsung/android/settings/location/SatelliteView;->-get23(Lcom/samsung/android/settings/location/SatelliteView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
