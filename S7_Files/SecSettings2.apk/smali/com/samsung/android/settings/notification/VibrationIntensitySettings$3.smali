.class Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;
.super Ljava/lang/Object;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VibrationIntensitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 281
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get2(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "VibrationIncommingCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "VibrationIncomingCall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    const-string/jumbo v2, "VibrationIncommingCallUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 283
    const-string/jumbo v2, "VibrationIncomingCallUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 284
    const-string/jumbo v2, "VibrationIncommingCallDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 284
    const-string/jumbo v2, "VibrationIncomingCallDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 285
    const-string/jumbo v2, "VibrationIncommingCallMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 285
    const-string/jumbo v2, "VibrationIncomingCallMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 286
    const-string/jumbo v2, "VibrationIncommingCallMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-nez v2, :cond_0

    .line 286
    const-string/jumbo v2, "VibrationIncomingCallMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 282
    if-eqz v2, :cond_2

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    const-string/jumbo v2, "VibrationNotification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 290
    const-string/jumbo v2, "VibrationNotificationsUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 289
    if-nez v2, :cond_3

    .line 291
    const-string/jumbo v2, "VibrationNotificationDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 289
    if-nez v2, :cond_3

    .line 292
    const-string/jumbo v2, "VibrationNotificationMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 289
    if-nez v2, :cond_3

    .line 293
    const-string/jumbo v2, "VibrationNotificationMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 289
    if-eqz v2, :cond_4

    .line 294
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 295
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 296
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    const-string/jumbo v2, "VibrationFeedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 297
    const-string/jumbo v2, "VibrationFeedbackUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-nez v2, :cond_5

    .line 298
    const-string/jumbo v2, "VibrationFeedbackDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-nez v2, :cond_5

    .line 299
    const-string/jumbo v2, "VibrationFeedbackMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-nez v2, :cond_5

    .line 300
    const-string/jumbo v2, "VibrationFeedbackMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-eqz v2, :cond_1

    .line 301
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 302
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VibrationIntensitySettings$3;->this$0:Lcom/samsung/android/settings/notification/VibrationIntensitySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VibrationIntensitySettings;->-get1(Lcom/samsung/android/settings/notification/VibrationIntensitySettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
