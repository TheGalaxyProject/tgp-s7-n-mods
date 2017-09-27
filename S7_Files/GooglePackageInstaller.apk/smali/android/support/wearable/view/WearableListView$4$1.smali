.class Landroid/support/wearable/view/WearableListView$4$1;
.super Ljava/lang/Object;
.source "WearableListView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/wearable/view/WearableListView$4;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/wearable/view/WearableListView$4;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView$4;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/wearable/view/WearableListView$4;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$4$1;->this$1:Landroid/support/wearable/view/WearableListView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4$1;->this$1:Landroid/support/wearable/view/WearableListView$4;

    iget-object v0, v0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/WearableListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 168
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4$1;->this$1:Landroid/support/wearable/view/WearableListView$4;

    iget-object v0, v0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$4$1;->this$1:Landroid/support/wearable/view/WearableListView$4;

    iget-object v0, v0, Landroid/support/wearable/view/WearableListView$4;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-virtual {v0}, Landroid/support/wearable/view/WearableListView;->animateToCenter()V

    .line 166
    :cond_0
    return-void
.end method
