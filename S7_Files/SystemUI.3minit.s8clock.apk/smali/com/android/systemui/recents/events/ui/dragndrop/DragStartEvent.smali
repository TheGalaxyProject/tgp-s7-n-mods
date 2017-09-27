.class public Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DragStartEvent.java"


# instance fields
.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;

.field public final tlOffset:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "tlOffset"    # Landroid/graphics/Point;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->tlOffset:Landroid/graphics/Point;

    .line 34
    return-void
.end method
