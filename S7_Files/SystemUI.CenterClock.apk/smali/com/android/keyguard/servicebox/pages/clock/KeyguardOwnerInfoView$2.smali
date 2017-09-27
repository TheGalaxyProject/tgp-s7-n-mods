.class Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardOwnerInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    const/16 v1, 0x12ce

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setSelected(Z)V

    .line 90
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    .line 75
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    const/16 v1, 0x12ce

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 82
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/16 v1, 0x12ce

    .line 99
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView$2;->this$0:Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->-get0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    return-void
.end method
