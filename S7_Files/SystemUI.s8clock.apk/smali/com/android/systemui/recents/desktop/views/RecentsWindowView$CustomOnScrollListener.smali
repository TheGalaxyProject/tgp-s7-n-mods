.class Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "RecentsWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 175
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-static {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 168
    return-void
.end method
