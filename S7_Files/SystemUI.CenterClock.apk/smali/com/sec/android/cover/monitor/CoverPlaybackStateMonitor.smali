.class public Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.super Ljava/lang/Object;
.source "CoverPlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;
    }
.end annotation


# static fields
.field private static final AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

.field private static final AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const-class v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "com.google.android.music"

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "com.sec.android.app.music"

    aput-object v1, v0, v3

    .line 50
    const-string/jumbo v1, "com.samsung.android.app.music.chn"

    aput-object v1, v0, v4

    .line 47
    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "com.sec.android.app.voicenote"

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "com.samsung.android.app.memo"

    aput-object v1, v0, v3

    .line 54
    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 79
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 380
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    .line 73
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    .line 76
    const-string/jumbo v1, "media_session"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 68
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v1, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    .line 64
    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 274
    monitor-enter p0

    .line 275
    if-nez p1, :cond_2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 283
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    .line 273
    return-void

    .line 287
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_4

    .line 292
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 297
    :cond_4
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    .line 299
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    .line 300
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCurrentlyPlayingPacakge()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    monitor-enter p0

    .line 335
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 338
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    .line 344
    return-object v3

    .line 334
    .end local v0    # "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCurentlyPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    .line 317
    return v2

    .line 319
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 320
    .local v0, "state":Landroid/media/session/PlaybackState;
    if-nez v0, :cond_1

    monitor-exit p0

    .line 321
    return v2

    .line 324
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 325
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    .line 324
    return v1

    :cond_3
    move v1, v2

    .line 325
    goto :goto_0

    .line 315
    .end local v0    # "state":Landroid/media/session/PlaybackState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRelevant(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 109
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_0

    .line 110
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v6, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 111
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRelevant packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result=false reason=BLACK_LIST"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v7

    .line 117
    :cond_0
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 118
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v6, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 119
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result=true reason=WHITE_LIST"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v10

    .line 125
    :cond_1
    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 127
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    :try_start_0
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 128
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    .line 129
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "com.sec.android.cover.ledcover.SUPPORT_MUSIC"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 130
    .local v5, "supportsMusic":Z
    if-eqz v5, :cond_2

    .line 131
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRelevant packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result=true reason=METADATA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return v10

    .line 136
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "supportsMusic":Z
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 143
    .local v2, "notifications":[Landroid/service/notification/StatusBarNotification;
    if-eqz v2, :cond_4

    .line 144
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v4, v2, v6

    .line 145
    .local v4, "sb":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 146
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 147
    const-string/jumbo v8, " result=true reason=NOTIFICATION"

    .line 146
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v10

    .line 144
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 153
    .end local v4    # "sb":Landroid/service/notification/StatusBarNotification;
    :cond_4
    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isRelevant packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result=false reason=END"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v7
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 162
    const-string/jumbo v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "controller$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 165
    .local v0, "controller":Landroid/media/session/MediaController;
    const-string/jumbo v7, " Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v7, " State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v1    # "controller$iterator":Ljava/util/Iterator;
    :cond_0
    sget-object v7, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onActiveSessionsChanged controllers: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 159
    :cond_1
    :goto_1
    return-void

    .line 175
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "controller$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 176
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 179
    .local v5, "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v5, :cond_3

    .line 180
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 181
    .local v2, "flags":J
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 182
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 183
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isRelevant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    invoke-direct {p0, v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 185
    return-void

    .line 187
    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 188
    return-void

    .line 196
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 197
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    if-eqz v0, :cond_6

    .line 198
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 199
    .restart local v4    # "pkg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isRelevant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 200
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    .line 201
    .restart local v5    # "playbackState":Landroid/media/session/PlaybackState;
    if-eqz v5, :cond_6

    .line 202
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 203
    .restart local v2    # "flags":J
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 204
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_6

    .line 205
    invoke-direct {p0, v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 206
    return-void

    .line 214
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "playbackState":Landroid/media/session/PlaybackState;
    :cond_7
    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v7, :cond_8

    .line 215
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v7

    .line 216
    iget-object v8, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v8

    .line 215
    invoke-virtual {v7, v8}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 214
    if-eqz v7, :cond_8

    .line 217
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    .line 218
    .restart local v0    # "controller":Landroid/media/session/MediaController;
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    .line 219
    .restart local v2    # "flags":J
    const-wide/16 v8, 0x2

    and-long/2addr v8, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_8

    .line 220
    sget-object v7, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    .line 221
    const-string/jumbo v8, "onActiveSessionsChanged().Top of List<MediaController> is same as before : "

    .line 220
    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 226
    .end local v0    # "controller":Landroid/media/session/MediaController;
    .end local v2    # "flags":J
    :cond_8
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    goto/16 :goto_1
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 258
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    monitor-enter p0

    .line 260
    if-nez p1, :cond_0

    .line 261
    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 262
    return v3

    .line 264
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: No current media session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 266
    return v3

    .line 269
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2
    .param p1, "onPlaybackStateChangedListener"    # Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 100
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 98
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 231
    sget-object v2, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 233
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.samsung.android.REMOVE_MEDIA_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    .line 237
    new-instance v1, Landroid/os/Handler;

    .end local v1    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, p0, v4, v5, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    .line 241
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, v4, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 243
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 230
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V

    .line 251
    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 246
    return-void
.end method
