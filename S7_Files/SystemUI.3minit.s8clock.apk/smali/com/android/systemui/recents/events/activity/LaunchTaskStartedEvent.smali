.class public Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "LaunchTaskStartedEvent.java"


# instance fields
.field public final isFreeformTask:Z

.field public final screenPinningRequested:Z

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;ZZ)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "screenPinningRequested"    # Z
    .param p3, "isFreeformTask"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 38
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    .line 40
    iput-boolean p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->isFreeformTask:Z

    .line 36
    return-void
.end method
