.class Lcom/android/server/net/NetworkPolicyManagerService$22;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 4705
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 40
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4708
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v32, v0

    sparse-switch v32, :sswitch_data_0

    .line 4925
    const/16 v32, 0x0

    return v32

    .line 4710
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4711
    .local v27, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    .line 4712
    .local v28, "uidRules":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4714
    .local v14, "length":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v14, :cond_0

    .line 4715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4716
    .local v15, "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap10(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4714
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 4718
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4719
    const/16 v32, 0x1

    return v32

    .line 4722
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v27    # "uid":I
    .end local v28    # "uidRules":I
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [Ljava/lang/String;

    .line 4723
    .local v19, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4725
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v14, :cond_1

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4727
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4725
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 4729
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4730
    const/16 v32, 0x1

    return v32

    .line 4733
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v19    # "meteredIfaces":[Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 4735
    .local v10, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 4736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 4738
    :try_start_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 4739
    .local v11, "imsIface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v34, 0x4

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap0(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/net/LinkProperties;

    move-result-object v18

    .line 4740
    .local v18, "lp":Landroid/net/LinkProperties;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v11

    .line 4742
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 4744
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v32

    const-string/jumbo v34, "CscFeature_RIL_SupportVolte"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 4745
    if-eqz v10, :cond_4

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v32

    .line 4742
    if-eqz v32, :cond_4

    .line 4750
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4755
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 4756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v33

    .line 4759
    const/16 v32, 0x1

    return v32

    .line 4736
    .end local v11    # "imsIface":Ljava/lang/String;
    .end local v18    # "lp":Landroid/net/LinkProperties;
    :catchall_0
    move-exception v32

    monitor-exit v33

    throw v32

    .line 4762
    .end local v10    # "iface":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    if-eqz v32, :cond_5

    const/16 v26, 0x1

    .line 4763
    .local v26, "restrictBackground":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4765
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v14, :cond_6

    .line 4766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4767
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-static {v0, v15, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4765
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 4762
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v26    # "restrictBackground":Z
    :cond_5
    const/16 v26, 0x0

    .restart local v26    # "restrictBackground":Z
    goto :goto_3

    .line 4769
    .restart local v9    # "i":I
    .restart local v14    # "length":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4771
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v32, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v32

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4772
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v32, 0x40000000    # 2.0f

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v32

    sget-object v33, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4774
    const/16 v32, 0x1

    return v32

    .line 4787
    .end local v9    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "length":I
    .end local v26    # "restrictBackground":Z
    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4788
    .restart local v27    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    const/4 v7, 0x1

    .line 4789
    .local v7, "changed":Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/lang/Boolean;

    .line 4792
    .local v30, "whitelisted":Ljava/lang/Boolean;
    if-eqz v30, :cond_9

    .line 4793
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    .line 4794
    .local v31, "whitelistedBool":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4797
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    if-ge v9, v14, :cond_8

    .line 4798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4799
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v31

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4797
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 4788
    .end local v7    # "changed":Z
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v30    # "whitelisted":Ljava/lang/Boolean;
    .end local v31    # "whitelistedBool":Z
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "changed":Z
    goto :goto_5

    .line 4802
    .restart local v9    # "i":I
    .restart local v14    # "length":I
    .restart local v30    # "whitelisted":Ljava/lang/Boolean;
    .restart local v31    # "whitelistedBool":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4805
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v31    # "whitelistedBool":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 4806
    .local v24, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v21

    .line 4807
    .local v21, "packages":[Ljava/lang/String;
    if-eqz v7, :cond_a

    if-eqz v21, :cond_a

    .line 4809
    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 4810
    .local v29, "userId":I
    const/16 v32, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v33, v0

    :goto_7
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    aget-object v20, v21, v32

    .line 4811
    .local v20, "packageName":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    .line 4812
    const-string/jumbo v34, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 4811
    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4813
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4814
    const/high16 v34, 0x40000000    # 2.0f

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/net/NetworkPolicyManagerService;->-get3(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4810
    add-int/lit8 v32, v32, 0x1

    goto :goto_7

    .line 4818
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v29    # "userId":I
    :cond_a
    const/16 v32, 0x1

    return v32

    .line 4821
    .end local v7    # "changed":Z
    .end local v21    # "packages":[Ljava/lang/String;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v27    # "uid":I
    .end local v30    # "whitelisted":Ljava/lang/Boolean;
    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4822
    .restart local v27    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    .line 4824
    .local v6, "blacklisted":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkPolicyListener;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v0, v1, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    .line 4827
    .restart local v14    # "length":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_9
    if-ge v9, v14, :cond_c

    .line 4828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v15

    check-cast v15, Landroid/net/INetworkPolicyListener;

    .line 4829
    .restart local v15    # "listener":Landroid/net/INetworkPolicyListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v0, v15, v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;IZ)V

    .line 4827
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 4822
    .end local v6    # "blacklisted":Z
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v15    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_b
    const/4 v6, 0x0

    .restart local v6    # "blacklisted":Z
    goto :goto_8

    .line 4832
    .restart local v9    # "i":I
    .restart local v14    # "length":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get7(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4833
    const/16 v32, 0x1

    return v32

    .line 4836
    .end local v6    # "blacklisted":Z
    .end local v9    # "i":I
    .end local v14    # "length":I
    .end local v27    # "uid":I
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/Long;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 4842
    .local v16, "lowestRule":J
    move-wide/from16 v22, v16

    .line 4844
    .local v22, "persistThreshold":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get9(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4848
    :goto_a
    const/16 v32, 0x1

    return v32

    .line 4851
    .end local v16    # "lowestRule":J
    .end local v22    # "persistThreshold":J
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap26(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4852
    const/16 v32, 0x1

    return v32

    .line 4855
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    .line 4858
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const/16 v36, 0x20

    shl-long v34, v34, v36

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    or-long v34, v34, v36

    .line 4857
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap18(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 4859
    const/16 v32, 0x1

    return v32

    .line 4862
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4863
    const/16 v32, 0x1

    return v32

    .line 4867
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4868
    .restart local v27    # "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 4869
    .local v25, "procState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap27(Lcom/android/server/net/NetworkPolicyManagerService;II)V

    .line 4870
    const/16 v32, 0x1

    return v32

    .line 4873
    .end local v25    # "procState":I
    .end local v27    # "uid":I
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 4874
    .restart local v27    # "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap17(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4875
    const/16 v32, 0x1

    return v32

    .line 4879
    .end local v27    # "uid":I
    :sswitch_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 4880
    .local v5, "arg":I
    const/16 v32, 0x1

    move/from16 v0, v32

    if-ne v0, v5, :cond_d

    const/4 v13, 0x1

    .line 4881
    .local v13, "isWhiteListChanged":Z
    :goto_b
    if-eqz v13, :cond_e

    .line 4882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistLocked()V

    .line 4883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4889
    :goto_c
    const/16 v32, 0x1

    return v32

    .line 4880
    .end local v13    # "isWhiteListChanged":Z
    :cond_d
    const/4 v13, 0x0

    goto :goto_b

    .line 4885
    .restart local v13    # "isWhiteListChanged":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveTempWhitelistLocked()V

    .line 4886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap25(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->purgePowerSaveTempWhitelistLocked()V

    goto :goto_c

    .line 4893
    .end local v5    # "arg":I
    .end local v13    # "isWhiteListChanged":Z
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    .line 4895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4896
    const/16 v32, 0x1

    return v32

    .line 4900
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    .line 4902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4903
    const/16 v32, 0x1

    return v32

    .line 4907
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerLocked()V

    .line 4909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap22(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4910
    const/16 v32, 0x1

    return v32

    .line 4914
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v33, v0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get13()Z

    move-result v32

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/server/net/NetworkPolicyManagerService;->-get14(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v32

    if-eqz v32, :cond_10

    :cond_f
    const/16 v32, 0x0

    :goto_d
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap19(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 4915
    const/16 v32, 0x1

    return v32

    .line 4914
    :cond_10
    const/16 v32, 0x1

    goto :goto_d

    .line 4919
    :sswitch_11
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 4920
    .local v4, "appStatus":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    .line 4921
    .restart local v20    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$22;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-static {v0, v4, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)V

    .line 4922
    const/16 v32, 0x1

    return v32

    .line 4845
    .end local v4    # "appStatus":I
    .end local v20    # "packageName":Ljava/lang/String;
    .restart local v16    # "lowestRule":J
    .restart local v22    # "persistThreshold":J
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 4751
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v16    # "lowestRule":J
    .end local v22    # "persistThreshold":J
    .restart local v10    # "iface":Ljava/lang/String;
    .restart local v11    # "imsIface":Ljava/lang/String;
    .restart local v18    # "lp":Landroid/net/LinkProperties;
    :catch_1
    move-exception v8

    .restart local v8    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2

    .line 4708
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_4
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_5
        0xd -> :sswitch_11
        0x3e9 -> :sswitch_a
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_f
        0x3ec -> :sswitch_10
        0x3ed -> :sswitch_c
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_d
    .end sparse-switch
.end method
