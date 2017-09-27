.class public Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "MultiWindowStateChangedEvent.java"


# instance fields
.field public final inMultiWindow:Z

.field public final isRecentsActivityVisible:Z

.field public final showDeferredAnimation:Z

.field public final stack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(ZZLcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 0
    .param p1, "inMultiWindow"    # Z
    .param p2, "showDeferredAnimation"    # Z
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "isRecentsActivityVisible"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    .line 38
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    .line 39
    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    .line 41
    iput-boolean p4, p0, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    .line 36
    return-void
.end method
