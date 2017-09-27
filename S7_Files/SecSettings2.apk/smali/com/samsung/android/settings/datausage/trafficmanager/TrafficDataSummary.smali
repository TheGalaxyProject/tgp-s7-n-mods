.class public Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
.super Ljava/lang/Object;
.source "TrafficDataSummary.java"


# instance fields
.field private final DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

.field private final DEFAULT_TRAFFIC_TOTAL:J

.field private final MB_TO_BYTE:J

.field private final TAG:Ljava/lang/String;

.field private mCal_Current:Ljava/util/Calendar;

.field private mCal_End:Ljava/util/Calendar;

.field private mCal_Start:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private mDefaultCycleDay:I

.field private mEndTime:J

.field private mFreePercent:F

.field private mFreeWarningValue:F

.field private mIsBlockData:Z

.field private mIsExceed:Z

.field private mLoadFinihsed:Z

.field private mMiddleData:J

.field private mMiddleTime:J

.field private mRemainData:J

.field private mRemainTraffic:Ljava/lang/String;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private mSettingOn:Z

.field private mStartDay:I

.field private mStartTime:J

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private mSubId:I

.field private mTodayEndTime:J

.field private mTodayStartTime:J

.field private mTodayused:Ljava/lang/String;

.field private mTotalData:J

.field private mTotalTraffic:Ljava/lang/String;

.field private mTrafficUsed:Ljava/lang/String;

