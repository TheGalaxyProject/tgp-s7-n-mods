.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "SecVolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SecVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-string/jumbo v1, "VolumeSeekBarPreference"

    const-string/jumbo v2, "mVolumeChangeReceiver called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-nez p2, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, "newState":I
    const-string/jumbo v1, "VolumeSeekBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BluetoothA2dp.ACTION_CONNECTION_STATE_CHANGED : newState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v0    # "newState":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get4(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$1;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-wrap1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)V

    .line 87
    :cond_2
    return-void
.end method
