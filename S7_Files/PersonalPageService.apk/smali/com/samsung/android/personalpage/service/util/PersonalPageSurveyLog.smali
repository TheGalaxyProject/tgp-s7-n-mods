.class public Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;
.super Ljava/lang/Object;
.source "PersonalPageSurveyLog.java"


# static fields
.field public static final OPTION_PVDU:I = 0x3e9

.field public static final OPTION_PVMD:I = 0x3e8

.field public static final SURVEY_PVDU:Ljava/lang/String; = "PVDU"

.field public static final SURVEY_PVMD:Ljava/lang/String; = "PVMD"

.field private static final TAG:Ljava/lang/String; = "PersonalPageSurveyLog"


# instance fields
.field private final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private opt:I

.field private val:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "option"    # I
    .param p3, "value"    # J
    .param p5, "extra"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->mContext:Landroid/content/Context;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->opt:I

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    .line 44
    iput-object v2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ext:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->opt:I

    .line 49
    iput-wide p3, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    .line 50
    iput-object p5, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ext:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 85
    const-string/jumbo v2, "TRUE"

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    if-eqz p3, :cond_0

    .line 90
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    .line 92
    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method

.method private lockTypeIdToString(I)Ljava/lang/String;
    .locals 3
    .param p1, "lockType"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "lockString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 131
    const-string/jumbo v0, "Unknown"

    .line 132
    .local v0, "lockString":Ljava/lang/String;
    const-string/jumbo v1, "PersonalPageSurveyLog"

    const-string/jumbo v2, "Unknown Lock Type"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-object v0

    .line 110
    .local v0, "lockString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "None"

    .local v0, "lockString":Ljava/lang/String;
    goto :goto_0

    .line 113
    .local v0, "lockString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Signature"

    .local v0, "lockString":Ljava/lang/String;
    goto :goto_0

    .line 119
    .local v0, "lockString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "Fingerprint"

    .local v0, "lockString":Ljava/lang/String;
    goto :goto_0

    .line 122
    .local v0, "lockString":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "Password"

    .local v0, "lockString":Ljava/lang/String;
    goto :goto_0

    .line 125
    .local v0, "lockString":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "Pattern"

    .local v0, "lockString":Ljava/lang/String;
    goto :goto_0

    .line 128
    .local v0, "lockString":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "Pin"

    .local v0, "lockString":Ljava/lang/String;
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public sendSurveyLog()V
    .locals 8

    .prologue
    .line 58
    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    .line 59
    .local v1, "appId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 60
    .local v2, "feature":Ljava/lang/String;
    const/4 v3, 0x0

    .line 61
    .local v3, "extra":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .line 63
    .local v4, "value":J
    iget v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->opt:I

    packed-switch v0, :pswitch_data_0

    .line 76
    .end local v2    # "feature":Ljava/lang/String;
    .end local v3    # "extra":Ljava/lang/String;
    :goto_0
    const-string/jumbo v0, "PersonalPageSurveyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendSurveyLog - appId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    const-string/jumbo v7, ", Feature : "

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    const-string/jumbo v7, ", extra : "

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 78
    const-string/jumbo v7, ", value : "

    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 53
    return-void

    .line 65
    .restart local v2    # "feature":Ljava/lang/String;
    .restart local v3    # "extra":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v2, "PVMD"

    .line 66
    .local v2, "feature":Ljava/lang/String;
    iget-wide v6, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    long-to-int v0, v6

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->lockTypeIdToString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "extra":Ljava/lang/String;
    goto :goto_0

    .line 70
    .local v2, "feature":Ljava/lang/String;
    .local v3, "extra":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v2, "PVDU"

    .line 71
    .local v2, "feature":Ljava/lang/String;
    iget-wide v4, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
