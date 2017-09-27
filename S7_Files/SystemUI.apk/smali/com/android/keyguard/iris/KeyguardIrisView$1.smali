.class Lcom/android/keyguard/iris/KeyguardIrisView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/iris/KeyguardIrisView;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    sget v2, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 4
    .param p1, "helpCode"    # I
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 155
    .local v0, "attempts":I
    const/4 v1, -0x7

    if-ne p1, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 158
    const/16 v1, -0x9

    if-ne p1, v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 160
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisUnlockFailedState(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap3(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v1, -0x8

    if-ne p1, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1, p2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 2
    .param p1, "irisRunning"    # Z

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_1

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 191
    :cond_1
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v2, 0x4

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get0(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set0(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get2(Lcom/android/keyguard/iris/KeyguardIrisView;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 179
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to VISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 177
    :cond_1
    return-void

    .line 183
    :cond_2
    const-string/jumbo v0, "KeyguardIrisView"

    const-string/jumbo v1, "preview to INVISIBLE - onKeyguardBouncerChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get4(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get5(Lcom/android/keyguard/iris/KeyguardIrisView;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0, p1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-set1(Lcom/android/keyguard/iris/KeyguardIrisView;Z)Z

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockCompleted()Z

    move-result v0

    .line 138
    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIrisViewType(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 4
    .param p1, "phoneState"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v1

    .line 202
    const-string/jumbo v2, "phone"

    .line 201
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 203
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    packed-switch p1, :pswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get6(Lcom/android/keyguard/iris/KeyguardIrisView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    iget-object v2, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-get1(Lcom/android/keyguard/iris/KeyguardIrisView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 212
    sget v3, Lcom/android/keyguard/R$string;->iris_guide_str_enable_toggle:I

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap2(Lcom/android/keyguard/iris/KeyguardIrisView;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 248
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisView$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisView;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisView;->-wrap1(Lcom/android/keyguard/iris/KeyguardIrisView;)V

    .line 247
    :cond_0
    return-void
.end method
