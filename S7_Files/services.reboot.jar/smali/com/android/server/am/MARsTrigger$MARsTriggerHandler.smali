.class final Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;
.super Landroid/os/Handler;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MARsTriggerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsTrigger;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsTrigger;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->this$0:Lcom/android/server/am/MARsTrigger;

    .line 150
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 149
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 155
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 161
    const-string/jumbo v3, "policy-num"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "policy_num":I
    const-string/jumbo v3, "trigger-reason"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, v4, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v4, v1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->executePolicy(Lcom/android/server/am/MARsPolicyManager$Policy;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "policy_num":I
    .end local v2    # "reason":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->checkSCPMParameters()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
