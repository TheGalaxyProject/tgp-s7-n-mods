.class Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x12c2

    .line 85
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 89
    const-wide/16 v2, 0x7d0

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 84
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Z)Z

    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 109
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 100
    :cond_1
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 81
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 78
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->refreshClock()V

    .line 117
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 113
    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Z)Z

    .line 75
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 73
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 95
    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onUserSwitched "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;Z)Z

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverClockWidget;)V

    .line 94
    return-void
.end method
