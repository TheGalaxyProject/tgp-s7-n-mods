.class public Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerStartSnapModeEvent.java"


# instance fields
.field public final mStart:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    .line 8
    return-void
.end method
