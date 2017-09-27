.class public Lcom/sec/android/cover/manager/CoverPowerManager;
.super Ljava/lang/Object;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverPowerManager$1;,
        Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/cover/manager/CoverPowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTimerResetBlocked:Z

.field private mPMS:Landroid/os/PowerManager;

.field private mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mUnblockTimerResetHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -set0(Lcom/sec/android/cover/manager/CoverPowerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    return p1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v3, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    .line 36
    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/manager/CoverPowerManager$1;-><init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    .line 51
    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "create CoverPowerManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    .line 56
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    .line 57
    const-string/jumbo v1, "SViewCoverBaseService.mCoverStateWakeLock"

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 50
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method


# virtual methods
.method public cancelScreenOffTimer()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public goToSleep()V
    .locals 4

    .prologue
    .line 127
    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 126
    :cond_0
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 139
    :cond_0
    return-void
.end method

.method public resetScreenOffTimer()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 79
    return-void
.end method

.method public resetScreenOffTimerWithInterval()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 84
    iget-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    .line 89
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 83
    return-void
.end method

.method public setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .prologue
    .line 63
    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "setTimerExpireHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 62
    :cond_0
    return-void
.end method

.method public startScreenOffTimer()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    .line 71
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 99
    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "userActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 98
    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 4

    .prologue
    .line 113
    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 112
    :cond_0
    return-void
.end method

.method public wakeUpWithReason()V
    .locals 4

    .prologue
    .line 120
    const-string/jumbo v0, "CoverPowerManager"

    const-string/jumbo v1, "wakeUpWithReason"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 119
    :cond_0
    return-void
.end method
