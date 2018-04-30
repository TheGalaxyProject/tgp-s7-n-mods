.class Landroid/support/wearable/view/WearableListView$1;
.super Ljava/lang/Object;
.source "WearableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/wearable/view/WearableListView;
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

    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v1, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    iget-object v2, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v2}, Landroid/support/wearable/view/WearableListView;->-wrap0(Landroid/support/wearable/view/WearableListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/WearableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableListView;->-set1(Landroid/support/wearable/view/WearableListView;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$1;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-static {v0}, Landroid/support/wearable/view/WearableListView;->-get6(Landroid/support/wearable/view/WearableListView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "WearableListView"

    const-string/jumbo v1, "mPressedRunnable: the children were removed, skipping."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
