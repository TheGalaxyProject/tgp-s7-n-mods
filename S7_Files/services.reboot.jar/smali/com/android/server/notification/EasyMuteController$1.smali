.class Lcom/android/server/notification/EasyMuteController$1;
.super Ljava/lang/Object;
.source "EasyMuteController.java"

# interfaces
.implements Lcom/samsung/android/gesture/SemMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/EasyMuteController;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionEvent(Lcom/samsung/android/gesture/SemMotionRecognitionEvent;)V
    .locals 4
    .param p1, "motionEvent"    # Lcom/samsung/android/gesture/SemMotionRecognitionEvent;

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/gesture/SemMotionRecognitionEvent;->getMotion()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    const-string/jumbo v2, "EasyMuteController"

    const-string/jumbo v3, "SemMotionRecognitionEvent.FLIP_SCREEN_DOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2}, Lcom/android/server/notification/EasyMuteController;->-get0(Lcom/android/server/notification/EasyMuteController;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 89
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_1

    .line 90
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v2}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    .line 92
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v2}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    goto :goto_0

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 94
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v3}, Lcom/android/server/notification/EasyMuteController;->-get2(Lcom/android/server/notification/EasyMuteController;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$1;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-virtual {v3}, Lcom/android/server/notification/EasyMuteController;->unregisterListener()V

    .line 93
    :cond_2
    throw v2

    .line 84
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
