.class public Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
.super Ljava/lang/Object;
.source "RecentsTaskLoadPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    }
.end annotation


# static fields
.field private static MIN_NUM_TASKS:I

.field private static SESSION_BEGIN_TIME:I


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentQuietProfiles:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRawTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    .line 64
    const v0, 0x1499700

    sput v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    .line 61
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z
    .locals 6
    .param p1, "t"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 308
    iget-wide v0, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->SESSION_BEGIN_TIME:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCurrentQuietProfilesCache(I)V
    .locals 6
    .param p1, "currentUserId"    # I

    .prologue
    .line 93
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 95
    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 99
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 100
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v1, :cond_2

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 103
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized executePlan(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui/recents/model/RecentsTaskLoader;Lcom/android/systemui/recents/model/TaskResourceLoadQueue;)V
    .locals 12
    .param p1, "opts"    # Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .param p2, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p3, "loadQueue"    # Lcom/android/systemui/recents/model/TaskResourceLoadQueue;

    .prologue
    monitor-enter p0

    .line 245
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 246
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 249
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 250
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 251
    .local v7, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_b

    .line 252
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 253
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v8, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 255
    .local v8, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v11, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    if-ne v10, v11, :cond_1

    const/4 v2, 0x1

    .line 256
    .local v2, "isRunningTask":Z
    :goto_1
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    sub-int v10, v7, v10

    if-lt v1, v10, :cond_2

    const/4 v3, 0x1

    .line 257
    .local v3, "isVisibleTask":Z
    :goto_2
    iget v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    sub-int v10, v7, v10

    if-lt v1, v10, :cond_3

    const/4 v4, 0x1

    .line 260
    .local v4, "isVisibleThumbnail":Z
    :goto_3
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadPausedActivities:Z

    if-eqz v10, :cond_4

    if-eqz v2, :cond_4

    .line 251
    :cond_0
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isRunningTask":Z
    goto :goto_1

    .line 256
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isVisibleTask":Z
    goto :goto_2

    .line 257
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isVisibleThumbnail":Z
    goto :goto_3

    .line 265
    :cond_4
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadInvisibleActivities:Z

    if-eqz v10, :cond_5

    iget-boolean v10, v6, Lcom/android/systemui/recents/model/Task;->isVisible:Z

    if-nez v10, :cond_0

    .line 270
    :cond_5
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadIcons:Z

    if-eqz v10, :cond_7

    if-nez v2, :cond_6

    if-eqz v3, :cond_7

    .line 271
    :cond_6
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_7

    .line 272
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 273
    const/4 v11, 0x1

    .line 272
    invoke-virtual {p2, v8, v10, v5, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 276
    :cond_7
    iget-boolean v10, p1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    if-eqz v10, :cond_0

    if-nez v2, :cond_8

    if-eqz v4, :cond_0

    .line 277
    :cond_8
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_9

    if-eqz v2, :cond_0

    .line 278
    :cond_9
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x1

    if-gt v10, v11, :cond_a

    .line 280
    const/4 v10, 0x1

    .line 279
    invoke-virtual {p2, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "i":I
    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "taskCount":I
    .end local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 281
    .restart local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v1    # "i":I
    .restart local v2    # "isRunningTask":Z
    .restart local v3    # "isVisibleTask":Z
    .restart local v4    # "isVisibleThumbnail":Z
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "taskCount":I
    .restart local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .restart local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_a
    :try_start_1
    iget v10, v0, Lcom/android/systemui/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 282
    invoke-virtual {p3, v6}, Lcom/android/systemui/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui/recents/model/Task;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .end local v2    # "isRunningTask":Z
    .end local v3    # "isVisibleTask":Z
    .end local v4    # "isVisibleThumbnail":Z
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_b
    monitor-exit p0

    .line 244
    return-void
.end method

.method public getTaskStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public hasTasks()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 301
    :cond_1
    return v0
.end method

.method public declared-synchronized preloadPlan(Lcom/android/systemui/recents/model/RecentsTaskLoader;IZ)V
    .locals 44
    .param p1, "loader"    # Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .param p2, "runningTaskId"    # I
    .param p3, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 136
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    .line 137
    .local v38, "res":Landroid/content/res/Resources;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v28, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    if-nez v4, :cond_0

    .line 139
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 142
    :cond_0
    new-instance v27, Landroid/util/SparseArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseArray;-><init>()V

    .line 143
    .local v27, "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    new-instance v26, Landroid/util/SparseIntArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/SparseIntArray;-><init>()V

    .line 144
    .local v26, "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 145
    const v5, 0x7f0f02f1

    .line 144
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 146
    .local v30, "dismissDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 147
    const v5, 0x7f0f02f5

    .line 146
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 149
    .local v29, "appInfoDescFormat":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 150
    const v5, 0x7f0f02f4

    .line 149
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 151
    .local v40, "splitDescFormat":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v39

    .line 153
    .local v39, "setting":Lcom/android/systemui/recents/model/RecentsSettingHelper;
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v43

    .line 156
    .local v43, "versionInfo":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    .line 157
    const-string/jumbo v5, "OverviewLastStackTaskActiveTime"

    const-wide/16 v18, 0x0

    .line 156
    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/android/systemui/Prefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v34

    .line 161
    .local v34, "lastStackActiveTime":J
    const-wide/16 v36, -0x1

    .line 162
    .local v36, "newLastStackActiveTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v42

    .line 163
    .local v42, "taskCount":I
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v42

    if-ge v0, v1, :cond_c

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    move/from16 v0, v31

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 167
    .local v41, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v41

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    move-object/from16 v0, v41

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 168
    move-object/from16 v0, v41

    iget v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    move-object/from16 v0, v41

    iget-wide v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->firstActiveTime:J

    move-object/from16 v0, v41

    iget-wide v10, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    .line 167
    invoke-direct/range {v3 .. v11}, Lcom/android/systemui/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;IJJ)V

    .line 172
    .local v3, "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->stackId:I

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFreeformStack(I)Z

    move-result v33

    .line 173
    .local v33, "isFreeformTask":Z
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAllListShown:Z

    if-nez v4, :cond_3

    if-nez v33, :cond_3

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->isHistoricalTask(Landroid/app/ActivityManager$RecentTaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    move-object/from16 v0, v41

    iget-wide v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    cmp-long v4, v4, v34

    if-ltz v4, :cond_4

    sget v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->MIN_NUM_TASKS:I

    sub-int v4, v42, v4

    move/from16 v0, v31

    if-lt v0, v4, :cond_4

    const/16 v16, 0x1

    .line 176
    .local v16, "isStackTask":Z
    :goto_1
    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    const/4 v15, 0x1

    .line 182
    .local v15, "isLaunchTarget":Z
    :goto_2
    if-eqz v16, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v36, v4

    if-gez v4, :cond_1

    .line 183
    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->lastActiveTime:J

    move-wide/from16 v36, v0

    .line 187
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityInfo(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/content/pm/ActivityInfo;

    move-result-object v32

    .line 188
    .local v32, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityTitle(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, "title":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateContentDescription(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "titleDescription":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, "dismissDescription":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 194
    .local v12, "splitDescription":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "appInfoDescription":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 196
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v3, v4, v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 198
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 199
    .local v7, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v13

    .line 200
    .local v13, "activityColor":I
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getActivityBackgroundColor(Landroid/app/ActivityManager$TaskDescription;)I

    move-result v14

    .line 201
    .local v14, "backgroundColor":I
    if-eqz v32, :cond_8

    .line 202
    move-object/from16 v0, v32

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    .line 205
    .local v17, "isSystemApp":Z
    :goto_4
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isPrivateMode:Z

    move/from16 v24, v0

    .line 206
    .local v24, "isPrivateMode":Z
    if-eqz v24, :cond_2

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    invoke-virtual/range {v39 .. v39}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isPrivateModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 212
    .end local v24    # "isPrivateMode":Z
    :cond_2
    :goto_5
    const-string/jumbo v4, "2.0"

    const-string/jumbo v5, "version"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 213
    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v5, 0x64

    if-lt v4, v5, :cond_b

    .line 214
    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    const/16 v5, 0xc8

    if-gt v4, v5, :cond_a

    const/16 v25, 0x1

    .line 218
    .local v25, "isKnoxTask":Z
    :goto_6
    new-instance v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, v41

    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    move-object/from16 v0, v41

    iget v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskColor:I

    .line 222
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isDockable:Z

    move/from16 v18, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->bounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object/from16 v20, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->resizeMode:I

    move/from16 v21, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    .line 223
    move-object/from16 v0, v41

    iget-boolean v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    move/from16 v23, v0

    .line 218
    invoke-direct/range {v2 .. v25}, Lcom/android/systemui/recents/model/Task;-><init>(Lcom/android/systemui/recents/model/Task$TaskKey;IILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;ZZZ)V

    .line 226
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v5, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/16 v18, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 228
    iget v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_0

    .line 173
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "titleDescription":Ljava/lang/String;
    .end local v10    # "dismissDescription":Ljava/lang/String;
    .end local v11    # "appInfoDescription":Ljava/lang/String;
    .end local v12    # "splitDescription":Ljava/lang/String;
    .end local v13    # "activityColor":I
    .end local v14    # "backgroundColor":I
    .end local v15    # "isLaunchTarget":Z
    .end local v16    # "isStackTask":Z
    .end local v17    # "isSystemApp":Z
    .end local v25    # "isKnoxTask":Z
    .end local v32    # "info":Landroid/content/pm/ActivityInfo;
    :cond_3
    const/16 v16, 0x1

    .restart local v16    # "isStackTask":Z
    goto/16 :goto_1

    .line 175
    .end local v16    # "isStackTask":Z
    :cond_4
    const/16 v16, 0x0

    .restart local v16    # "isStackTask":Z
    goto/16 :goto_1

    .line 176
    :cond_5
    const/4 v15, 0x0

    .restart local v15    # "isLaunchTarget":Z
    goto/16 :goto_2

    .line 197
    .restart local v8    # "title":Ljava/lang/String;
    .restart local v9    # "titleDescription":Ljava/lang/String;
    .restart local v10    # "dismissDescription":Ljava/lang/String;
    .restart local v11    # "appInfoDescription":Ljava/lang/String;
    .restart local v12    # "splitDescription":Ljava/lang/String;
    .restart local v32    # "info":Landroid/content/pm/ActivityInfo;
    :cond_6
    const/4 v6, 0x0

    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 202
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .restart local v13    # "activityColor":I
    .restart local v14    # "backgroundColor":I
    :cond_7
    const/16 v17, 0x0

    .restart local v17    # "isSystemApp":Z
    goto/16 :goto_4

    .line 201
    .end local v17    # "isSystemApp":Z
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "isSystemApp":Z
    goto/16 :goto_4

    .line 207
    .restart local v24    # "isPrivateMode":Z
    :cond_9
    const/16 v24, 0x0

    .local v24, "isPrivateMode":Z
    goto/16 :goto_5

    .line 214
    .end local v24    # "isPrivateMode":Z
    :cond_a
    const/16 v25, 0x0

    .restart local v25    # "isKnoxTask":Z
    goto :goto_6

    .line 212
    .end local v25    # "isKnoxTask":Z
    :cond_b
    const/16 v25, 0x0

    .restart local v25    # "isKnoxTask":Z
    goto :goto_6

    .line 230
    .end local v3    # "taskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .end local v7    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "titleDescription":Ljava/lang/String;
    .end local v10    # "dismissDescription":Ljava/lang/String;
    .end local v11    # "appInfoDescription":Ljava/lang/String;
    .end local v12    # "splitDescription":Ljava/lang/String;
    .end local v13    # "activityColor":I
    .end local v14    # "backgroundColor":I
    .end local v15    # "isLaunchTarget":Z
    .end local v16    # "isStackTask":Z
    .end local v17    # "isSystemApp":Z
    .end local v25    # "isKnoxTask":Z
    .end local v32    # "info":Landroid/content/pm/ActivityInfo;
    .end local v33    # "isFreeformTask":Z
    .end local v41    # "t":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v4, v36, v4

    if-eqz v4, :cond_d

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "OverviewLastStackTaskActiveTime"

    move-wide/from16 v0, v36

    invoke-static {v4, v5, v0, v1}, Lcom/android/systemui/Prefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 236
    :cond_d
    new-instance v4, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 237
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 135
    return-void

    .end local v26    # "affiliatedTaskCounts":Landroid/util/SparseIntArray;
    .end local v27    # "affiliatedTasks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    .end local v28    # "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v29    # "appInfoDescFormat":Ljava/lang/String;
    .end local v30    # "dismissDescFormat":Ljava/lang/String;
    .end local v31    # "i":I
    .end local v34    # "lastStackActiveTime":J
    .end local v36    # "newLastStackActiveTime":J
    .end local v38    # "res":Landroid/content/res/Resources;
    .end local v39    # "setting":Lcom/android/systemui/recents/model/RecentsSettingHelper;
    .end local v40    # "splitDescFormat":Ljava/lang/String;
    .end local v42    # "taskCount":I
    .end local v43    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized preloadRawTasks(Z)V
    .locals 4
    .param p1, "includeFrontMostExcludedTask"    # Z

    .prologue
    monitor-enter p0

    .line 115
    const/4 v0, -0x2

    .line 116
    .local v0, "currentUserId":I
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->updateCurrentQuietProfilesCache(I)V

    .line 117
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 118
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 119
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mCurrentQuietProfiles:Landroid/util/ArraySet;

    .line 118
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->mRawTasks:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 114
    return-void

    .end local v1    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
