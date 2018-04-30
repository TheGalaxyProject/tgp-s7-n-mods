.class Landroid/support/wearable/view/WearableListView$LayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutManager"
.end annotation


# instance fields
.field private mAbsoluteScroll:I

.field private mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mFirstPosition:I

.field private mPushFirstHigher:Z

.field private mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

.field private mUseOldViewTop:Z

.field private mWasZoomedIn:Z

.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method static synthetic -wrap0(Landroid/support/wearable/view/WearableListView$LayoutManager;)I
    .locals 1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 1

    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$LayoutManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;)V

    return-void
.end method

.method private findCenterViewIndex()I
    .locals 10

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v7, -0x1

    const v3, 0x7fffffff

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->-wrap1(Landroid/view/View;)I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v8

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->-wrap1(Landroid/view/View;)I

    move-result v9

    add-int v2, v8, v9

    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v3, :cond_0

    move v3, v5

    move v7, v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Can\'t find central view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    return v7
.end method

.method private measureThirdView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;I)V

    return-void
.end method

.method private measureView(Landroid/view/View;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollVertically()Z

    move-result v5

    invoke-static {v3, v4, p2, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureZoomView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;I)V

    return-void
.end method

.method private performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->-get2(Landroid/support/wearable/view/WearableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, p3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutOneChild(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    iput-boolean v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->-get3(Landroid/support/wearable/view/WearableListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutMultipleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    goto :goto_0
.end method

.method private performLayoutMultipleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 8

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v6, v1, :cond_0

    if-lt p4, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    invoke-direct {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    iget-object v6, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v6}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v6

    add-int v0, p4, v6

    invoke-virtual {v5, v3, p4, v4, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    move p4, v0

    goto :goto_0
.end method

.method private performLayoutOneChild(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureZoomView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v6, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v5, :cond_2

    :cond_0
    if-nez v2, :cond_1

    move v1, v3

    const/4 v2, 0x1

    :cond_1
    move v4, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-le v3, v4, :cond_4

    invoke-virtual {p0, v3, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v1, -0x1

    :goto_2
    if-ltz v3, :cond_5

    invoke-virtual {p0, v3, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_7

    iput v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    :cond_6
    :goto_3
    return-void

    :cond_7
    if-lez v1, :cond_6

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_3
.end method

.method private setAbsoluteScroll(I)V
    .locals 3

    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->-get4(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    invoke-interface {v0, v2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onAbsoluteScrollChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getItemCount()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getDefaultSmoothScroller(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .locals 2

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/wearable/view/WearableListView$SmoothScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/support/wearable/view/WearableListView$SmoothScroller;-><init>(Landroid/content/Context;Landroid/support/wearable/view/WearableListView$LayoutManager;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    iget v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 12

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v9

    sub-int v6, v8, v9

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v9}, Landroid/support/wearable/view/WearableListView;->-get0(Landroid/support/wearable/view/WearableListView;)I

    move-result v9

    add-int v5, v8, v9

    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_9

    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-ne v7, v10, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    :goto_0
    add-int v8, v4, v3

    if-lt v8, v0, :cond_0

    sub-int v8, v4, v3

    if-ltz v8, :cond_1

    :cond_0
    add-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-eq v7, v10, :cond_2

    add-int/2addr v4, v3

    :cond_1
    :goto_1
    if-ne v7, v10, :cond_4

    invoke-virtual {p0, v11}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    :goto_2
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lt v8, v2, :cond_8

    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lez v8, :cond_8

    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_2

    :cond_2
    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    if-eq v7, v10, :cond_3

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    if-nez v8, :cond_5

    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v8

    if-le v5, v8, :cond_6

    if-lez v7, :cond_6

    add-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v8

    sub-int/2addr v5, v8

    goto :goto_3

    :cond_6
    if-nez v7, :cond_7

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    if-le v5, v8, :cond_7

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v5

    :cond_7
    iput v7, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    :cond_8
    :goto_4
    invoke-direct {p0, p1, p2, v6, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_a

    invoke-direct {p0, v11}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    :goto_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    iput-boolean v11, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    return-void

    :cond_9
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v9}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v9

    sub-int v5, v8, v9

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v9}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v10}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    goto :goto_5
.end method

.method public scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->requestLayout()V

    return-void

    :cond_0
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 18

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x0

    return v15

    :cond_0
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v9, v15, v16

    if-gez p1, :cond_4

    :goto_0
    move/from16 v0, p1

    if-le v11, v0, :cond_2

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    if-lez v15, :cond_1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    neg-int v15, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v15, v11, p1

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    if-lez v15, :cond_2

    move/from16 v0, p1

    if-le v11, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v15

    sub-int v12, v2, v15

    invoke-virtual {v14, v6, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-get5(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v7

    :goto_1
    move/from16 v0, p1

    neg-int v15, v0

    add-int/2addr v15, v11

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v16, v7, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    add-int/2addr v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    return v11

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-wrap3(Landroid/support/wearable/view/WearableListView;)I

    move-result v7

    goto :goto_1

    :cond_4
    if-lez p1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    :goto_3
    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v8

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v15, p1, v11

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    neg-int v10, v15

    sub-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v15

    add-int v2, v12, v15

    invoke-virtual {v14, v6, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move/from16 v0, p1

    neg-int v15, v0

    add-int/2addr v15, v11

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v17

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    goto/16 :goto_2
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getDefaultSmoothScroller(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
