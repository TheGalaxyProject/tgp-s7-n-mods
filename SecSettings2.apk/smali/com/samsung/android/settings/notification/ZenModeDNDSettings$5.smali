.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get4(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne p2, v0, :cond_3

    return v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get0()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrefChange start h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$5;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get9(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-wrap6(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;Landroid/net/Uri;)V

    return v3
.end method
