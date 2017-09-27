.class Lcom/android/keyguard/servicebox/pages/music/MusicController$1;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/music/MusicController;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 4
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 171
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 172
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 173
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .line 174
    .local v0, "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setMetadata(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 170
    .end local v0    # "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 6
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-set1(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPlaybackStateChanged() / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 136
    :cond_0
    return-void

    .line 143
    :pswitch_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 144
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .line 145
    .local v0, "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 154
    .end local v0    # "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    .end local v2    # "ref$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "ref$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 155
    .restart local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .line 156
    .restart local v0    # "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionDestroyed()V
    .locals 4

    .prologue
    .line 182
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;->this$0:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->-get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 183
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;

    .line 184
    .local v0, "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;->clear()V

    goto :goto_0

    .line 181
    .end local v0    # "callback":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerCallback;>;"
    :cond_1
    return-void
.end method
