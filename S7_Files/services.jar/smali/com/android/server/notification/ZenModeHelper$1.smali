.class Lcom/android/server/notification/ZenModeHelper$1;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/service/notification/ZenModeConfig$Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;
    .locals 9
    .param p1, "v1"    # Landroid/service/notification/ZenModeConfig$XmlV1;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1101
    if-nez p1, :cond_0

    return-object v6

    .line 1102
    :cond_0
    new-instance v3, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 1103
    .local v3, "rt":Landroid/service/notification/ZenModeConfig;
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 1104
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 1105
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v6, v3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 1106
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 1108
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowAlarms:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 1110
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v6, v3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 1111
    iget-boolean v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    iput-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 1113
    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 1114
    .local v2, "days":[I
    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    .line 1115
    const-string/jumbo v6, "ZenModeHelper"

    const-string/jumbo v7, "Migrating existing V1 downtime to single schedule"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v5}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 1117
    .local v5, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput-object v2, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 1118
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 1119
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 1120
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 1121
    iget v6, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    iput v6, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 1122
    new-instance v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v4}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 1135
    .local v4, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->applyDowntime:Z

    .line 1136
    .local v1, "applyDowntime":Z
    iput-boolean v1, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 1137
    const-string/jumbo v6, "twschedule"

    iput-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 1138
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1139
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->-get1(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1140
    const-string/jumbo v7, "dnd_allowexception"

    .line 1139
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1141
    .local v0, "allowException":I
    if-nez v0, :cond_1

    const/4 v6, 0x2

    :goto_0
    iput v6, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1144
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .end local v0    # "allowException":I
    .end local v1    # "applyDowntime":Z
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :goto_1
    return-object v3

    .line 1142
    .restart local v0    # "allowException":I
    .restart local v1    # "applyDowntime":Z
    .restart local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v5    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "allowException":I
    .end local v1    # "applyDowntime":Z
    .end local v4    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_2
    const-string/jumbo v6, "ZenModeHelper"

    const-string/jumbo v7, "No existing V1 downtime found, generating default schedules"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v6, v3}, Lcom/android/server/notification/ZenModeHelper;->-wrap1(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    goto :goto_1
.end method
