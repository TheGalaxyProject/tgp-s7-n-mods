.class public Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerButtonsClickEvent.java"


# instance fields
.field public final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 16
    iput p1, p0, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;->mType:I

    .line 15
    return-void
.end method
