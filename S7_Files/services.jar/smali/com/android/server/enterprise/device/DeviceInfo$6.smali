.class Lcom/android/server/enterprise/device/DeviceInfo$6;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/device/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/device/DeviceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/device/DeviceInfo;

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1741
    iget-object v11, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1742
    return-void

    .line 1745
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1746
    .local v0, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1748
    .local v8, "msgData":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    if-nez v8, :cond_2

    .line 1749
    :cond_1
    const-string/jumbo v11, "DeviceInfo"

    const-string/jumbo v12, "No data arrived at mMessagingReceiver"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    return-void

    .line 1754
    :cond_2
    const-string/jumbo v11, "com.samsung.mms.RECEIVED_MSG"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1755
    const/4 v6, 0x1

    .line 1763
    .local v6, "isInbound":Z
    :goto_0
    const-string/jumbo v11, "msg_type"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1764
    .local v10, "type":Ljava/lang/String;
    const-string/jumbo v11, "mms"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1766
    const-string/jumbo v11, "msg_address"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1767
    .local v1, "address":Ljava/lang/String;
    const-string/jumbo v11, "date"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1768
    .local v4, "date":J
    const-string/jumbo v11, "msg_subject"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1769
    .local v9, "subject":Ljava/lang/String;
    const-string/jumbo v11, "msg_body"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1770
    .local v2, "body":Ljava/lang/String;
    const-string/jumbo v11, "content_location"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1772
    .local v3, "contentLocation":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_7

    const-string/jumbo v11, ""

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1773
    if-nez v9, :cond_8

    const-string/jumbo v11, ""

    .line 1772
    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1773
    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    .line 1772
    .end local v2    # "body":Ljava/lang/String;
    :cond_3
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1774
    .local v7, "message":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/enterprise/device/DeviceInfo$6;->this$0:Lcom/android/server/enterprise/device/DeviceInfo;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12, v7, v6}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1739
    .end local v1    # "address":Ljava/lang/String;
    .end local v3    # "contentLocation":Ljava/lang/String;
    .end local v4    # "date":J
    .end local v7    # "message":Ljava/lang/String;
    .end local v9    # "subject":Ljava/lang/String;
    :cond_4
    return-void

    .line 1756
    .end local v6    # "isInbound":Z
    .end local v10    # "type":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "com.samsung.mms.SENT_MSG"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1757
    const/4 v6, 0x0

    .restart local v6    # "isInbound":Z
    goto :goto_0

    .line 1759
    .end local v6    # "isInbound":Z
    :cond_6
    const-string/jumbo v11, "DeviceInfo"

    const-string/jumbo v12, "Unexpected intent arrived at mMessagingReceiver"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    return-void

    .line 1772
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v2    # "body":Ljava/lang/String;
    .restart local v3    # "contentLocation":Ljava/lang/String;
    .restart local v4    # "date":J
    .restart local v6    # "isInbound":Z
    .restart local v9    # "subject":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1773
    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_2
.end method
