.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsExceptionActivity;->showWifiSnsExceptionDialog()V
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
    .line 160
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    const/4 v5, 0x4

    if-ne p2, v5, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    :cond_0
    return v4

    .line 164
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 165
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 166
    .local v2, "msg":Landroid/os/Message;
    const/16 v5, 0xc9

    iput v5, v2, Landroid/os/Message;->what:I

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "keep_connection"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    const-string/jumbo v5, "netId"

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get3(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 172
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z

    .line 176
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 177
    const-string/jumbo v6, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 176
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v1, v3

    .line 178
    .local v1, "mAggressiveEnabled":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 179
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string/jumbo v6, "AP_AGG"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 183
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 184
    const-string/jumbo v6, "wifi_sns_dialog_for_starting_settings"

    .line 183
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 186
    return v3

    .line 174
    .end local v1    # "mAggressiveEnabled":Z
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "WifiSnsExceptionActivity"

    const-string/jumbo v6, "WifiManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v4

    .line 176
    goto :goto_1

    .line 181
    .restart local v1    # "mAggressiveEnabled":Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string/jumbo v6, "AP_ON"

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method
