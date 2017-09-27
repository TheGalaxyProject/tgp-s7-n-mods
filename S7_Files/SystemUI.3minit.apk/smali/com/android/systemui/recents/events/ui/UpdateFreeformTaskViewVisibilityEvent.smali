.class public Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "UpdateFreeformTaskViewVisibilityEvent.java"


# instance fields
.field public final visible:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;->visible:Z

    .line 28
    return-void
.end method
