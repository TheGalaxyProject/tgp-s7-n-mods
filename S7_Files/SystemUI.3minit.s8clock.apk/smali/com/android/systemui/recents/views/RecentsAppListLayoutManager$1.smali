.class Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanGroupIndex(II)I
    .locals 1
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public getSpanIndex(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    .line 54
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public invalidateSpanIndexCache()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 69
    return-void
.end method
