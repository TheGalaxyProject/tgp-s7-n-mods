.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSnsExceptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSnsExceptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    const-string/jumbo v2, "wifi_state"

    .line 70
    const/4 v3, 0x4

    .line 69
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "state":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_2

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 63
    .end local v1    # "state":I
    :cond_2
    return-void
.end method
