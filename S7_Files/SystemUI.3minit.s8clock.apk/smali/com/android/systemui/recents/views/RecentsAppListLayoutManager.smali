.class public Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "RecentsAppListLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;,
        Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;,
        Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;
    }
.end annotation


# static fields
.field private static sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;


# instance fields
.field mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

.field mContext:Landroid/content/Context;

.field mItemDecoration:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field mView:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/systemui/recents/views/RecentsAppListView;

    .prologue
    .line 29
    invoke-static {p1}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->initAttr(Landroid/content/Context;)Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mSpanCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 48
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$1;-><init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mView:Lcom/android/systemui/recents/views/RecentsAppListView;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 34
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;-><init>(Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemDecoration:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mItemDecoration:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$AppListItemDecoration;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 28
    return-void
.end method

.method public static getAttr()Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    return-object v0
.end method

.method public static initAttr(Landroid/content/Context;)Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    .line 21
    sget-object v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    return-object v0
.end method


# virtual methods
.method public bindAdapter(Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->mAdapter:Lcom/android/systemui/recents/views/RecentsAppListViewAdapter;

    .line 38
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->getSpanCount()I

    move-result v0

    sget-object v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v1, v1, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mSpanCount:I

    if-eq v0, v1, :cond_0

    .line 44
    sget-object v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->sAttr:Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;

    iget v0, v0, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager$Attributes;->mSpanCount:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsAppListLayoutManager;->setSpanCount(I)V

    .line 42
    :cond_0
    return-void
.end method
