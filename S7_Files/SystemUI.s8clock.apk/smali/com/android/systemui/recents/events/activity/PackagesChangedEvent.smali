.class public Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "PackagesChangedEvent.java"


# instance fields
.field public final monitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 0
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->monitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    .line 37
    iput p3, p0, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    .line 34
    return-void
.end method
