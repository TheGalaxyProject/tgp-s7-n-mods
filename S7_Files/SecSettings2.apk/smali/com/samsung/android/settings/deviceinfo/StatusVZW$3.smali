.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;
.super Landroid/content/BroadcastReceiver;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 403
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 404
    return-void

    .line 406
    :cond_0
    const-string/jumbo v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 407
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_1

    .line 408
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-wrap2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V

    .line 399
    .end local v1    # "cbMessage":Landroid/telephony/CellBroadcastMessage;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "latestAreaInfo":Ljava/lang/String;
    :cond_1
    return-void
.end method
