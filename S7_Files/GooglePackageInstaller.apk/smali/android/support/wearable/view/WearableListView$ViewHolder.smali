.class public Landroid/support/wearable/view/WearableListView$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 1348
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1347
    return-void
.end method


# virtual methods
.method protected onCenterProximity(ZZ)V
    .locals 2
    .param p1, "isCentralItem"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 1360
    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    if-nez v1, :cond_0

    .line 1361
    return-void

    .line 1363
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;

    .line 1364
    .local v0, "item":Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;
    if-eqz p1, :cond_1

    .line 1365
    invoke-interface {v0, p2}, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;->onCenterPosition(Z)V

    .line 1359
    :goto_0
    return-void

    .line 1367
    :cond_1
    invoke-interface {v0, p2}, Landroid/support/wearable/view/WearableListView$OnCenterProximityListener;->onNonCenterPosition(Z)V

    goto :goto_0
.end method