.field private mTrafficUsedBytes:J


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "TrafficDataSummary"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->TAG:Ljava/lang/String;

    .line 35
    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

    .line 36
    iput-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_TOTAL:J

    .line 37
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->MB_TO_BYTE:J

    .line 38
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 39
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 40
    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsedBytes:J

    .line 41
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 42
    iput-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 43
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mLoadFinihsed:Z

    .line 45
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 46
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 47
    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 49
    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 50
    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 60
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    .line 62
    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    .line 63
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 64
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsBlockData:Z

    .line 67
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "TrafficDataSummary"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->TAG:Ljava/lang/String;

    .line 35
    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_SUMMARY_START_DAY:I

    .line 36
    iput-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->DEFAULT_TRAFFIC_TOTAL:J

    .line 37
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->MB_TO_BYTE:J

    .line 38
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 39
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 40
    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsedBytes:J

    .line 41
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 42
    iput-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 43
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mLoadFinihsed:Z

    .line 45
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 46
    iput-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 47
    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 49
    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 50
    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 60
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    .line 62
    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    .line 63
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 64
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 65
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsBlockData:Z

    .line 67
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method private getPreferenceValue()V
    .locals 18

    .prologue
    .line 78
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the sub id is:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 81
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsBlockData:Z

    .line 82
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "restrict_data_check_box"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsBlockData:Z

    .line 83
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 84
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "switch_traffic_settings"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 85
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    if-nez v14, :cond_1

    .line 86
    const/4 v5, 0x0

    .line 88
    .local v5, "isTrue":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "switch_traffic_settings"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 89
    const/4 v14, 0x1

    if-ne v5, v14, :cond_c

    .line 90
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 98
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "switch_traffic_settings"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "isTrue":I
    :cond_1
    const-string/jumbo v9, "max"

    .line 102
    .local v9, "mTotal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_data_limit"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 103
    if-eqz v9, :cond_2

    const-string/jumbo v14, "max"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 105
    :cond_2
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_data_limit"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "max"

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_data_limit"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 111
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_data_limit"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string/jumbo v14, "max"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 115
    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 116
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    .line 127
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    if-nez v14, :cond_4

    .line 128
    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 130
    :cond_4
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 131
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "check_time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v11, v14, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 133
    const-wide/16 v6, 0x0

    .line 135
    .local v6, "lConfirmTime":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "check_time"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v6

    .line 140
    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-gez v14, :cond_5

    .line 141
    const-wide/16 v6, 0x0

    .line 143
    :cond_5
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mMiddleTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lConfirmTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_6

    .line 146
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 148
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "check_time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-interface {v3, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string/jumbo v14, "TrafficDataSummary"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mMiddleTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 154
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_package_start_date_value"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 156
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    .line 158
    .local v4, "iStart":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_package_start_date_value"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v4

    .line 164
    :goto_4
    const/4 v14, 0x1

    if-lt v4, v14, :cond_7

    const/16 v14, 0x1f

    if-le v4, v14, :cond_8

    .line 165
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_package_start_date_value"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 168
    :cond_8
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mStartDay:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "iStart:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 171
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 173
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "set_package_start_date_value"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    invoke-interface {v3, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_9
    const-string/jumbo v8, "0.00"

    .line 178
    .local v8, "mMiddle":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "data_used_by_check_time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "0.00"

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    const-string/jumbo v14, "TrafficDataSummary"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mMiddle:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v12, 0x0

    .line 183
    .local v12, "sConfirmTraffic":Ljava/lang/String;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "data_used_by_check_time"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v12

    .line 188
    .local v12, "sConfirmTraffic":Ljava/lang/String;
    :goto_5
    if-eqz v12, :cond_a

    const-string/jumbo v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string/jumbo v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 189
    :cond_a
    const-string/jumbo v14, "TrafficDataSummary"

    const-string/jumbo v15, "getConfirmTraffic : false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object v12, v8

    .line 192
    :cond_b
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mMiddle:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sConfirmTraffic:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string/jumbo v14, "0.00"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 202
    :goto_6
    :try_start_5
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 203
    .local v10, "mmData":F
    const/high16 v14, 0x49800000    # 1048576.0f

    mul-float/2addr v14, v10

    float-to-long v14, v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 208
    .end local v10    # "mmData":F
    :goto_7
    const-string/jumbo v13, "off"

    .line 209
    .local v13, "warningValue":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "data_warning_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "off"

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 210
    const-string/jumbo v14, "off"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 212
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "data_warning_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v13

    .line 216
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 217
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "data_warning_set"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_9
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "warningValue:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v14, "off"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 224
    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    .line 233
    :goto_a
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mFreeWarningValue:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 91
    .end local v4    # "iStart":I
    .end local v6    # "lConfirmTime":J
    .end local v8    # "mMiddle":Ljava/lang/String;
    .end local v9    # "mTotal":Ljava/lang/String;
    .end local v12    # "sConfirmTraffic":Ljava/lang/String;
    .end local v13    # "warningValue":Ljava/lang/String;
    .restart local v5    # "isTrue":I
    :cond_c
    if-nez v5, :cond_0

    .line 92
    const/4 v14, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto/16 :goto_0

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "isTrue":I
    .restart local v9    # "mTotal":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 108
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "max"

    goto/16 :goto_1

    .line 119
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    :try_start_8
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 120
    .restart local v10    # "mmData":F
    float-to-long v14, v10

    const-wide/32 v16, 0x100000

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    .line 121
    .end local v10    # "mmData":F
    :catch_2
    move-exception v2

    .line 122
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 124
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    goto/16 :goto_2

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "lConfirmTime":J
    :catch_3
    move-exception v2

    .line 137
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "TrafficDataSummary"

    const-string/jumbo v15, "lConfirmTime SettingNotFoundException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-wide/16 v6, 0x0

    goto/16 :goto_3

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "iStart":I
    :catch_4
    move-exception v2

    .line 160
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "TrafficDataSummary"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "iStart SettingNotFoundException, set default:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mDefaultCycleDay:I

    .line 162
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_package_start_date_value"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "mMiddle":Ljava/lang/String;
    .local v12, "sConfirmTraffic":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 185
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "TrafficDataSummary"

    const-string/jumbo v15, "sConfirmTraffic SettingNotFoundException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v12, "0.00"

    .local v12, "sConfirmTraffic":Ljava/lang/String;
    goto/16 :goto_5

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 197
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "data_used_by_check_time"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_6

    .line 204
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_6
    move-exception v2

    .line 205
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J

    goto/16 :goto_7

    .line 213
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v13    # "warningValue":Ljava/lang/String;
    :catch_7
    move-exception v2

    .line 214
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v13, "off"

    goto/16 :goto_8

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "data_warning_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_9

    .line 227
    :cond_10
    :try_start_9
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    sub-double v14, v16, v14

    double-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_a

    .line 228
    :catch_8
    move-exception v2

    .line 229
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v14, "TrafficDataSummary/LPF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    goto/16 :goto_a
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 4

    .prologue
    .line 468
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v2, :cond_0

    .line 470
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSession:Landroid/net/INetworkStatsSession;

    .line 471
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSession:Landroid/net/INetworkStatsSession;

    return-object v2

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "TrafficDataSummary"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 472
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TrafficDataSummary"

    const-string/jumbo v3, "Failed to open stats session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .prologue
    .line 418
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    return-wide v0
.end method

.method public getFreePercent()F
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreePercent:F

    return v0
.end method

.method public getIsExceed()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    return v0
.end method

.method public getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;
    .locals 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v4, 0x0

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    .line 483
    .local v2, "session":Landroid/net/INetworkStatsSession;
    if-nez v2, :cond_0

    .line 484
    return-object v4

    .line 487
    :cond_0
    const/16 v3, 0xa

    :try_start_0
    invoke-interface {v2, p1, v3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 488
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    return-object v1

    .line 489
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getRealTimeValue(J)J
    .locals 13
    .param p1, "time"    # J

    .prologue
    const/4 v8, 0x0

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 496
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v10, v2, v4

    .line 497
    .local v10, "bytes":J
    :goto_0
    return-wide v10

    .line 496
    .end local v10    # "bytes":J
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public getRealTimeValue(Landroid/net/NetworkTemplate;J)J
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "time"    # J

    .prologue
    const/4 v8, 0x0

    .line 500
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-wide v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 501
    .local v0, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v10, v2, v4

    .line 502
    .local v10, "bytes":J
    :goto_0
    return-wide v10

    .line 501
    .end local v10    # "bytes":J
    :cond_0
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public getRemainTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 414
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    return-wide v0
.end method

.method public getTheTime()V
    .locals 14

    .prologue
    .line 294
    const-string/jumbo v9, "TrafficDataSummary"

    const-string/jumbo v10, "getTheTime()"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    .line 297
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    .line 300
    new-instance v1, Ljava/util/Date;

    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 301
    .local v1, "date":Ljava/util/Date;
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 303
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 304
    .local v4, "mCurrent_year":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 305
    .local v3, "mCurrent_month":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Current:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 306
    .local v2, "mCurrent_day":I
    iget v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    if-lt v2, v9, :cond_1

    .line 307
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 308
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 309
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    iget v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 310
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 311
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 312
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 313
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 314
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    .line 331
    :goto_0
    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 332
    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    iget-wide v12, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 333
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    .line 336
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 337
    .local v0, "Startdate":Ljava/util/Date;
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 338
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 339
    .local v5, "mEndMonth":I
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 340
    .local v6, "mEndYear":I
    const/16 v9, 0xb

    if-ge v5, v9, :cond_3

    .line 341
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    add-int/lit8 v10, v5, 0x1

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 346
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    .line 347
    const-string/jumbo v9, "TrafficDataSummary/LPF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mEndTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 349
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 350
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v2}, Ljava/util/Calendar;->set(II)V

    .line 351
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 352
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 353
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 354
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 355
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    .line 356
    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayEndTime:J

    .line 357
    const-string/jumbo v9, "TrafficDataSummary/LPF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mTodayStartTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string/jumbo v9, "TrafficDataSummary/LPF"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mCurrentTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-void

    .line 316
    .end local v0    # "Startdate":Ljava/util/Date;
    .end local v5    # "mEndMonth":I
    .end local v6    # "mEndYear":I
    :cond_1
    add-int/lit8 v7, v3, -0x1

    .line 317
    .local v7, "mStart_month":I
    move v8, v4

    .line 318
    .local v8, "mStart_year":I
    if-gez v7, :cond_2

    .line 319
    add-int/lit8 v8, v4, -0x1

    .line 320
    const/16 v7, 0xb

    .line 322
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 323
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 324
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    iget v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartDay:I

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 325
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 326
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 327
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 328
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 329
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_Start:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    goto/16 :goto_0

    .line 343
    .end local v7    # "mStart_month":I
    .end local v8    # "mStart_year":I
    .restart local v0    # "Startdate":Ljava/util/Date;
    .restart local v5    # "mEndMonth":I
    .restart local v6    # "mEndYear":I
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Ljava/util/Calendar;->set(II)V

    .line 344
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCal_End:Ljava/util/Calendar;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1
.end method

.method public getTodayused()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalData()J
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    return-wide v0
.end method

.method public getTotalTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTraffic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTrafficBytes()J
    .locals 2

    .prologue
    .line 370
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsedBytes:J

    return-wide v0
.end method

.method public getWarningByte()J
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 441
    const-wide/16 v4, 0x0

    .line 443
    .local v4, "middle_real_value":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "middle_real_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 444
    const-string/jumbo v3, "TrafficDataSummary/LPF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "warining set the middle_real_value is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 449
    .local v0, "correct_used":J
    iget-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    long-to-double v8, v8

    iget v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    float-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-long v6, v8

    .line 450
    .local v6, "result":J
    iget-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 451
    iget-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    long-to-double v8, v8

    iget v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    float-to-double v10, v3

    sub-double v10, v12, v10

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-long v8, v8

    sub-long v10, v0, v4

    sub-long v6, v8, v10

    .line 453
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 454
    const-wide/16 v6, 0x0

    .line 456
    :cond_1
    return-wide v6

    .line 445
    .end local v0    # "correct_used":J
    .end local v6    # "result":J
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TrafficDataSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception happend:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWarningValue()F
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreeWarningValue:F

    return v0
.end method

.method public getlimiValue()J
    .locals 12

    .prologue
    .line 422
    const-wide/16 v4, 0x0

    .line 424
    .local v4, "middle_real_value":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "middle_real_value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    .line 425
    const-string/jumbo v3, "TrafficDataSummary/LPF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "the middle_real_value is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    iget-wide v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J

    .line 430
    .local v0, "correct_used":J
    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    .line 431
    .local v6, "result":J
    iget-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    iget-wide v10, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    .line 432
    iget-wide v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    sub-long v10, v0, v4

    sub-long v6, v8, v10

    .line 434
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 435
    const-wide/16 v6, 0x0

    .line 437
    :cond_1
    return-wide v6

    .line 426
    .end local v0    # "correct_used":J
    .end local v6    # "result":J
    :catch_0
    move-exception v2

    .line 427
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "TrafficDataSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception happend:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isPackagedSetted()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSettingOn:Z

    return v0
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    .line 397
    return-void
.end method

.method public updateDataInfomation()V
    .locals 26

    .prologue
    .line 237
    const-string/jumbo v5, "TrafficDataSummary"

    const-string/jumbo v6, "updateDataInfomation()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getPreferenceValue()V

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTheTime()V

    .line 241
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalTraffic:Ljava/lang/String;

    .line 242
    const-wide/16 v24, 0x0

    .line 243
    .local v24, "totalBytes":J
    const-string/jumbo v5, "TrafficDataSummary/LPF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the mMiddleTime is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string/jumbo v5, "TrafficDataSummary/LPF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the start is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string/jumbo v5, "TrafficDataSummary/LPF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the mCurrentTime is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 248
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v13, :cond_0

    iget-wide v6, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v8, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v6, v8

    .line 249
    :goto_0
    const-string/jumbo v5, "TrafficDataSummary/LPF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the totalBytes is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "total_used"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v5, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 251
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    .line 266
    :goto_1
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTrafficUsed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayStartTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayEndTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v14

    .line 268
    .local v14, "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v14, :cond_3

    iget-wide v6, v14, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v8, v14, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v6, v8

    .line 269
    .local v20, "todayBytes":J
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v20

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    .line 270
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "todayBytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTodayused:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTodayused:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsedBytes:J

    .line 273
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTrafficUsedBytes:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsedBytes:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTotalData:J

    move-wide/from16 v22, v0

    .line 275
    .local v22, "total":J
    sub-long v6, v22, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 276
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mRemainData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "total:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    cmp-long v5, v22, v24

    if-gez v5, :cond_4

    .line 279
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mIsExceed:Z

    .line 280
    sub-long v16, v24, v22

    .line 281
    .local v16, "mRm":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v16

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    .line 282
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    .line 286
    .end local v16    # "mRm":J
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v5, v22, v6

    if-lez v5, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    long-to-float v5, v6

    move-wide/from16 v0, v22

    long-to-float v6, v0

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreePercent:F

    .line 290
    :goto_4
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFreePercent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreePercent:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 248
    .end local v14    # "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    .end local v20    # "todayBytes":J
    .end local v22    # "total":J
    :cond_0
    const-wide/16 v24, 0x0

    goto/16 :goto_0

    .line 253
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getNetworkPolicyHistory(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mStartTime:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mEndTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mCurrentTime:J

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 254
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v13, :cond_2

    iget-wide v6, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v8, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v6, v8

    .line 255
    :goto_5
    const-wide/16 v18, 0x0

    .line 257
    .local v18, "middle_real_value":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "middle_real_value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v18

    .line 258
    const-string/jumbo v5, "TrafficDataSummary/LPF"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the middle_real_value is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_6
    sub-long v6, v24, v18

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mMiddleData:J

    add-long v24, v6, v8

    .line 263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "total_used"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-static {v5, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 264
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v24

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mTrafficUsed:Ljava/lang/String;

    goto/16 :goto_1

    .line 254
    .end local v18    # "middle_real_value":J
    :cond_2
    const-wide/16 v24, 0x0

    goto/16 :goto_5

    .line 259
    .restart local v18    # "middle_real_value":J
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TrafficDataSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception happend:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 268
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v18    # "middle_real_value":J
    .restart local v14    # "entry_today":Landroid/net/NetworkStatsHistory$Entry;
    :cond_3
    const-wide/16 v20, 0x0

    .restart local v20    # "todayBytes":J
    goto/16 :goto_2

    .line 284
    .restart local v22    # "total":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainData:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mRemainTraffic:Ljava/lang/String;

    goto/16 :goto_3

    .line 289
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->mFreePercent:F

    goto/16 :goto_4
.end method
