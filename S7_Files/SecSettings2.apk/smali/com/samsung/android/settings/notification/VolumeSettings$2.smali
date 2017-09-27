.class Lcom/samsung/android/settings/notification/VolumeSettings$2;
.super Ljava/lang/Object;
.source "VolumeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/VolumeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeSettings;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 629
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "VolumeRingtoneLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "VolumeRingtoneUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    const-string/jumbo v2, "VolumeRingtoneDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 630
    if-nez v2, :cond_0

    .line 631
    const-string/jumbo v2, "VolumeRingtoneMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 630
    if-nez v2, :cond_0

    .line 632
    const-string/jumbo v2, "VolumeRingtoneMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 630
    if-eqz v2, :cond_3

    .line 633
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 634
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get8(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 637
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 639
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    const-string/jumbo v2, "VolumeMediaLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "VolumeMediaUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 640
    const-string/jumbo v2, "VolumeMediaDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 639
    if-nez v2, :cond_4

    .line 640
    const-string/jumbo v2, "VolumeMediaMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 639
    if-nez v2, :cond_4

    .line 641
    const-string/jumbo v2, "VolumeMediaMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 639
    if-eqz v2, :cond_6

    .line 642
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 643
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 644
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 646
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 648
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6
    const-string/jumbo v2, "VolumeAlarmLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "VolumeAlarmUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 649
    const-string/jumbo v2, "VolumeAlarmDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 648
    if-nez v2, :cond_7

    .line 649
    const-string/jumbo v2, "VolumeAlarmMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 648
    if-nez v2, :cond_7

    .line 650
    const-string/jumbo v2, "VolumeAlarmMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 648
    if-eqz v2, :cond_9

    .line 651
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 652
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get7(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 653
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 655
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 657
    .end local v0    # "msg":Landroid/os/Message;
    :cond_9
    const-string/jumbo v2, "VolumeSystemLevel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "VolumeSystemUp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 658
    const-string/jumbo v2, "VolumeSystemDown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 657
    if-nez v2, :cond_a

    .line 658
    const-string/jumbo v2, "VolumeSystemMax"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 657
    if-nez v2, :cond_a

    .line 659
    const-string/jumbo v2, "VolumeSystemMin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 657
    if-eqz v2, :cond_1

    .line 660
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 661
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->getInitFinish()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 662
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 664
    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeSettings$2;->this$0:Lcom/samsung/android/settings/notification/VolumeSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
