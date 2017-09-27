.class public Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskPostEvent.java"


# instance fields
.field public isFreeformDragging:Z

.field public postRunnable:Ljava/lang/Runnable;

.field public screenPinningRequested:Z

.field public target:I

.field public targetTaskBounds:Landroid/graphics/Rect;

.field public targetTaskStack:I

.field public task:Lcom/android/systemui/recents/model/Task;

.field public taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    .line 65
    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "postRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    .line 74
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->postRunnable:Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZI)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "targetTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "targetTaskStack"    # I
    .param p5, "screenPinningRequested"    # Z
    .param p6, "isFreeformDragging"    # Z
    .param p7, "target"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 51
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 52
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 53
    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    .line 54
    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    .line 56
    iput-boolean p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 59
    iput p7, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    .line 49
    return-void
.end method
