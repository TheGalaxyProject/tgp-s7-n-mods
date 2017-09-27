.class public Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "FocusMoveEvent.java"


# instance fields
.field public direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .locals 0
    .param p1, "d"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    .line 28
    return-void
.end method
