.class public Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TaskStackHorizontalViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "tasks"    # Ljava/util/List;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    .line 107
    return-void
.end method


# virtual methods
.method public addTaskAt(Lcom/android/systemui/recents/model/Task;I)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "position"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 172
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyItemInserted(I)V

    .line 170
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositionOfTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 3
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v2, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 162
    .local v0, "position":I
    if-ltz v0, :cond_0

    .end local v0    # "position":I
    :goto_0
    return v0

    .restart local v0    # "position":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 136
    check-cast p1, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 139
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 140
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;->init(Lcom/android/systemui/recents/model/Task;)V

    .line 136
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 123
    const-string/jumbo v5, "uimode"

    .line 122
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 124
    .local v2, "uiModeManager":Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    .line 125
    .local v1, "isTvmode":Z
    :goto_0
    if-nez v1, :cond_1

    .line 126
    new-instance v4, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    .line 127
    const v5, 0x7f04011c

    invoke-virtual {v0, v5, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 126
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V

    return-object v4

    .end local v1    # "isTvmode":Z
    :cond_0
    move v1, v3

    .line 124
    goto :goto_0

    .line 130
    .restart local v1    # "isTvmode":Z
    :cond_1
    new-instance v4, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;

    .line 131
    const v5, 0x7f04012b

    invoke-virtual {v0, v5, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 130
    invoke-direct {v4, p0, v3}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter$ViewHolder;-><init>(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;Landroid/view/View;)V

    return-object v4
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 150
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyItemRemoved(I)V

    .line 153
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public setNewStackTasks(Ljava/util/List;)V
    .locals 1
    .param p1, "tasks"    # Ljava/util/List;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method

.method public setTaskStackHorizontalGridView(Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;)V
    .locals 0
    .param p1, "gridView"    # Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/recents/tv/views/TaskStackHorizontalViewAdapter;->mGridView:Lcom/android/systemui/recents/tv/views/TaskStackHorizontalGridView;

    .line 166
    return-void
.end method
