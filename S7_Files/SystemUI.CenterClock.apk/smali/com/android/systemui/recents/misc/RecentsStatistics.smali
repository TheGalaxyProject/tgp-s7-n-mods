.class public Lcom/android/systemui/recents/misc/RecentsStatistics;
.super Ljava/lang/Object;
.source "RecentsStatistics.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 91
    const-string/jumbo v0, "DOBY"

    .line 92
    const-string/jumbo v1, "RecentsLong"

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchDockedTaskByDragDropEvent;

    .prologue
    .line 101
    const-string/jumbo v0, "DOBY"

    .line 102
    const-string/jumbo v1, "RecentsDragging"

    .line 101
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    .prologue
    .line 96
    const-string/jumbo v0, "DOBY"

    .line 97
    const-string/jumbo v1, "RecentsMWButton"

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 46
    const-string/jumbo v0, "RC01"

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    if-eqz v0, :cond_0

    .line 49
    const-string/jumbo v0, "FFBY"

    .line 50
    const-string/jumbo v1, "RecentsDragging"

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 55
    const-string/jumbo v0, "RCA1"

    iget v1, p1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    .prologue
    .line 59
    const-string/jumbo v1, "RDBY"

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->bySwipe:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "swipe"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recents/misc/RecentsStatistics;->sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 59
    :cond_0
    const-string/jumbo v0, "button"

    goto :goto_0
.end method

.method sendDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsStatistics$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/RecentsStatistics$1;-><init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-wide/16 v2, 0x3e8

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    return-void
.end method

.method sendMultiWindowDiagnosticDataToGSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/misc/RecentsStatistics;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/misc/RecentsStatistics$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/recents/misc/RecentsStatistics$2;-><init>(Lcom/android/systemui/recents/misc/RecentsStatistics;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-wide/16 v2, 0x3e8

    .line 82
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method
