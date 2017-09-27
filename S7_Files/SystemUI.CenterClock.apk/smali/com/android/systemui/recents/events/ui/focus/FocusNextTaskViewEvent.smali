.class public Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "FocusNextTaskViewEvent.java"


# instance fields
.field public final timerIndicatorDuration:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "timerIndicatorDuration"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;->timerIndicatorDuration:I

    .line 28
    return-void
.end method
