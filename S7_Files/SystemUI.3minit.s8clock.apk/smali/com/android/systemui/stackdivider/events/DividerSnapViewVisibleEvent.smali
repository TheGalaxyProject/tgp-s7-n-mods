.class public Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "DividerSnapViewVisibleEvent.java"


# instance fields
.field public final mDockedRect:Landroid/graphics/Rect;

.field public final mSnapTarget:I

.field public final mVisible:Z


# direct methods
.method public constructor <init>(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "snapTarget"    # I
    .param p3, "dockedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    .line 14
    iput p2, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    .line 15
    iput-object p3, p0, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    .line 12
    return-void
.end method
