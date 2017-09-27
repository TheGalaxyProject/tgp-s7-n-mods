.class public Lcom/android/server/am/BartenderActivityManager;
.super Ljava/lang/Object;
.source "BartenderActivityManager.java"


# static fields
.field static DEBUG_CPUSET:Z = false

.field static final TAG:Ljava/lang/String; = "BartenderActivityManager"

.field private static manager:Lcom/android/server/am/BartenderActivityManager;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mSystemPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 43
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mSystemPackage:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/android/server/am/BartenderActivityManager;->init()V

    .line 41
    return-void
.end method

.method static getManager()Lcom/android/server/am/BartenderActivityManager;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;

    return-object v0
.end method

.method static getManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/BartenderActivityManager;
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/server/am/BartenderActivityManager;->prepareManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 64
    invoke-static {}, Lcom/android/server/am/BartenderActivityManager;->getManager()Lcom/android/server/am/BartenderActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private hasOngoingNotifcation(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 141
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 142
    .local v2, "inm":Landroid/app/INotificationManager;
    if-nez v2, :cond_0

    .line 143
    return v6

    .line 145
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/BartenderActivityManager;->mSystemPackage:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 146
    .local v0, "actives":[Landroid/service/notification/StatusBarNotification;
    if-nez v0, :cond_1

    .line 147
    return v6

    .line 148
    :cond_1
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v4, v0, v5

    .line 149
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "notiPackage":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 152
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v8, v8, 0x22

    if-eqz v8, :cond_2

    .line 153
    const/4 v5, 0x1

    return v5

    .line 148
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    .end local v0    # "actives":[Landroid/service/notification/StatusBarNotification;
    .end local v3    # "notiPackage":Ljava/lang/String;
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return v6
.end method

.method private init()V
    .locals 2

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/server/am/BartenderActivityManager;->DEBUG_CPUSET:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BartenderActivityManager"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method private isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cached"    # Z
    .param p3, "abnormal"    # Z

    .prologue
    const/4 v2, 0x0

    .line 129
    if-eqz p2, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    if-eqz v0, :cond_2

    .line 130
    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    if-eqz v0, :cond_3

    .line 131
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_4

    return v2

    .line 129
    :cond_2
    return v2

    .line 130
    :cond_3
    return v2

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_5

    return v2

    .line 133
    :cond_5
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/BartenderActivityManager;->hasOngoingNotifcation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    return v2

    .line 137
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method static prepareManager(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 54
    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v0, Lcom/android/server/am/BartenderActivityManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/BartenderActivityManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;

    .line 52
    return-void
.end method


# virtual methods
.method public sendControlInfo(ILjava/lang/String;)Z
    .locals 13
    .param p1, "pid"    # I
    .param p2, "Type"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 69
    const-string/jumbo v8, "cached"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 70
    .local v2, "cached":Z
    const-string/jumbo v8, "abnormal"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 71
    .local v0, "abnormal":Z
    const-string/jumbo v8, "kill"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 72
    .local v4, "kill":Z
    const-string/jumbo v8, "stay"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 73
    .local v7, "stay":Z
    const-string/jumbo v8, "release"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 75
    .local v6, "release":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    if-nez v7, :cond_0

    move v8, v6

    :goto_0
    if-nez v8, :cond_1

    .line 76
    const-string/jumbo v8, "BartenderActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BarTender: pid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cached="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " abnormal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " kill="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " stay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " release="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v8, "BartenderActivityManager"

    const-string/jumbo v9, "BarTender: Value is not set. Type needs at least 1 target group."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v12

    :cond_0
    move v8, v9

    .line 75
    goto :goto_0

    .line 81
    :cond_1
    const-string/jumbo v8, "BartenderActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BarTender: pid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " cached="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " abnormal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " kill="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " stay="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " release="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 85
    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 86
    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 87
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, p1, :cond_3

    .line 88
    move-object v1, v5

    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_2
    monitor-exit v10

    .line 84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 93
    if-nez v1, :cond_4

    .line 94
    const-string/jumbo v8, "BartenderActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BarTender: pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is nonexistent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v12

    .line 85
    .restart local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 84
    .end local v3    # "i":I
    .end local v5    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v8

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    .line 97
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "i":I
    :cond_4
    if-eqz v4, :cond_7

    .line 98
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/am/BartenderActivityManager;->isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 99
    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 100
    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v8, :cond_5

    .line 101
    const-string/jumbo v8, "excessive cpu kill"

    const/4 v11, 0x1

    invoke-virtual {v1, v8, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    monitor-exit v10

    .line 99
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 121
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 122
    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v10

    .line 121
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 125
    return v9

    .line 99
    :catchall_1
    move-exception v8

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    .line 105
    :cond_7
    if-eqz v6, :cond_9

    .line 106
    if-eqz v2, :cond_8

    .line 107
    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    .line 108
    :cond_8
    if-eqz v0, :cond_6

    .line 109
    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    goto :goto_2

    .line 111
    :cond_9
    if-eqz v2, :cond_a

    .line 112
    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    .line 113
    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    .line 115
    :cond_a
    if-eqz v0, :cond_6

    .line 116
    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    .line 117
    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    goto :goto_2

    .line 121
    :catchall_2
    move-exception v8

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8
.end method
