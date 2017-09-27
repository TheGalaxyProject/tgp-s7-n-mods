.class Lcom/android/keyguard/KnoxStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KnoxStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KnoxStateMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KnoxStateMonitor;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "com.sec.knox.keyguard.show"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 194
    const-string/jumbo v7, "personaId"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 195
    .local v5, "personaId":I
    const/16 v7, 0x64

    if-lt v5, v7, :cond_0

    const/16 v7, 0xc8

    if-gt v5, v7, :cond_0

    .line 196
    const-string/jumbo v7, "isShown"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 197
    .local v2, "isKnoxKeyguardShown":Z
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v9, 0x138a

    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 198
    .local v4, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    .end local v2    # "isKnoxKeyguardShown":Z
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "personaId":I
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/android/keyguard/KnoxStateMonitor$1;->getSendingUserId()I

    move-result v6

    .line 202
    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x138b

    invoke-virtual {v7, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 203
    .restart local v4    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 204
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "userId":I
    :cond_2
    const-string/jumbo v7, "android.app.action.DEVICE_POLICY_MANAGER_PASSWORD_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 205
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x138c

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 206
    :cond_3
    const-string/jumbo v7, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get3(Lcom/android/keyguard/KnoxStateMonitor;)Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KnoxStateMonitor$UcmMonitor;->getUCMVendor()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "keyguardCSName":Ljava/lang/String;
    const-string/jumbo v7, "UCS_CSNAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "changePlugincsname":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 210
    const-string/jumbo v7, "KnoxStateMonitor"

    const-string/jumbo v8, "com.samsung.ucs.ucsservice.stateblocked intent!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v7, p0, Lcom/android/keyguard/KnoxStateMonitor$1;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v7}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x138d

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
