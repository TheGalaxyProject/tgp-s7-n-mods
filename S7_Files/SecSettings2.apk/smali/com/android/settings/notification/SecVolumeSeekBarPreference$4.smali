.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SecVolumeSeekBarPreference;->init()V
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
    .line 237
    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 250
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "onProgressChanged changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 249
    :cond_0
    return-void
.end method

.method public onSampleStarting(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;)V
    .locals 2
    .param p1, "sbv"    # Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$4;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-wrap0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "SecSeekBarVolumizerDTMF requestAudioFocus() return true : request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "SecSeekBarVolumizerDTMF : can\'t request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
