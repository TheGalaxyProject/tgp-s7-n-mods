.class public abstract Lcom/sec/android/cover/CoverMainFrameView;
.super Landroid/widget/FrameLayout;
.source "CoverMainFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/CoverMainFrameView$1;,
        Lcom/sec/android/cover/CoverMainFrameView$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mBatteryCharingText:Landroid/widget/TextView;

.field protected static mDelayedShowingSequence:I

.field public static mLastBatteryPluggedState:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryRetryCount:I

.field private mBatteryStatus:Ljava/lang/Object;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field protected mStatusBarState:I

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/CoverMainFrameView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    return v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/CoverMainFrameView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/CoverMainFrameView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/CoverMainFrameView;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/CoverMainFrameView;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/CoverMainFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/CoverMainFrameView;->updateBatteryState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    .line 43
    sput v1, Lcom/sec/android/cover/CoverMainFrameView;->mLastBatteryPluggedState:I

    .line 53
    sput v1, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    .line 42
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 44
    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mStatusBarState:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 102
    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$1;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$2;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 58
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 59
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    .line 42
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 44
    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mStatusBarState:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 102
    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$1;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$2;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 64
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 65
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    .line 42
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 44
    iput v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mStatusBarState:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 102
    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$1;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    .line 143
    new-instance v0, Lcom/sec/android/cover/CoverMainFrameView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverMainFrameView$2;-><init>(Lcom/sec/android/cover/CoverMainFrameView;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    .line 70
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 71
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 68
    return-void
.end method

.method private updateBatteryState()V
    .locals 15

    .prologue
    .line 171
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    if-nez v10, :cond_0

    .line 172
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "mBatteryCharingText is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 176
    :cond_0
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    if-nez v10, :cond_1

    .line 177
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "updateBatteryState : Intent is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    return-void

    .line 182
    :cond_1
    const/4 v1, 0x0

    .line 184
    .local v1, "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    instance-of v10, v10, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    if-eqz v10, :cond_2

    .line 185
    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    .end local v1    # "batteryStatus":Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;
    check-cast v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .line 188
    :cond_2
    if-nez v1, :cond_3

    .line 189
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "batteryStatus is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    return-void

    .line 194
    :cond_3
    iget v7, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->level:I

    .line 195
    .local v7, "level":I
    iget v8, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->plugged:I

    .line 196
    .local v8, "plugged":I
    sput v8, Lcom/sec/android/cover/CoverMainFrameView;->mLastBatteryPluggedState:I

    .line 197
    iget v9, v1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->status:I

    .line 198
    .local v9, "status":I
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBatteryState : Plugged = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " Level="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v8, :cond_a

    iget v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mStatusBarState:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_a

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, "batteryCharging":Ljava/lang/StringBuilder;
    const/16 v10, 0x64

    if-lt v7, v10, :cond_5

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_charged:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_4
    :goto_0
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    .end local v0    # "batteryCharging":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 205
    .restart local v0    # "batteryCharging":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssCharged()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 206
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isWirelssFastCharged()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 207
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected fast wireless charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_wireless_fast_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 209
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 208
    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :goto_2
    :try_start_0
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v10}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v4

    .line 226
    .local v4, "chargingTimeRemaining":J
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Chargind time remaining : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_9

    .line 228
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v10, v4, v5}, Lcom/sec/android/cover/CoverUtils;->getBatteryChargingTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "chargingTimeFormatted":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_charging_remaining_time:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "charginTime":Ljava/lang/String;
    const-string/jumbo v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v2    # "charginTime":Ljava/lang/String;
    .end local v3    # "chargingTimeFormatted":Ljava/lang/String;
    .end local v4    # "chargingTimeRemaining":J
    :catch_0
    move-exception v6

    .line 238
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Error calling IBatteryStats: "

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 211
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_6
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected wireless charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_wireless_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 215
    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;->isFastCharging()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 216
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected fast wire charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_fast_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 219
    :cond_8
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Detected wire charging"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/sec/android/sviewcover/R$string;->battery_charging_percent:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 232
    .restart local v4    # "chargingTimeRemaining":J
    :cond_9
    :try_start_1
    iget v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    const/4 v11, 0x4

    if-gt v10, v11, :cond_4

    .line 233
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Retry getting battery charging info - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    iget-object v10, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const-wide/16 v12, 0xbb8

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 245
    .end local v0    # "batteryCharging":Ljava/lang/StringBuilder;
    .end local v4    # "chargingTimeRemaining":J
    :cond_a
    sget-object v10, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected cancelScreenOffTimer()V
    .locals 1

    .prologue
    .line 268
    sget v0, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    .line 267
    return-void
.end method

.method protected abstract changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V
.end method

.method public isCoverOpen()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 129
    sget-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 127
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 88
    sget-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverEvent :  coverSwitchState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " coverType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const-string/jumbo v2, " coverColor:"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/cover/CoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryRetryCount:I

    .line 93
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/CoverMainFrameView;->updateBatteryState()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 137
    sget-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 118
    return-void
.end method

.method protected setBatteryTextView(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "batteryTextView"    # Landroid/widget/TextView;

    .prologue
    .line 75
    sput-object p1, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    .line 76
    iget-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    move-result-object v1

    .line 77
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    .line 76
    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getLastBroadcastInfo(Ljava/lang/String;)Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;

    move-result-object v0

    .line 78
    .local v0, "bcInfo":Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;
    if-eqz v0, :cond_0

    .line 79
    iget-object v1, v0, Lcom/sec/android/cover/manager/CoverBroadcastManager$BroadcastInfo;->mItem:Ljava/lang/Object;

    iput-object v1, p0, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryStatus:Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/sec/android/cover/CoverMainFrameView;->mBatteryCharingText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/CoverMainFrameView;->changeChargingTextColorIfWhiteWallpaper(Landroid/widget/TextView;)V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/cover/CoverMainFrameView;->updateBatteryState()V

    .line 74
    :cond_0
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 123
    return-void
.end method

.method protected startScreenOffTimer()V
    .locals 10

    .prologue
    .line 251
    const-wide/16 v0, 0x7530

    .line 252
    .local v0, "delayTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 251
    const-wide/16 v8, 0x7530

    .line 252
    add-long v4, v6, v8

    .line 254
    .local v4, "when":J
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.cover.DELAYED_TIMEOUT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "seq"

    sget v7, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    iget-object v6, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    .line 257
    const/high16 v8, 0x10000000

    .line 256
    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 258
    .local v3, "sender":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v6, :cond_0

    .line 259
    iget-object v6, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4, v5, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 262
    :cond_0
    sget-object v6, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting alarm to turn off cover, seq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 263
    const-string/jumbo v8, ", delay = "

    .line 262
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method
