.class Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecentsAppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListScroller"
.end annotation


# instance fields
.field mCurrentScrollY:I

.field mPrevScrollY:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsAppListView;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private onScrollYChanged(Z)V
    .locals 1
    .param p1, "isTop"    # Z

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleGoToTopButton(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsAppListView;->handleButtonsContainer(Z)V

    .line 217
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 226
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopScrollRequested:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->-get0(Lcom/android/systemui/recents/views/RecentsAppListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-static {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->-get0(Lcom/android/systemui/recents/views/RecentsAppListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    iput-boolean v3, v0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopScrollRequested:Z

    .line 222
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 208
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    .line 210
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    if-eqz v1, :cond_2

    .line 212
    :goto_0
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->onScrollYChanged(Z)V

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    .line 206
    return-void

    .line 211
    :cond_2
    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mPrevScrollY:I

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public resetScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iput v1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->mCurrentScrollY:I

    .line 203
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$AppListScroller;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->scrollToPosition(I)V

    .line 201
    return-void
.end method
