.class abstract Lcom/android/systemui/doze/DozeService$ProximityCheck;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ProximityCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    .line 575
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$ProximityCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get5(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 629
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get11(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get8(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setDisabled(Z)V

    .line 632
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 634
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->onProximityResult(I)V

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mFinished:Z

    .line 625
    return-void
.end method


# virtual methods
.method public check()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 591
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get11(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 593
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_3

    .line 594
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 596
    return-void

    .line 599
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get8(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setDisabled(Z)V

    .line 601
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mMaxRange:F

    .line 602
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get11(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->-get5(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v3, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 603
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get5(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    iput-boolean v6, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 590
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 639
    return-void
.end method

.method public abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 609
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    .line 610
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 608
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mMaxRange:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mMaxRange:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move v0, v1

    .line 615
    .local v0, "isNear":Z
    :cond_3
    if-eqz v0, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 621
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 620
    return-void
.end method
