.class Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v2, 0x3e8

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onIconChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    :cond_1
    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3e8

    .line 56
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onOpenThemeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-get0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method
