.class Lcom/android/server/audio/AudioService$AppCategorizer$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$AppCategorizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/audio/AudioService$AppCategorizer;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$AppCategorizer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/audio/AudioService$AppCategorizer;

    .prologue
    .line 9936
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AppCategorizer$1;->this$1:Lcom/android/server/audio/AudioService$AppCategorizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9939
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer$1;->this$1:Lcom/android/server/audio/AudioService$AppCategorizer;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 9940
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 9941
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9942
    iget-object v1, p0, Lcom/android/server/audio/AudioService$AppCategorizer$1;->this$1:Lcom/android/server/audio/AudioService$AppCategorizer;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$AppCategorizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9938
    return-void
.end method
