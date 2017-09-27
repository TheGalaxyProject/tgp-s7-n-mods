.class public Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
.super Ljava/lang/Object;
.source "NetworkManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils$1;
    }
.end annotation


# static fields
.field public static final ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

.field public static mIsWarningStatus:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnd:J

.field private mNetWorkHistory:Landroid/net/NetworkStatsHistory;

.field private mNetWorkTemplate:Landroid/net/NetworkTemplate;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mStart:J

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mWhiteListSlot1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListSlot2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    sput-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 78
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.samsung.android.onlinevideo"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.qiyi.video.oemplayer"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    .line 56
    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mWhiteListSlot1:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mWhiteListSlot2:Ljava/util/List;

    .line 61
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 62
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 64
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 65
    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 84
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 80
    return-void
.end method

.method private getActiveSubId()I
    .locals 4

    .prologue
    .line 297
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 298
    .local v0, "subId":I
    const-string/jumbo v1, "NetworkManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v0
.end method

.method private getBounds(I)V
    .locals 11
    .param p1, "dayString"    # I

    .prologue
    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 360
    .local v9, "currentCalendar":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 361
    .local v10, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 362
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 363
    if-lt v10, p1, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 366
    .local v1, "calendar2":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 367
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 358
    :goto_0
    return-void

    .line 369
    .end local v1    # "calendar2":Ljava/util/Calendar;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v5, p1

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 370
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 372
    .restart local v1    # "calendar2":Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 373
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    goto :goto_0
.end method

.method private getConfirmTime()J
    .locals 7

    .prologue
    .line 325
    const-string/jumbo v0, "check_time"

    .line 326
    .local v0, "confirmTimeString":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 328
    .local v2, "lConfirmTime":J
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 333
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 334
    const-wide/16 v2, 0x0

    .line 336
    :cond_0
    return-wide v2

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "NetworkManagerUtils"

    const-string/jumbo v5, "lConfirmTime SettingNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private getConfirmTraffic()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 340
    const-string/jumbo v2, "data_used_by_check_time"

    .line 341
    .local v2, "confirmTrafficString":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "sConfirmTraffic":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 343
    :cond_0
    const-string/jumbo v7, "NetworkManagerUtils"

    const-string/jumbo v8, "getConfirmTraffic : false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-wide v10

    .line 348
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 352
    .local v4, "dConfirm":D
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v4, v8

    .line 353
    double-to-long v0, v4

    .line 354
    .local v0, "confirmTraffic":J
    const-string/jumbo v7, "NetworkManagerUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getConfirmTraffic "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from setting, confirm bytes = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-wide v0

    .line 349
    .end local v0    # "confirmTraffic":J
    .end local v4    # "dConfirm":D
    :catch_0
    move-exception v3

    .line 350
    .local v3, "e":Ljava/lang/Exception;
    return-wide v10
.end method

.method private getStartDay()I
    .locals 6

    .prologue
    .line 310
    const-string/jumbo v2, "set_package_start_date_value"

    .line 311
    .local v2, "startDayString":Ljava/lang/String;
    const/4 v1, 0x1

    .line 313
    .local v1, "iStart":I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    :goto_0
    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    const/16 v3, 0x1f

    if-le v1, v3, :cond_1

    .line 319
    :cond_0
    const/4 v1, 0x1

    .line 321
    :cond_1
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "iStart SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkStatus(Z)V
    .locals 14
    .param p1, "isNeedExecute"    # Z

    .prologue
    const/high16 v13, 0x44800000    # 1024.0f

    const/4 v12, 0x0

    .line 229
    const-string/jumbo v9, "netstats"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    .line 230
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    .line 231
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 232
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mSharedpre:Landroid/content/SharedPreferences;

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v6

    .line 234
    .local v6, "usedTotalBytes":J
    sput-boolean v12, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "activeSimSlotWarningEnable":I
    const-string/jumbo v1, "max"

    .line 237
    .local v1, "allData":Ljava/lang/String;
    const-string/jumbo v8, "off"

    .line 238
    .local v8, "warningValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 239
    .local v3, "isTrafficSettingEnable":Z
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "set_data_limit"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data_warning_set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 241
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "switch_traffic_settings"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 242
    .local v4, "trafficSetting":I
    if-nez v4, :cond_4

    const/4 v3, 0x0

    .line 243
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "data_warning_whitelist_enable_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 244
    if-nez v1, :cond_0

    .line 245
    const-string/jumbo v1, "max"

    .line 247
    :cond_0
    if-nez v8, :cond_1

    .line 248
    const-string/jumbo v8, "off"

    .line 250
    :cond_1
    const-string/jumbo v9, "off"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v0, :cond_5

    .line 252
    :cond_2
    sput-boolean v12, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 253
    if-eqz p1, :cond_3

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    .line 256
    :cond_3
    return-void

    .line 242
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 250
    :cond_5
    if-eqz v3, :cond_2

    const-string/jumbo v9, "max"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 258
    const/high16 v5, -0x40800000    # -1.0f

    .line 260
    .local v5, "warningBytes":F
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    mul-float/2addr v9, v13

    mul-float/2addr v9, v13

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float v5, v9, v10

    .line 264
    :goto_1
    long-to-float v9, v6

    cmpl-float v9, v9, v5

    if-ltz v9, :cond_6

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v5, v9

    if-lez v9, :cond_6

    .line 265
    const/4 v9, 0x1

    sput-boolean v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    .line 267
    :cond_6
    if-nez p1, :cond_7

    .line 268
    return-void

    .line 261
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_1

    .line 270
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    sget-boolean v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-nez v9, :cond_8

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->turnToNormalStatus()V

    .line 228
    :goto_2
    return-void

    .line 273
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->runWarning()V

    goto :goto_2
