.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;
.super Landroid/widget/FrameLayout;
.source "ClearCoverMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicArtistTextView:Landroid/widget/TextView;

.field private mMusicNext:Landroid/widget/ImageButton;

.field private mMusicPlay:Landroid/widget/ImageButton;

.field private mMusicPrevious:Landroid/widget/ImageButton;

.field private mMusicTitleTextView:Landroid/widget/TextView;

.field private mPlaybackState:Landroid/media/session/PlaybackState;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    .line 77
    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 78
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 37
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_artist:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_previous:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    .line 42
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;

    const/16 v2, 0x58

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_play:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;

    const/16 v2, 0x55

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_next:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;

    const/16 v2, 0x57

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 4
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    const/4 v3, 0x1

    .line 66
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v2, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 65
    :cond_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 10
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 54
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->clear_music_pause:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->tts_pause:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 52
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    sget v3, Lcom/sec/android/sviewcover/R$drawable;->clear_music_play:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$string;->tts_play:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 61
    goto :goto_1

    :cond_2
    move v1, v2

    .line 62
    goto :goto_2
.end method
