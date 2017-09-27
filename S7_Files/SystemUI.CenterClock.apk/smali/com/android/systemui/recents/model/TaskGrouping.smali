.class public Lcom/android/systemui/recents/model/TaskGrouping;
.super Ljava/lang/Object;
.source "TaskGrouping.java"


# instance fields
.field affiliation:I

.field latestActiveTimeInGroup:J

.field mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

.field mTaskKeyIndices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTaskKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "affiliation"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    .line 19
    iput p1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    .line 18
    return-void
.end method

.method private updateTaskIndices()V
    .locals 5

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 94
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 95
    return-void

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 99
    .local v2, "taskCount":I
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    iput-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 100
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 103
    .local v1, "k":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "k":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_1
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v2, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 26
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    .line 28
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskGrouping;->updateTaskIndices()V

    .line 23
    return-void
.end method

.method public getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskGrouping;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 50
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    return-object v1

    .line 53
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskGrouping;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    .line 59
    .local v0, "i":I
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    return-object v1

    .line 62
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTaskCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public indexOf(Lcom/android/systemui/recents/model/Task;)I
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 67
    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mFrontMostTaskKey:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z
    .locals 4
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "below"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    iget-object v2, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeyIndices:Landroid/util/ArrayMap;

    iget-object v3, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0

    :cond_1
    move v0, v1

    .line 83
    goto :goto_0
.end method

.method removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 34
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    .line 36
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 37
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 38
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-wide v2, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 39
    .local v2, "lastActiveTime":J
    iget-wide v4, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 40
    iput-wide v2, p0, Lcom/android/systemui/recents/model/TaskGrouping;->latestActiveTimeInGroup:J

    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "lastActiveTime":J
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskGrouping;->updateTaskIndices()V

    .line 33
    return-void
.end method
