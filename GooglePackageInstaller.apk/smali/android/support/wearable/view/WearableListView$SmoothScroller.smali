.class Landroid/support/wearable/view/WearableListView$SmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothScroller"
.end annotation


# instance fields
.field private final mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/wearable/view/WearableListView$LayoutManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/wearable/view/WearableListView$SmoothScroller;->mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 2

    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$SmoothScroller;->mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStart()V

    return-void
.end method
