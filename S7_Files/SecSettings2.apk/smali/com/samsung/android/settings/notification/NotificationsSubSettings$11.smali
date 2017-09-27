.class Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 3

    .prologue
    .line 1470
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get3(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 1471
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "DefaultNotificationSound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1472
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get5(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1473
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get3(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get3(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1475
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$11;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get3(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1483
    :cond_1
    :goto_0
    return-void

    .line 1476
    :cond_2
    const-string/jumbo v1, "DefaultNotificationSoundSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method
