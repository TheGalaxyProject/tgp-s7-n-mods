.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;
.super Landroid/os/Handler;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/deviceinfo/StatusVZW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 1
    .param p1, "activity"    # Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 304
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 310
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    .line 311
    .local v1, "status":Lcom/samsung/android/settings/deviceinfo/StatusVZW;
    if-nez v1, :cond_0

    .line 312
    return-void

    .line 315
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 318
    :sswitch_0
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "EVENT_SERVICE_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get10(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 320
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-get10(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 321
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    invoke-static {v1, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V

    .line 322
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    goto :goto_0

    .line 324
    .end local v0    # "mServiceState":Landroid/telephony/ServiceState;
    :cond_1
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "status.mPhoneStateReceiver is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :sswitch_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateTimes()V

    .line 329
    const-wide/16 v2, 0x3e8

    const/16 v4, 0x1f4

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 333
    :sswitch_2
    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateConnectivity()V

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x258 -> :sswitch_2
    .end sparse-switch
.end method
