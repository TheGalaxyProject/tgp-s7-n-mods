.class Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIrisTextPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/iris/KeyguardIrisTextPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;


# direct methods
.method constructor <init>(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 3
    .param p1, "helpCode"    # I
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 132
    const/16 v1, -0x9

    if-ne p1, v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 133
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v0

    .line 135
    .local v0, "attempts":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 131
    .end local v0    # "attempts":I
    :cond_1
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 4
    .param p1, "irisRunning"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 146
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithIrisPossible(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFristScreen()Z

    move-result v0

    .line 147
    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 121
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v1

    .line 159
    const-string/jumbo v2, "phone"

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 160
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    packed-switch p1, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 164
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsIrisRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 201
    invoke-static {p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(Lcom/android/internal/telephony/IccCardConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-virtual {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 200
    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIrisUnlockState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get1(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    invoke-static {v0}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->-get0(Lcom/android/keyguard/iris/KeyguardIrisTextPreview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEnabledIrisOnFristScreen()Z

    move-result v0

    .line 113
    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/iris/KeyguardIrisTextPreview$1;->this$0:Lcom/android/keyguard/iris/KeyguardIrisTextPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/iris/KeyguardIrisTextPreview;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method
