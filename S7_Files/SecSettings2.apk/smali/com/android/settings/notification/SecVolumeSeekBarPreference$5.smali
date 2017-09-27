.class Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;
.super Ljava/lang/Object;
.source "SecVolumeSeekBarPreference.java"

# interfaces
.implements Landroid/preference/SeekBarVolumizer$Callback;


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
    .line 262
    iput-object p1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuted(ZZ)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "zenMuted"    # Z

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get2(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get8(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-set0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0, p2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-set1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;Z)Z

    .line 295
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-wrap2(Lcom/android/settings/notification/SecVolumeSeekBarPreference;Z)V

    .line 291
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;->onStreamValueChanged(II)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 275
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get5(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get1(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 2
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-wrap0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings/notification/SecVolumeSeekBarPreference$5;->this$0:Lcom/android/settings/notification/SecVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/android/settings/notification/SecVolumeSeekBarPreference;->-get0(Lcom/android/settings/notification/SecVolumeSeekBarPreference;)Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/SecVolumeSeekBarPreference$Callback;->onSampleStarting(Landroid/preference/SeekBarVolumizer;)V

    .line 268
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "SeekBarVolumizer onSampleStarting() : request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string/jumbo v0, "VolumeSeekBarPreference"

    const-string/jumbo v1, "SeekBarVolumizer : can\'t request focus."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
