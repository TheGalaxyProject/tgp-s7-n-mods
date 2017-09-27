.class Lcom/samsung/android/settings/wifi/WifiReset$3;
.super Ljava/lang/Thread;
.source "WifiReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiReset;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiReset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiReset;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiReset$3;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$3;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->-get3(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$3;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->-get3(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 166
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiReset;->-get1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiReset$3;->this$0:Lcom/samsung/android/settings/wifi/WifiReset;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiReset;->-get3(Lcom/samsung/android/settings/wifi/WifiReset;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 162
    :cond_0
    return-void
.end method
