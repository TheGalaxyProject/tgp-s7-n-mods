.class public Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "TaskStackChangedEvent.java"


# instance fields
.field public final stack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    .line 26
    return-void
.end method
