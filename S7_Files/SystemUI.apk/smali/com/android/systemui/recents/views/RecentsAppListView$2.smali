.class Lcom/android/systemui/recents/views/RecentsAppListView$2;
.super Ljava/lang/Object;
.source "RecentsAppListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsAppListView;->bindViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsAppListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsAppListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsAppListView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsAppListView$2;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$2;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->smoothScrollToPosition(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsAppListView$2;->this$0:Lcom/android/systemui/recents/views/RecentsAppListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/views/RecentsAppListView;->mGoToTopScrollRequested:Z

    .line 111
    return-void
.end method
