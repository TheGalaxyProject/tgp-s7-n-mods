.class public Lcom/android/settings/search/SecSettingsSearchIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecSettingsSearchIntentReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/search/SecSettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private isEncryptMode()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string/jumbo v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 52
    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_1
    return v2
.end method

.method private startTracker(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/search/SecSettingsSearchIntentReceiver;->isEncryptMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    :cond_0
    const-string/jumbo v1, "SettingSearch/SearchIntentReceiver"

    const-string/jumbo v2, "Skipping for Knox Container"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/android/settings/search/SecValueTrackerActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SecValueTrackerActivity;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, "vta":Lcom/android/settings/search/SecValueTrackerActivity;
    invoke-virtual {v0}, Lcom/android/settings/search/SecValueTrackerActivity;->initCategories()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/search/SecSettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    .line 31
    const-string/jumbo v1, "SettingSearch/SearchIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 32
    if-nez v1, :cond_0

    .line 34
    const-string/jumbo v1, "com.samsung.android.app.galaxyfinder.LAUNCH_SFINDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/android/settings/search/SecSettingsSearchIntentReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/search/SecSettingsSearchIntentReceiver;->startTracker(Landroid/content/Context;)V

    .line 27
    :cond_1
    return-void
.end method
