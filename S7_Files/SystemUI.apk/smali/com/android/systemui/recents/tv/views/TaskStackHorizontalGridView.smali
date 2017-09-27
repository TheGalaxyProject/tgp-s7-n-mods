.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;
.super Landroid/support/v17/leanback/widget/HorizontalGridView;
.source "TaskStackHorizontalGridView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;


# instance fields
.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;
    .locals 3
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 109
    .local v1, "tv":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 110
    return-object v1

    .line 107
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "tv":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->findFocus()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskCardView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setWindowAlignment(I)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->setImportantForAccessibility(I)V

    .line 64
    invoke-super {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->onAttachedToWindow()V

    .line 60
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 179
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 180
    .local v1, "launchTaskIndex":I
    if-eq v1, v6, :cond_1

    .line 181
    add-int/lit8 v2, v1, -0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 185
    :goto_0
    if-eq v1, v6, :cond_2

    .line 187
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 188
    .local v0, "launchTask":Lcom/android/systemui/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/tv/views/TaskCardView;

    move-result-object v4

    .line 189
    const/4 v5, 0x0

    .line 188
    invoke-direct {v3, v4, v0, v5, v6}, Lcom/android/systemui/recents/events/activity/LaunchTvTaskEvent;-><init>(Lcom/android/systemui/recents/tv/views/TaskCardView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 191
    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    const/16 v4, 0x13e

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 178
    .end local v0    # "launchTask":Lcom/android/systemui/recents/model/Task;
    :cond_0
    :goto_1
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->onDetachedFromWindow()V

    .line 70
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    .line 146
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 145
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->addTaskAt(Lcom/android/systemui/recents/model/Task;I)V

    .line 144
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p5, "fromDockGesture"    # Z
    .param p6, "launchHome"    # Z

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;

    invoke-virtual {v1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v1, p2, :cond_0

    .line 154
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 159
    .local v0, "shouldFinishActivity":Z
    :cond_1
    if-eqz v0, :cond_2

    .line 160
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_3

    .line 161
    const v1, 0x7f0f0455

    .line 160
    :goto_0
    invoke-direct {v3, v1, p6}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 151
    .end local v0    # "shouldFinishActivity":Z
    :cond_2
    return-void

    .line 162
    .restart local v0    # "shouldFinishActivity":Z
    :cond_3
    const v1, 0x7f0f0456

    goto :goto_0
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 169
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 174
    return-void
.end method

.method public startFocusGainAnimation()V
    .locals 4

    .prologue
    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 123
    .local v1, "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 126
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->startFocusGainAnimation()V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_1
    return-void
.end method

.method public startFocusLossAnimation()V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/tv/views/TaskCardView;

    .line 136
    .local v1, "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getViewFocusAnimator()Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/tv/animations/ViewFocusAnimator;->changeSize(Z)V

    .line 139
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskCardView;->getRecentsRowFocusAnimationHolder()Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/tv/animations/RecentsRowFocusAnimationHolder;->startFocusLossAnimation()V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "v":Lcom/android/systemui/recents/tv/views/TaskCardView;
    :cond_1
    return-void
.end method
