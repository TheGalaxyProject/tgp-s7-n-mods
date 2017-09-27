.class Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSnsDisabledConnectionWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    const-string/jumbo v2, "wifi_state"

    .line 63
    const/4 v3, 0x4

    .line 62
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "state":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning$1;->this$0:Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsDisabledConnectionWarning;->finish()V

    .line 56
    .end local v1    # "state":I
    :cond_2
    return-void
.end method
