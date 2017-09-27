.class Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 1124
    if-nez p2, :cond_1

    .line 1125
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1126
    const-string/jumbo v5, "KnoxStateMonitor"

    .line 1127
    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED intent OR intent.getAction() is null "

    .line 1126
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_0
    return-void

    .line 1131
    :cond_1
    const-string/jumbo v5, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1132
    const-string/jumbo v5, "policyChangedBundle"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1133
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1134
    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED bundle is null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_2
    return-void

    .line 1138
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1139
    const-string/jumbo v6, "policyChangedBundle"

    .line 1138
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1140
    .local v2, "policyChangedBundle":Landroid/os/Bundle;
    if-nez v2, :cond_5

    .line 1141
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1142
    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, " onReceive RCP_POLICY_CHANGED policyChangedBundle == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_4
    return-void

    .line 1146
    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1147
    const-string/jumbo v5, "KnoxStateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onReceive RCP_POLICY_CHANGED policyChangedBundle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_6
    const-string/jumbo v5, "personaId"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1152
    .local v1, "pId":I
    const-string/jumbo v5, "syncerList"

    .line 1151
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1153
    .local v4, "syncerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v5, "policyName"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, "policyName":Ljava/lang/String;
    if-eq v1, v8, :cond_7

    if-nez v4, :cond_8

    .line 1156
    :cond_7
    const-string/jumbo v5, "KnoxStateMonitor"

    .line 1157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " onReceive RCP_POLICY_CHANGED invalid data in bundle .. returning .... : pId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1158
    const-string/jumbo v7, " syncerList = "

    .line 1157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1158
    const-string/jumbo v7, " policyName = "

    .line 1157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1156
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1155
    :cond_8
    if-eqz v3, :cond_7

    .line 1163
    const-string/jumbo v0, "Notifications"

    .line 1164
    .local v0, "NOTIFICATIONS_STR":Ljava/lang/String;
    const-string/jumbo v5, "Notifications"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1165
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get7(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1167
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get8(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1169
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1170
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get2(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1171
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    iget-object v5, v5, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->this$0:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->-get1(Lcom/android/keyguard/KnoxStateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1391

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1172
    iget-object v5, p0, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor$4;->this$1:Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;->-get0(Lcom/android/keyguard/KnoxStateMonitor$ContainerMonitor;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1173
    const-string/jumbo v5, "KnoxStateMonitor"

    const-string/jumbo v6, "Notification RCP policy is updated"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v0    # "NOTIFICATIONS_STR":Ljava/lang/String;
    .end local v1    # "pId":I
    .end local v2    # "policyChangedBundle":Landroid/os/Bundle;
    .end local v3    # "policyName":Ljava/lang/String;
    .end local v4    # "syncerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9
    return-void
.end method
