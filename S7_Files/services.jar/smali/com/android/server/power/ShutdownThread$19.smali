.class final Lcom/android/server/power/ShutdownThread$19;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->textToSpeech(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$ttsVolume:D


# direct methods
.method constructor <init>(DLjava/lang/String;)V
    .locals 1
    .param p1, "val$ttsVolume"    # D
    .param p3, "val$msg"    # Ljava/lang/String;

    .prologue
    .line 2425
    iput-wide p1, p0, Lcom/android/server/power/ShutdownThread$19;->val$ttsVolume:D

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$19;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 2428
    if-nez p1, :cond_0

    .line 2429
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "!@Text to speech"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2431
    .local v0, "param":Ljava/util/HashMap;
    const-string/jumbo v1, "streamType"

    .line 2432
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2431
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2433
    const-string/jumbo v1, "volume"

    .line 2434
    iget-wide v2, p0, Lcom/android/server/power/ShutdownThread$19;->val$ttsVolume:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 2433
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2435
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get15()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$19;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 2427
    .end local v0    # "param":Ljava/util/HashMap;
    :goto_0
    return-void

    .line 2437
    :cond_0
    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "TTS init result fail"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
