.class public Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchSplitTaskEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 35
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 33
    return-void
.end method
