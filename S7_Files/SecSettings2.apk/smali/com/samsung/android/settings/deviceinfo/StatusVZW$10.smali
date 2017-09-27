.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;
.super Landroid/telephony/PhoneStateListener;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/StatusVZW;
    .param p2, "$anonymous0"    # I
    .param p3, "val$slotId"    # I

    .prologue
    .line 368
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    .line 370
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 376
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 383
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 390
    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    iget v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->val$slotId:I

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateSignalStrength(IILandroid/telephony/SignalStrength;)V

    .line 389
    :cond_0
    return-void
.end method
