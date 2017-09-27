.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanningBroadCastReciever;
.super Landroid/content/BroadcastReceiver;
.source "NearbyScanningBroadCastReciever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 29
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 30
    :cond_0
    const-string/jumbo v4, "NearbyScanningBroadCastReciever"

    if-nez p2, :cond_1

    const-string/jumbo v3, "intent is null"

    :goto_0
    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void

    .line 30
    :cond_1
    const-string/jumbo v3, "context is null"

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 36
    const-string/jumbo v3, "NearbyScanningBroadCastReciever"

    const-string/jumbo v4, "AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/nearbyscan/Util;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v2

    .line 40
    .local v2, "settingsValue":I
    const-string/jumbo v3, "NearbyScanningBroadCastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "settingsValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {p1}, Lcom/samsung/android/settings/nearbyscan/Util;->getAirPlaneModeStatus(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 42
    if-ne v2, v6, :cond_3

    .line 43
    invoke-static {p1, v7}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    .line 28
    .end local v2    # "settingsValue":I
    :cond_3
    :goto_1
    return-void

    .line 46
    .restart local v2    # "settingsValue":I
    :cond_4
    if-ne v2, v7, :cond_3

    .line 47
    invoke-static {p1, v6}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    goto :goto_1

    .line 50
    .end local v2    # "settingsValue":I
    :cond_5
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_6

    const-string/jumbo v3, "com.samsung.android.beaconmanager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 53
    const-string/jumbo v3, "NearbyScanningBroadCastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_PACKAGE_ADDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string/jumbo v3, "com.samsung.android.beaconmanager"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/nearbyscan/Util;->sendInstallBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_6
    if-eqz v1, :cond_3

    const-string/jumbo v3, "com.samsung.android.easysetup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    const-string/jumbo v3, "NearbyScanningBroadCastReciever"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_PACKAGE_ADDED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v3, "com.samsung.android.easysetup"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/nearbyscan/Util;->sendInstallBroadcast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
