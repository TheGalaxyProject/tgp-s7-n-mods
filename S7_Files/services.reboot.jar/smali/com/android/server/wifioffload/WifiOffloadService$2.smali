.class Lcom/android/server/wifioffload/WifiOffloadService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifioffload/WifiOffloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifioffload/WifiOffloadService;


# direct methods
.method constructor <init>(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 714
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    return-void

    .line 719
    :cond_0
    const-string/jumbo v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 721
    const-string/jumbo v6, "wifi_state"

    .line 722
    const/4 v7, 0x4

    .line 720
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 723
    .local v2, "currentWifiState":I
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1

    const/4 v7, 0x3

    if-ne v2, v7, :cond_3

    :cond_1
    :goto_0
    invoke-static {v6, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-set5(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 724
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-get4(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 725
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->-set1(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 727
    :cond_2
    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wi-Fi status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->-get4(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentWifiState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void

    :cond_3
    move v4, v5

    .line 723
    goto :goto_0

    .line 732
    .end local v2    # "currentWifiState":I
    :cond_4
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    .line 731
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 734
    const-string/jumbo v6, "networkInfo"

    .line 733
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 736
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    .line 737
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    .line 738
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 737
    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 739
    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v5, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-set4(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 745
    :cond_5
    :goto_1
    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Wi-Fi network state change, connected ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 746
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->-get3(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    .line 745
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-void

    .line 740
    :cond_6
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 741
    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 740
    invoke-virtual {v4, v6}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 742
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v4, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->-set4(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    goto :goto_1

    .line 751
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string/jumbo v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 750
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 753
    const-string/jumbo v6, "wifi_state"

    .line 754
    const/16 v7, 0xe

    .line 752
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 755
    .local v1, "currentAPState":I
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    const/16 v7, 0xc

    if-eq v1, v7, :cond_8

    const/16 v7, 0xd

    if-ne v1, v7, :cond_a

    :cond_8
    :goto_2
    invoke-static {v6, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->-set2(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z

    .line 756
    const-string/jumbo v4, "WifiOffloadService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Mobile Hotspot setting changed, Enabled ? = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 757
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService$2;->this$0:Lcom/android/server/wifioffload/WifiOffloadService;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->-get1(Lcom/android/server/wifioffload/WifiOffloadService;)Z

    move-result v6

    .line 756
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v1    # "currentAPState":I
    :cond_9
    return-void

    .restart local v1    # "currentAPState":I
    :cond_a
    move v4, v5

    .line 755
    goto :goto_2
.end method
