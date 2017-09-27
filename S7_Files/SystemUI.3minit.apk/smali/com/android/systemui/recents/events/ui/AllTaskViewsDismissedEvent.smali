.class public Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "AllTaskViewsDismissedEvent.java"


# instance fields
.field public final launchHome:Z

.field public final msgResId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "msgResId"    # I
    .param p2, "launchHome"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    .line 34
    iput-boolean p2, p0, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->launchHome:Z

    .line 31
    return-void
.end method
