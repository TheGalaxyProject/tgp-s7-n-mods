.class public Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTvTaskEvent.java"


# instance fields
.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetTaskStack:I

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/tv/views/TaskCardView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "targetTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "targetTaskStack"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 34
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 36
    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;->targetTaskStack:I

    .line 32
    return-void
.end method
