.class Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DividerButtonsGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerButtonsGroup;->createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field once:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

.field final synthetic val$buttonType:I


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerButtonsGroup;
    .param p2, "val$buttonType"    # I

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->val$buttonType:I

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->once:Z

    .line 157
    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->once:Z

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->once:Z

    .line 163
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->val$buttonType:I

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsClickEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 164
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    sget v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->FLAG_ANIMATE:I

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;->this$0:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->-wrap0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V

    .line 166
    const/4 v0, 0x1

    return v0

    .line 168
    :cond_0
    return v1
.end method
