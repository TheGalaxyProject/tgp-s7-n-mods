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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/wearable/view/WearableListView$LayoutManager;

    .prologue
    .line 1308
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1309
    iput-object p2, p0, Landroid/support/wearable/view/WearableListView$SmoothScroller;->mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;

    .line 1307
    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 2
    .param p1, "viewStart"    # I
    .param p2, "viewEnd"    # I
    .param p3, "boxStart"    # I
    .param p4, "boxEnd"    # I
    .param p5, "snapPreference"    # I

    .prologue
    .line 1327
    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1320
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 3
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 1332
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$SmoothScroller;->mLayoutManager:Landroid/support/wearable/view/WearableListView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView$LayoutManager;->getFirstPosition()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1333
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 1335
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 1314
    invoke-super {p0}, Landroid/support/v7/widget/LinearSmoothScroller;->onStart()V

    .line 1313
    return-void
.end method
