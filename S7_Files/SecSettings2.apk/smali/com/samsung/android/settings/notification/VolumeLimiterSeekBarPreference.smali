.class public Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "VolumeLimiterSeekBarPreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

.field private mCheckedPW:Z

.field private mContext:Landroid/content/Context;

.field private mIconView:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private oldLimiterValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const v0, 0x7f04020d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setLayoutResource(I)V

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    return-void
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 154
    const-string/jumbo v0, "file:///system/media/audio/ui/Media_preview_Over_the_horizon.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 111
    const-string/jumbo v2, "volume_limiter_value"

    const/16 v3, 0xf

    .line 110
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x9

    .line 112
    .local v0, "currentProgress":I
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 113
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 106
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public DisplayCheckUI()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    invoke-interface {v0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog()V

    .line 180
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mStopped:Z

    .line 88
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 94
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 95
    const v0, 0x1020456

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 96
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f110580

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->init()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "volume_limiter_value"

    const/16 v2, 0xf

    .line 102
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->oldLimiterValue:I

    .line 93
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/16 v5, 0x9

    const/4 v1, 0x0

    .line 123
    invoke-super {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 124
    if-eqz p3, :cond_5

    .line 125
    add-int/lit8 p2, p2, 0x9

    .line 126
    const-string/jumbo v2, "VolumeLimiterSeekBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volume_limiter_value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-ge p2, v5, :cond_0

    .line 128
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 129
    return-void

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "volumelimit_set_password"

    .line 131
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    iget-boolean v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCheckedPW:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 133
    .local v0, "needChekcedPW":Z
    :goto_0
    if-eqz v0, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->oldLimiterValue:I

    if-le p2, v2, :cond_3

    .line 134
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    invoke-interface {v1}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;->showCheckPasswordDialog()V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->oldLimiterValue:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    return-void

    .line 132
    .end local v0    # "needChekcedPW":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 131
    goto :goto_0

    .line 138
    .restart local v0    # "needChekcedPW":Z
    :cond_3
    if-le p2, v5, :cond_6

    .line 139
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    .line 143
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_limiter_value"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audioParam;volumelimit_value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_4

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, p2

    .line 148
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithValueLog(Landroid/content/Context;IIJ)V

    .line 122
    .end local v0    # "needChekcedPW":Z
    :cond_5
    return-void

    .line 141
    .restart local v0    # "needChekcedPW":Z
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_1
.end method

.method public prepareMediaPlayer()V
    .locals 4

    .prologue
    .line 158
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 159
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, "sampleUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 164
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "sampleUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public releaseMediaPlayer()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 172
    return-void
.end method

.method public setCallback(Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCallback:Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCheckedPW:Z

    .line 76
    return-void
.end method

.method public setCheckedPW(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->mCheckedPW:Z

    .line 176
    return-void
.end method
