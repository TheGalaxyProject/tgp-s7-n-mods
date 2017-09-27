.class public Lcom/samsung/android/settings/wifi/WifiResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiResetReceiver.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiResetReceiver;->DEBUG:Z

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiResetReceiver;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 35
    const-string/jumbo v2, "WifiResetReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    const-string/jumbo v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    const-string/jumbo v2, "com.samsung.intent.action.SETTINGS_RESET_WIFI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 40
    :cond_1
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiReset;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/wifi/WifiReset;-><init>(Landroid/content/Context;Z)V

    .line 41
    .local v1, "reset":Lcom/samsung/android/settings/wifi/WifiReset;
    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiReset;->start()V

    .line 32
    .end local v1    # "reset":Lcom/samsung/android/settings/wifi/WifiReset;
    :cond_2
    return-void
.end method
