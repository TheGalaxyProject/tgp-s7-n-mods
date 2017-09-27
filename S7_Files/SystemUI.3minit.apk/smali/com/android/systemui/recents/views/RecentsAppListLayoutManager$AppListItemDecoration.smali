.class Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppListItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;->this$0:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->isHeaderPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget v0, Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;->INDEX_HEADER_RECOMMENDATION_APPS:I

    if-ne p2, v0, :cond_0

    .line 89
    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->-get0()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetTop:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 93
    :goto_0
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 94
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 86
    :goto_1
    return-void

    .line 91
    :cond_0
    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 96
    :cond_1
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 97
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 98
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 99
    invoke-static {}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->-get0()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mOffsetGap:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method
