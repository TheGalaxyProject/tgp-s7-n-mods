.class public Lcom/samsung/android/settings/KiesLocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;,
        Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportHuxGpsPromptLocation"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Kies_ConfigOpLocationSettingBackup"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    :cond_0
    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "No Intent or action"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 79
    :cond_1
    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "exit not supported device"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 88
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, "operation":I
    const-string/jumbo v3, "com.sec.android.intent.action.REQUEST_BACKUP_LOCATIONSERVICEVZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    const/4 v1, 0x1

    .line 100
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;Landroid/content/Context;ILandroid/content/Intent;)V

    .line 101
    .local v2, "task":Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void

    .line 93
    .end local v2    # "task":Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;
    :cond_3
    const-string/jumbo v3, "com.sec.android.intent.action.REQUEST_RESTORE_LOCATIONSERVICEVZW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 94
    const/4 v1, 0x2

    goto :goto_0

    .line 96
    :cond_4
    const-string/jumbo v3, "KiesLocationReceiver"

    const-string/jumbo v4, "exit action unknown"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
