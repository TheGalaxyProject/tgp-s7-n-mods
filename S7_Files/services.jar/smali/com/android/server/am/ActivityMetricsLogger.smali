.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# static fields
.field private static final INVALID_START_TIME:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionStartTime:J

.field private mLastLogTimeSecs:J

.field private mLoggedStartingWindowDrawn:Z

.field private mLoggedTransitionStarting:Z

.field private mLoggedWindowsDrawn:Z

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "window_time_0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V
    .locals 4
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 61
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 62
    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private calculateCurrentDelay()I
    .locals 4

    .prologue
    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 155
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 156
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 157
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 158
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v1, :cond_1

    .line 156
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v3, :cond_0

    .line 162
    const/4 v3, 0x1

    return v3

    .line 165
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v4
.end method

.method private isTransitionActive()Z
    .locals 4

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyActivityLaunched(ILjava/lang/String;ZZ)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z

    .prologue
    .line 182
    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->reset()V

    .line 186
    return-void

    .line 182
    :cond_1
    if-eqz p4, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x143

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x144

    invoke-static {v0, v1, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 193
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 193
    const/16 v2, 0x145

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 180
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 249
    iput-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 251
    iput-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedStartingWindowDrawn:Z

    .line 247
    return-void
.end method


# virtual methods
.method logWindowState()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 67
    .local v0, "now":J
    iget v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    if-eq v4, v8, :cond_0

    .line 71
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v5, v5, v6

    .line 72
    iget-wide v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v6, v0, v6

    long-to-int v6, v6

    .line 71
    invoke-static {v4, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 74
    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 76
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 77
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    iput v10, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 79
    return-void

    .line 81
    :cond_1
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 82
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 83
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 84
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 88
    :cond_2
    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Lcom/samsung/android/bridge/multiscreen/MultiScreenManagerBridge;->getStackIdExcludingDisplayId(I)I

    move-result v3

    .line 90
    .local v3, "stackId":I
    if-eqz v3, :cond_3

    .line 91
    if-ne v3, v10, :cond_5

    .line 92
    :cond_3
    iput v9, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 102
    :cond_4
    :goto_0
    return-void

    .line 93
    :cond_5
    if-ne v3, v12, :cond_6

    .line 94
    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Docked stack shouldn\'t be the focused stack, because it reported not being visible."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    .line 97
    :cond_6
    if-ne v3, v11, :cond_7

    .line 98
    iput v11, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    .line 99
    :cond_7
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 135
    if-eqz p2, :cond_0

    .line 136
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 137
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 136
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    move-object v1, v4

    .line 139
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 140
    .local v2, "processRunning":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 141
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 148
    :goto_1
    if-eqz v1, :cond_1

    .line 149
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 151
    .local v3, "processSwitch":Z
    :cond_1
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILjava/lang/String;ZZ)V

    .line 134
    return-void

    .line 139
    .end local v2    # "processRunning":Z
    .end local v3    # "processSwitch":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "processRunning":Z
    goto :goto_0

    .line 142
    :cond_3
    const/4 v0, 0x0

    .local v0, "componentName":Ljava/lang/String;
    goto :goto_1
.end method

.method notifyActivityLaunching()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 123
    return-void
.end method

.method notifyStartingWindowDrawn()V
    .locals 3

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedStartingWindowDrawn:Z

    if-eqz v0, :cond_1

    .line 217
    :cond_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedStartingWindowDrawn:Z

    .line 220
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 221
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v1

    .line 220
    const/16 v2, 0x141

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 215
    return-void
.end method

.method notifyTransitionStarting(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x140

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 235
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 236
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v1

    .line 235
    const/16 v2, 0x13f

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 238
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    if-eqz v0, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->reset()V

    .line 230
    :cond_2
    return-void
.end method

.method notifyWindowsDrawn()V
    .locals 3

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    if-eqz v0, :cond_1

    .line 202
    :cond_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 205
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v1

    .line 204
    const/16 v2, 0x142

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    .line 207
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->reset()V

    .line 200
    :cond_2
    return-void
.end method
