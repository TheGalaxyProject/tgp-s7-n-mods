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

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->opt:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ext:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->opt:I

    iput-wide p3, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    iput-object p5, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ext:Ljava/lang/String;

    return-void
.end method

.method private insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const-string/jumbo v2, "TRUE"

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "value"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private lockTypeIdToString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "Unknown"

    const-string/jumbo v1, "PersonalPageSurveyLog"

    const-string/jumbo v2, "Unknown Lock Type"

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "None"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "Signature"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "Fingerprint"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "Password"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "Pattern"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "Pin"

    goto :goto_0

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

    const-string/jumbo v1, "com.samsung.android.personalpage.service"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    iget v0, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->opt:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string/jumbo v0, "PersonalPageSurveyLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendSurveyLog - appId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Feature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", extra : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_0
    const-string/jumbo v2, "PVMD"

    iget-wide v6, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    long-to-int v0, v6

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->lockTypeIdToString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "PVDU"

    iget-wide v4, p0, Lcom/samsung/android/personalpage/service/util/PersonalPageSurveyLog;->val:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
