.class public Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;
.super Ljava/lang/Object;
.source "SecSeekBarVolumizerDTMF.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;,
        Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$H;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeBeforeMute:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    .line 65
    iput v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mVolumeBeforeMute:I

    .line 66
    iput v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    .line 67
    iput-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 71
    iput-object p1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    .line 72
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    .line 74
    iput p2, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mStreamType:I

    .line 75
    iput-object p4, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mOriginalStreamVolume:I

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_waiting_tone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    .line 79
    if-nez p3, :cond_0

    .line 80
    iget v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mStreamType:I

    if-ne v0, v2, :cond_1

    .line 81
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 88
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mDefaultUri:Landroid/net/Uri;

    .line 70
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 83
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 85
    :cond_2
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;->onSampleStarting(Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;)V

    .line 127
    :cond_0
    return-void
.end method

.method private onStopSample()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 146
    const-string/jumbo v0, "SeekBarVolumizerDTMF"

    const-string/jumbo v1, "onStopSample()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    int-to-long v4, v0

    .line 123
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    const-string/jumbo v0, "SeekBarVolumizerDTMF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mStreamType:I

    iget v2, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    .line 96
    const/16 v3, 0x400

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->onStartSample()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->onStopSample()V

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->onInitSample()V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 179
    if-nez p3, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->stopToneGenerator()V

    .line 185
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_waiting_tone"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 192
    :cond_1
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v1, p2, -0x2

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 194
    .local v0, "volFloat":F
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v2, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v6}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 197
    iput p2, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    .line 198
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 178
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->postStartSample()V

    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 222
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    .line 263
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 260
    return-void

    .line 264
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SeekBarVolumizerDTMF.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 168
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    .line 169
    iget-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->postStopSample()V

    .line 153
    invoke-direct {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->stopToneGenerator()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 156
    iput-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 161
    iput-object v1, p0, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/android/settings/notification/SecSeekBarVolumizerDTMF;->postStopSample()V

    .line 252
    return-void
.end method
