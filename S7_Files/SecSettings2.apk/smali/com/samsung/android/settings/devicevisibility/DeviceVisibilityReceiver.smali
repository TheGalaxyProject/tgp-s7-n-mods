.class public Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceVisibilityReceiver.java"


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
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 29
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 30
    :cond_0
    const-string/jumbo v4, "DeviceVisibilityReceiver"

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

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    .line 35
    .local v1, "settingsValue":I
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 36
    const-string/jumbo v3, "DeviceVisibilityReceiver"

    const-string/jumbo v4, "AIRPLANE_MODE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {p1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getAirPlaneModeStatus(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 38
    if-ne v1, v5, :cond_3

    .line 39
    invoke-static {p1, v6}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;I)V

    .line 28
    :cond_3
    :goto_1
    return-void

    .line 42
    :cond_4
    if-ne v1, v6, :cond_3

    .line 43
    invoke-static {p1, v5}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;I)V

    goto :goto_1

    .line 47
    :cond_5
    const-string/jumbo v3, "com.samsung.android.oneconnect.DEVICE_VISIBILITY_STATE_CHAGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const-string/jumbo v3, "DEVICE_VISIBILITY_STATE_VALUE"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 50
    .local v2, "state":I
    const-string/jumbo v3, "DeviceVisibilityReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INTENT_DEVICE_VISIBILITY_STATE_CHANGED state + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1, v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;I)V

    goto :goto_1
.end method
