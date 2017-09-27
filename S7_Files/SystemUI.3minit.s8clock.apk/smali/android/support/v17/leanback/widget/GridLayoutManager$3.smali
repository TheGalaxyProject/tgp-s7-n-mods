.class Landroid/support/v17/leanback/widget/GridLayoutManager$3;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/Grid$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 1474
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .locals 16
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "rowIndex"    # I
    .param p5, "edge"    # I

    .prologue
    move-object/from16 v4, p1

    .line 1544
    check-cast v4, Landroid/view/View;

    .line 1546
    .local v4, "v":Landroid/view/View;
    const/high16 v2, -0x80000000

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    const v2, 0x7fffffff

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 1547
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingLow()I

    move-result p5

    .line 1551
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v14, 0x0

    .line 1552
    .local v14, "edgeIsMin":Z
    :goto_1
    if-eqz v14, :cond_8

    .line 1553
    move/from16 v5, p5

    .line 1554
    .local v5, "start":I
    add-int v6, p5, p3

    .line 1559
    .local v6, "end":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v0, p4

    invoke-static {v2, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap3(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get12(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v3

    sub-int v7, v2, v3

    .line 1560
    .local v7, "startSecondary":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v3, p4

    invoke-static/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap11(Landroid/support/v17/leanback/widget/GridLayoutManager;ILandroid/view/View;III)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap16(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 1574
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap15(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 1581
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1582
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    .line 1584
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 1586
    .local v15, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get1(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v9

    .line 1587
    if-nez v15, :cond_b

    const-wide/16 v12, -0x1

    :goto_5
    move-object v10, v4

    move/from16 v11, p2

    .line 1586
    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1543
    .end local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_5
    return-void

    .line 1548
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "startSecondary":I
    .end local v14    # "edgeIsMin":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    .line 1549
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get15(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/WindowAlignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingHigh()I

    move-result v3

    .line 1548
    sub-int p5, v2, v3

    goto/16 :goto_0

    .line 1551
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 1556
    .restart local v14    # "edgeIsMin":Z
    :cond_8
    sub-int v5, p5, p3

    .line 1557
    .restart local v5    # "start":I
    move/from16 v6, p5

    .restart local v6    # "end":I
    goto/16 :goto_2

    .line 1571
    .restart local v7    # "startSecondary":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap15(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto/16 :goto_3

    .line 1578
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap16(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto/16 :goto_4

    .line 1587
    .restart local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_b
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v12

    goto :goto_5
.end method

.method public createItem(IZ[Ljava/lang/Object;)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "append"    # Z
    .param p3, "item"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1485
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1487
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1488
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get0(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/BaseGridView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1489
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-static {v4, v3, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap9(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V

    .line 1491
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1493
    if-eqz p2, :cond_4

    .line 1494
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    .line 1499
    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get2(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1500
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get2(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1503
    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1504
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    .line 1506
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v2, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap4(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 1507
    .local v1, "subindex":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1514
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get14(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 1515
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get9(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1516
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    .line 1535
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap12(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)V

    .line 1537
    .end local v1    # "subindex":I
    :cond_3
    aput-object v2, p3, v6

    .line 1538
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get8(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    :goto_2
    return v4

    .line 1496
    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1518
    .restart local v1    # "subindex":I
    :cond_5
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get4(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1524
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get6(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne p1, v4, :cond_6

    .line 1525
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get14(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 1526
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto :goto_1

    .line 1527
    :cond_6
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get6(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get3(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 1528
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    .line 1527
    if-eqz v4, :cond_2

    .line 1529
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set0(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    .line 1530
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set4(Landroid/support/v17/leanback/widget/GridLayoutManager;I)I

    .line 1531
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-set1(Landroid/support/v17/leanback/widget/GridLayoutManager;Z)Z

    .line 1532
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap10(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    goto :goto_1

    .line 1539
    .end local v1    # "subindex":I
    :cond_7
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get13(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getEdge(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get11(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap5(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I

    move-result v0

    return v0

    .line 1608
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap6(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getSize(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-wrap7(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1594
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1595
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get5(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get10(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1592
    :goto_0
    return-void

    .line 1598
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$3;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get10(Landroid/support/v17/leanback/widget/GridLayoutManager;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method
