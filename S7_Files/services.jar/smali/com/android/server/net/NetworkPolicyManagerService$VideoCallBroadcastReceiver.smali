.class final Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 1010
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    .local v1, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v7, "VZW-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v8, "ATT"

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v8, "TMO"

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap2(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1012
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android.intent.action.PRECISE_CALL_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1011
    if-eqz v7, :cond_2

    .line 1013
    const-string/jumbo v7, "ringing_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1014
    .local v5, "ringingCallState":I
    const-string/jumbo v7, "foreground_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1015
    .local v2, "foregroundCallState":I
    const-string/jumbo v7, "background_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1016
    .local v0, "backgroundCallState":I
    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 1017
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    .line 1018
    .local v4, "hasVideoCall":Z
    const-string/jumbo v7, "activevideo"

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    .line 1019
    .local v3, "hasActiveVideoCall":Z
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo v8, "epdg"

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->-set2(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 1021
    const-string/jumbo v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VideoCallBroadcastReceiver - ringingCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", foregroundCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1022
    const-string/jumbo v9, ", backgroundCallState: "

    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1022
    const-string/jumbo v9, ", hasVideoCall: "

    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1022
    const-string/jumbo v9, ", hasActiveVideoCall: "

    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1022
    const-string/jumbo v9, ", mHasEpdgCall : "

    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1022
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v9}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v9

    .line 1021
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->-get6(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v7

    if-eq v7, v4, :cond_2

    .line 1025
    if-eqz v3, :cond_3

    .line 1026
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-set3(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 1028
    const-string/jumbo v7, "NetworkPolicy"

    const-string/jumbo v8, "Video call start."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1030
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v8

    .line 1009
    .end local v0    # "backgroundCallState":I
    .end local v2    # "foregroundCallState":I
    .end local v3    # "hasActiveVideoCall":Z
    .end local v4    # "hasVideoCall":Z
    .end local v5    # "ringingCallState":I
    .end local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    return-void

    .line 1029
    .restart local v0    # "backgroundCallState":I
    .restart local v2    # "foregroundCallState":I
    .restart local v3    # "hasActiveVideoCall":Z
    .restart local v4    # "hasVideoCall":Z
    .restart local v5    # "ringingCallState":I
    .restart local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1032
    :cond_3
    if-nez v4, :cond_2

    .line 1033
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->-set3(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 1034
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->-set6(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 1035
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->-set7(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 1037
    const-string/jumbo v7, "NetworkPolicy"

    const-string/jumbo v8, "Video call end."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1039
    :try_start_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 1040
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 1041
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 1042
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1038
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method
