.class public Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;
.super Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;
.source "LaunchTvTaskStartedEvent.java"


# instance fields
.field public final taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/tv/views/TaskCardView;)V
    .locals 0
    .param p1, "taskView"    # Lcom/android/systemui/recents/tv/views/TaskCardView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$AnimatedEvent;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTvTaskStartedEvent;->taskView:Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 30
    return-void
.end method
