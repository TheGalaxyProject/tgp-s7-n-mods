.class Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsExceptionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 200
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 203
    if-nez p1, :cond_0

    .line 204
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 206
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 207
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 208
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "keep_connection"

    if-ne p2, v6, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string/jumbo v2, "netId"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get3(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get2(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 213
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-set0(Lcom/android/settings/wifi/WifiSnsExceptionActivity;Z)Z

    .line 218
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    if-ne p2, v6, :cond_4

    .line 219
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string/jumbo v3, "AP_OFF"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 224
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsExceptionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 225
    const-string/jumbo v3, "wifi_sns_dialog_for_starting_settings"

    .line 224
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->finish()V

    .line 227
    return-void

    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_2
    move v2, v4

    .line 209
    goto :goto_0

    .line 215
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSnsExceptionActivity"

    const-string/jumbo v3, "WifiManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsExceptionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsExceptionActivity;

    const-string/jumbo v3, "AP_ON"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsExceptionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method
