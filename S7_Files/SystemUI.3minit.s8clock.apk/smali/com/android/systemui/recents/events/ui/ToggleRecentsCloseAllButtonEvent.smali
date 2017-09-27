.class public Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "ToggleRecentsCloseAllButtonEvent.java"


# instance fields
.field public final focus:Z

.field public final show:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->focus:Z

    .line 29
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "focus"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->show:Z

    .line 36
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;->focus:Z

    .line 34
    return-void
.end method
