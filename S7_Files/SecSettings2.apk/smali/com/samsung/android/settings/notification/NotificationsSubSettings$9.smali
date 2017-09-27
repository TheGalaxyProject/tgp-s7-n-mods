.class Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 942
    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 945
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get7(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    .line 946
    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 948
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 949
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 952
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get6(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 954
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x80

    .line 953
    invoke-static {v1, v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 955
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 956
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 959
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get5(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 961
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    .line 960
    invoke-static {v1, v3}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap2(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 962
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 963
    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get4(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/settings/notification/NotificationsSubSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 944
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
