.class Landroid/support/wearable/view/WearableListView$5;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "WearableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/WearableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v2}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Landroid/support/wearable/view/WearableListView;->-wrap4(Landroid/support/wearable/view/WearableListView;Landroid/view/MotionEvent;I)V

    :cond_0
    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->-get4(Landroid/support/wearable/view/WearableListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/WearableListView$OnScrollListener;

    invoke-interface {v0, p2}, Landroid/support/wearable/view/WearableListView$OnScrollListener;->onScrollStateChanged(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0, p3}, Landroid/support/wearable/view/WearableListView;->-wrap6(Landroid/support/wearable/view/WearableListView;I)V

    return-void
.end method
