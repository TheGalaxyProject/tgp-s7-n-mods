.class Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverDualClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    const/16 v2, 0x12c2

    .line 105
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 110
    const-wide/16 v2, 0x7d0

    .line 109
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z

    .line 125
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DateFormatObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 131
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 132
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HomeCityChangeObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "dualclock.homecity_timezone"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    :cond_2
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 100
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 101
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 98
    return-void
.end method

.method public onHomeCityChanged()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 118
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 143
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->refreshClock()V

    .line 145
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 141
    return-void
.end method

.method public onThemeFontChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z

    .line 95
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 93
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 2
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-set1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;Z)Z

    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget$1;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;->-wrap1(Lcom/sec/android/cover/clearcover/widget/ClearCoverDualClockWidget;)V

    .line 113
    return-void
.end method
