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
    .param p1, "this$0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 823
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 830
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    .line 823
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/wearable/view/WearableListView;Landroid/support/wearable/view/WearableListView$LayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;-><init>(Landroid/support/wearable/view/WearableListView;)V

    return-void
.end method

.method private findCenterViewIndex()I
    .locals 10

    .prologue
    .line 845
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v4

    .line 846
    .local v4, "count":I
    const/4 v7, -0x1

    .line 847
    .local v7, "index":I
    const v3, 0x7fffffff

    .line 848
    .local v3, "closest":I
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->-wrap1(Landroid/view/View;)I

    move-result v0

    .line 849
    .local v0, "centerY":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 850
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 851
    .local v1, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getTop()I

    move-result v8

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->-wrap1(Landroid/view/View;)I

    move-result v9

    add-int v2, v8, v9

    .line 852
    .local v2, "childCenterY":I
    sub-int v8, v0, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 853
    .local v5, "distance":I
    if-ge v5, v3, :cond_0

    .line 854
    move v3, v5

    .line 855
    move v7, v6

    .line 849
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCenterY":I
    .end local v5    # "distance":I
    :cond_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 859
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Can\'t find central view."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 861
    :cond_2
    return v7
.end method

.method private measureThirdView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;I)V

    .line 1019
    return-void
.end method

