.class public Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "DismissAllTaskViewsEvent.java"


# instance fields
.field public final allTasksCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->allTasksCount:I

    .line 30
    return-void
.end method
