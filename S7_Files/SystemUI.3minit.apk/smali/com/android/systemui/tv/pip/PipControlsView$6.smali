.class Lcom/android/systemui/tv/pip/PipControlsView$6;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tv/pip/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tv/pip/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/tv/pip/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tv/pip/PipControlsView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_1

    .line 141
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    .line 144
    .local v0, "actions":J
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    .line 145
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v3, v3, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v3}, Lcom/android/systemui/tv/pip/PipManager;->getPlaybackState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 146
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 139
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    iget-object v3, v3, Lcom/android/systemui/tv/pip/PipControlsView;->mPipManager:Lcom/android/systemui/tv/pip/PipManager;

    invoke-virtual {v3}, Lcom/android/systemui/tv/pip/PipManager;->getPlaybackState()I

    move-result v3

    if-nez v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/android/systemui/tv/pip/PipControlsView$6;->this$0:Lcom/android/systemui/tv/pip/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/tv/pip/PipControlsView;->-get0(Lcom/android/systemui/tv/pip/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_0
.end method
