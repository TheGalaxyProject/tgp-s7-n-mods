.class Landroid/support/wearable/view/WearableListView$4;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "WearableListView.java"


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
    .param p1, "this$0"    # Landroid/support/wearable/view/WearableListView;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    new-instance v1, Landroid/support/wearable/view/WearableListView$4$1;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/WearableListView$4$1;-><init>(Landroid/support/wearable/view/WearableListView$4;)V

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/WearableListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 162
    return-void
.end method
