.class Landroid/support/v17/leanback/widget/GridLayoutManager$4;
.super Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;
    .param p2, "this$0_1"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 2286
    iput-object p2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 7
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2289
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 2290
    const/4 v3, 0x0

    return-object v3

    .line 2292
    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v5, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 2295
    .local v1, "firstChildPos":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get11(Landroid/support/v17/leanback/widget/GridLayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-le p1, v1, :cond_2

    .line 2297
    .local v2, "isStart":Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    const/4 v0, -0x1

    .line 2298
    .local v0, "direction":I
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$4;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-static {v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->-get8(Landroid/support/v17/leanback/widget/GridLayoutManager;)I

    move-result v3

    if-nez v3, :cond_5

    .line 2299
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v3, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3

    .end local v0    # "direction":I
    .end local v2    # "isStart":Z
    :cond_2
    move v2, v3

    .line 2295
    goto :goto_0

    .line 2296
    :cond_3
    if-lt p1, v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 2297
    .restart local v2    # "isStart":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "direction":I
    goto :goto_1

    .line 2301
    :cond_5
    new-instance v3, Landroid/graphics/PointF;

    int-to-float v4, v0

    invoke-direct {v3, v6, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method