.method private measureView(Landroid/view/View;I)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "height"    # I

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1010
    .local v1, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v3

    .line 1011
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

    .line 1012
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 1010
    invoke-static {v3, v4, v5, v6}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v2

    .line 1013
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v3

    .line 1014
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    .line 1015
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->canScrollVertically()Z

    move-result v5

    .line 1013
    invoke-static {v3, v4, p2, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildMeasureSpec(IIIZ)I

    move-result v0

    .line 1016
    .local v0, "heightSpec":I
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1008
    return-void
.end method

.method private measureZoomView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1024
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureView(Landroid/view/View;I)V

    .line 1023
    return-void
.end method

.method private performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "parentBottom"    # I
    .param p4, "top"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 958
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 960
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->-get2(Landroid/support/wearable/view/WearableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 961
    invoke-direct {p0, p1, p3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutOneChild(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 962
    iput-boolean v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    .line 968
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 969
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v1}, Landroid/support/wearable/view/WearableListView;->-get3(Landroid/support/wearable/view/WearableListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->post(Ljava/lang/Runnable;)Z

    .line 957
    :cond_0
    return-void

    .line 964
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutMultipleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 965
    iput-boolean v1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    goto :goto_0
.end method

.method private performLayoutMultipleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 8
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "parentBottom"    # I
    .param p4, "top"    # I

    .prologue
    .line 984
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v3

    .line 985
    .local v3, "left":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 986
    .local v4, "right":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 989
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v6

    add-int/2addr v6, v2

    if-ge v6, v1, :cond_0

    .line 990
    if-lt p4, p3, :cond_1

    .line 982
    :cond_0
    return-void

    .line 993
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 994
    .local v5, "v":Landroid/view/View;
    invoke-virtual {p0, v5, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 995
    invoke-direct {p0, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    .line 996
    iget-object v6, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v6}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v6

    add-int v0, p4, v6

    .line 997
    .local v0, "bottom":I
    invoke-virtual {v5, v3, p4, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 989
    add-int/lit8 v2, v2, 0x1

    move p4, v0

    goto :goto_0
.end method

.method private performLayoutOneChild(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "parentBottom"    # I

    .prologue
    .line 974
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 975
    .local v0, "right":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    .line 976
    .local v1, "v":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 977
    invoke-direct {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureZoomView(Landroid/view/View;)V

    .line 978
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/view/View;->layout(IIII)V

    .line 973
    return-void
.end method

.method private recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 10
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    const/4 v9, 0x0

    .line 1151
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    .line 1152
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v6

    .line 1155
    .local v6, "parentWidth":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v5

    .line 1156
    .local v5, "parentHeight":I
    const/4 v2, 0x0

    .line 1157
    .local v2, "foundFirst":Z
    const/4 v1, 0x0

    .line 1158
    .local v1, "first":I
    const/4 v4, 0x0

    .line 1159
    .local v4, "last":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1160
    invoke-virtual {p0, v3}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1161
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v6, :cond_2

    .line 1162
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ltz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    if-gt v8, v5, :cond_2

    .line 1163
    :cond_0
    if-nez v2, :cond_1

    .line 1164
    move v1, v3

    .line 1165
    const/4 v2, 0x1

    .line 1167
    :cond_1
    move v4, v3

    .line 1159
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1170
    .end local v7    # "v":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v0, -0x1

    :goto_1
    if-le v3, v4, :cond_4

    .line 1171
    invoke-virtual {p0, v3, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1170
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1173
    :cond_4
    add-int/lit8 v3, v1, -0x1

    :goto_2
    if-ltz v3, :cond_5

    .line 1174
    invoke-virtual {p0, v3, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1173
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1176
    :cond_5
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_7

    .line 1177
    iput v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1150
    :cond_6
    :goto_3
    return-void

    .line 1178
    :cond_7
    if-lez v1, :cond_6

    .line 1179
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 1180
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_3
.end method

.method private setAbsoluteScroll(I)V
    .locals 3
    .param p1, "absoluteScroll"    # I

    .prologue
    .line 1002
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    .line 1003
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->-get4(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    .line 1004
    .local v0, "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    iget v2, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    invoke-interface {v0, v2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onAbsoluteScrollChange(I)V

    goto :goto_0

    .line 1001
    .end local v0    # "listener":Landroid/support/wearable/view/WearableListView$OnScrollListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1036
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

    .prologue
    .line 1029
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    .line 1030
    const/4 v2, -0x2

    .line 1029
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getDefaultSmoothScroller(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 1133
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Landroid/support/wearable/view/WearableListView$SmoothScroller;

    .line 1135
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1134
    invoke-direct {v0, v1, p0}, Landroid/support/wearable/view/WearableListView$SmoothScroller;-><init>(Landroid/content/Context;Landroid/support/wearable/view/WearableListView$LayoutManager;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 1137
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mDefaultSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    return-object v0
.end method

.method public getFirstPosition()I
    .locals 1

    .prologue
    .line 1185
    iget v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    return v0
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 1191
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->removeAllViews()V

    .line 1190
    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 12
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 866
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingBottom()I

    move-result v9

    sub-int v6, v8, v9

    .line 869
    .local v6, "parentBottom":I
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v9}, Landroid/support/wearable/view/WearableListView;->-get0(Landroid/support/wearable/view/WearableListView;)I

    move-result v9

    add-int v5, v8, v9

    .line 872
    .local v5, "oldTop":I
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 876
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v4

    .line 877
    .local v4, "index":I
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 878
    .local v7, "position":I
    if-ne v7, v10, :cond_1

    .line 881
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    add-int v8, v4, v3

    if-lt v8, v0, :cond_0

    sub-int v8, v4, v3

    if-ltz v8, :cond_1

    .line 882
    :cond_0
    add-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 883
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 884
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 885
    if-eq v7, v10, :cond_2

    .line 886
    add-int/2addr v4, v3

    .line 900
    .end local v0    # "N":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    if-ne v7, v10, :cond_4

    .line 903
    invoke-virtual {p0, v11}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    .line 904
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    .line 907
    .local v2, "count":I
    :goto_2
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lt v8, v2, :cond_8

    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    if-lez v8, :cond_8

    .line 908
    iget v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    goto :goto_2

    .line 890
    .end local v2    # "count":I
    .restart local v0    # "N":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    :cond_2
    sub-int v8, v4, v3

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 891
    if-eqz v1, :cond_3

    .line 892
    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 893
    if-eq v7, v10, :cond_3

    .line 894
    sub-int/2addr v4, v3

    .line 895
    goto :goto_1

    .line 881
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 913
    .end local v0    # "N":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    :cond_4
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mWasZoomedIn:Z

    if-nez v8, :cond_5

    .line 920
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v5

    .line 922
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingTop()I

    move-result v8

    if-le v5, v8, :cond_6

    if-lez v7, :cond_6

    .line 923
    add-int/lit8 v7, v7, -0x1

    .line 924
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v8}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v8

    sub-int/2addr v5, v8

    goto :goto_3

    .line 926
    :cond_6
    if-nez v7, :cond_7

    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    if-le v5, v8, :cond_7

    .line 930
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v5

    .line 932
    :cond_7
    iput v7, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 940
    .end local v4    # "index":I
    .end local v7    # "position":I
    :cond_8
    :goto_4
    invoke-direct {p0, p1, p2, v6, v5}, Landroid/support/wearable/view/WearableListView$LayoutManager;->performLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 944
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v8

    if-nez v8, :cond_a

    .line 945
    invoke-direct {p0, v11}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    .line 952
    :goto_5
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 953
    iput-boolean v11, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 865
    return-void

    .line 934
    :cond_9
    iget-boolean v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    if-eqz v8, :cond_8

    .line 937
    iget-object v8, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v8}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v9}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v9

    sub-int v5, v8, v9

    goto :goto_4

    .line 947
    :cond_a
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->findCenterViewIndex()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 948
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v9}, Landroid/support/wearable/view/WearableListView;->getCentralViewTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v9

    .line 949
    iget-object v10, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v10}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v10

    .line 948
    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    goto :goto_5
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1113
    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mUseOldViewTop:Z

    .line 1114
    if-lez p1, :cond_0

    .line 1115
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 1121
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->requestLayout()V

    .line 1112
    return-void

    .line 1118
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1119
    iput-boolean v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    goto :goto_0
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 18
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    if-nez v15, :cond_0

    .line 1043
    const/4 v15, 0x0

    return v15

    .line 1045
    :cond_0
    const/4 v11, 0x0

    .line 1046
    .local v11, "scrolled":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingLeft()I

    move-result v6

    .line 1047
    .local v6, "left":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getPaddingRight()I

    move-result v16

    sub-int v9, v15, v16

    .line 1048
    .local v9, "right":I
    if-gez p1, :cond_4

    .line 1049
    :goto_0
    move/from16 v0, p1

    if-le v11, v0, :cond_2

    .line 1050
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1051
    .local v13, "topView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    if-lez v15, :cond_1

    .line 1052
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    neg-int v15, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1053
    .local v5, "hangingTop":I
    sub-int v15, v11, p1

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1054
    .local v10, "scrollBy":I
    sub-int/2addr v11, v10

    .line 1055
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    if-lez v15, :cond_2

    move/from16 v0, p1

    if-le v11, v0, :cond_2

    .line 1057
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    .line 1059
    .local v14, "v":Landroid/view/View;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 1060
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    .line 1061
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1062
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v15

    sub-int v12, v2, v15

    .line 1063
    .local v12, "top":I
    invoke-virtual {v14, v6, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 1068
    .end local v2    # "bottom":I
    .end local v5    # "hangingTop":I
    .end local v10    # "scrollBy":I
    .end local v12    # "top":I
    .end local v14    # "v":Landroid/view/View;
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mPushFirstHigher:Z

    .line 1069
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-get5(Landroid/support/wearable/view/WearableListView;)Landroid/support/wearable/view/WearableListView$OnOverScrollListener;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v7

    .line 1071
    .local v7, "maxScroll":I
    :goto_1
    move/from16 v0, p1

    neg-int v15, v0

    add-int/2addr v15, v11

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v16, v7, v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1072
    .restart local v10    # "scrollBy":I
    sub-int/2addr v11, v10

    .line 1073
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1106
    .end local v7    # "maxScroll":I
    .end local v10    # "scrollBy":I
    .end local v13    # "topView":Landroid/view/View;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->recycleViewsOutOfBounds(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1107
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mAbsoluteScroll:I

    add-int/2addr v15, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->setAbsoluteScroll(I)V

    .line 1108
    return v11

    .line 1070
    .restart local v13    # "topView":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-wrap3(Landroid/support/wearable/view/WearableListView;)I

    move-result v7

    .restart local v7    # "maxScroll":I
    goto :goto_1

    .line 1077
    .end local v7    # "maxScroll":I
    .end local v13    # "topView":Landroid/view/View;
    :cond_4
    if-lez p1, :cond_2

    .line 1078
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getHeight()I

    move-result v8

    .line 1079
    .local v8, "parentHeight":I
    :goto_3
    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    .line 1080
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1081
    .local v3, "bottomView":Landroid/view/View;
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

    .line 1083
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v15

    sub-int/2addr v15, v8

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1084
    .local v4, "hangingBottom":I
    sub-int v15, p1, v11

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v15

    neg-int v10, v15

    .line 1085
    .restart local v10    # "scrollBy":I
    sub-int/2addr v11, v10

    .line 1086
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    .line 1087
    move/from16 v0, p1

    if-ge v11, v0, :cond_2

    .line 1088
    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mFirstPosition:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v14

    .line 1089
    .restart local v14    # "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildCount()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 1090
    .restart local v12    # "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->addView(Landroid/view/View;)V

    .line 1091
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/support/wearable/view/WearableListView$LayoutManager;->measureThirdView(Landroid/view/View;)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/wearable/view/WearableListView$LayoutManager;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v15}, Landroid/support/wearable/view/WearableListView;->-wrap2(Landroid/support/wearable/view/WearableListView;)I

    move-result v15

    add-int v2, v12, v15

    .line 1093
    .restart local v2    # "bottom":I
    invoke-virtual {v14, v6, v12, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 1099
    .end local v2    # "bottom":I
    .end local v4    # "hangingBottom":I
    .end local v10    # "scrollBy":I
    .end local v12    # "top":I
    .end local v14    # "v":Landroid/view/View;
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

    .line 1100
    .restart local v10    # "scrollBy":I
    sub-int/2addr v11, v10

    .line 1101
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/wearable/view/WearableListView$LayoutManager;->offsetChildrenVertical(I)V

    goto/16 :goto_2
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 1142
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    .line 1143
    .local v0, "scroller":Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    if-nez v0, :cond_0

    .line 1144
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getDefaultSmoothScroller(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    .line 1146
    :cond_0
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1147
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 1141
    return-void
.end method
