.class Lcom/android/settings/wifi/ConfigureWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/ConfigureWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/ConfigureWifiSettings;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 267
    if-eqz v1, :cond_1

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;->this$0:Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-static {v1}, Lcom/android/settings/wifi/ConfigureWifiSettings;->-wrap0(Lcom/android/settings/wifi/ConfigureWifiSettings;)V

    .line 265
    :cond_1
    return-void
.end method