.end method

.method public getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 291
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "subscriberId":Ljava/lang/String;
    const-string/jumbo v2, "NetworkManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscriberId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v0
.end method

.method public getSubscriptionId(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 114
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalUsedData()J
    .locals 24

    .prologue
    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getStartDay()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getBounds(I)V

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 380
    .local v8, "currentTime":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getConfirmTime()J

    move-result-wide v12

    .line 381
    .local v12, "confirmTime":J
    const-wide/16 v18, 0x0

    .line 382
    .local v18, "startTraffic":J
    const-wide/16 v16, 0x0

    .line 383
    .local v16, "realTraffic":J
    const-string/jumbo v15, "middle_real_value"

    .line 385
    .local v15, "realTrafficString":Ljava/lang/String;
    const-wide/16 v22, 0x0

    .line 386
    .local v22, "totalUsedBytes":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    cmp-long v3, v12, v4

    if-ltz v3, :cond_0

    cmp-long v3, v12, v8

    if-gtz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getConfirmTraffic()J

    move-result-wide v18

    .line 389
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 396
    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStatsSession:Landroid/net/INetworkStatsSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkTemplate:Landroid/net/NetworkTemplate;

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    if-nez v3, :cond_1

    .line 399
    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    const-wide/16 v4, -0x1

    return-wide v4

    .line 390
    :catch_0
    move-exception v11

    .line 391
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "realTraffic SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 402
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mNetWorkHistory:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mEnd:J

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v14

    .line 403
    .local v14, "enry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v14, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v14, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    add-long v22, v4, v6

    .line 409
    sub-long v4, v22, v16

    add-long v20, v4, v18

    .line 410
    .local v20, "totalTraffic":J
    return-wide v20

    .line 404
    .end local v14    # "enry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v20    # "totalTraffic":J
    :catch_1
    move-exception v2

    .line 405
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NetworkManagerUtils"

    const-string/jumbo v4, "fail to get data used bytes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 407
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getUsedSubIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "subIds":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 104
    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "subIdsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 106
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    .end local v3    # "subIdsArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getWhiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "whiteListType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "mWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "whiteListString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 92
    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "whiteListStringArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 94
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    .end local v3    # "whiteListStringArray":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public isCurrentSlotWarning(Ljava/lang/String;)Z
    .locals 1
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 414
    sget-boolean v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mIsWarningStatus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public putUsedSubId(Ljava/lang/String;)V
    .locals 6
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "subIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "used_subId"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "subIds":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 121
    const-string/jumbo v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "subIdsArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 123
    aget-object v4, v3, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    :cond_1
    return-void

    .line 126
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .end local v0    # "i":I
    .end local v3    # "subIdsArray":[Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "used_subId"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    return-void

    .line 131
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public putWhiteList(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p2, "whiteListType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, "whiteListString":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    return-void
.end method

.method public runWarning()V
    .locals 6

    .prologue
    .line 200
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setWifiAssociateApps(Landroid/content/Context;)V

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "warningWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v1, "normalAppUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getActiveSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 204
    const-string/jumbo v3, "data_normal_app_whitelist"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 206
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_1

    .line 209
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_1

    .line 212
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setDataAssociateApps(Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method public setDataAssociateApps(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 422
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 423
    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    aget-object v6, v9, v2

    .line 424
    .local v6, "packageNameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 426
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 427
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 428
    .local v5, "keyUid":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v4

    .line 429
    .local v4, "isAllow":Z
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_1
    array-length v9, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v9, :cond_0

    .line 431
    :try_start_1
    aget-object v9, v6, v3

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 432
    .local v8, "uid":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    .end local v8    # "uid":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 437
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "index":I
    .end local v4    # "isAllow":Z
    .end local v5    # "keyUid":I
    :catch_1
    move-exception v1

    .line 438
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 420
    .end local v6    # "packageNameArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setWifiAssociateApps(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 445
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 446
    sget-object v9, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->ASSOCIATE_PACKAGES_BY_KEY_PACKAGE:[[Ljava/lang/String;

    aget-object v6, v9, v2

    .line 447
    .local v6, "packageNameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 449
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    :try_start_0
    aget-object v9, v6, v9

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 450
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 451
    .local v5, "keyUid":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v4

    .line 452
    .local v4, "isAllow":Z
    const/4 v3, 0x1

    .local v3, "index":I
    :goto_1
    array-length v9, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v3, v9, :cond_0

    .line 454
    :try_start_1
    aget-object v9, v6, v3

    const/16 v10, 0x80

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v8, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 455
    .local v8, "uid":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v8, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    .end local v8    # "uid":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 460
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "index":I
    .end local v4    # "isAllow":Z
    .end local v5    # "keyUid":I
    :catch_1
    move-exception v1

    .line 461
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "NetworkManagerUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "NameNotFoundException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v6    # "packageNameArray":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public sortInNormalStatus()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "applicationNetInfoList1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "applicationNetInfoList2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 157
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_1
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 166
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    return-void
.end method

.method public sortInWarningStatus()V
    .locals 5

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v1, "appDataEnableList1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "appDataEnableList2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "appDataDisableList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 175
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 177
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_0
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_1
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_2
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 186
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 187
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 188
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 189
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    return-void
.end method

.method public turnToNormalStatus()V
    .locals 5

    .prologue
    .line 216
    const-string/jumbo v2, "NetworkManagerUtils"

    const-string/jumbo v3, "turnToNormalStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setWifiAssociateApps(Landroid/content/Context;)V

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v1, "normalAppUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "data_normal_app_whitelist"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 220
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->setDataAssociateApps(Landroid/content/Context;)V

    .line 215
    return-void
.end method
