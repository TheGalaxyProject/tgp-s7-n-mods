.class Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;
.super Ljava/lang/Object;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

.field final synthetic val$viewHolder:Lcom/android/setupwizardlib/items/ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;Lcom/android/setupwizardlib/items/ItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    .param p2, "val$viewHolder"    # Lcom/android/setupwizardlib/items/ItemViewHolder;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;->this$0:Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    iput-object p2, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;->val$viewHolder:Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/items/ItemViewHolder;->getItem()Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 105
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    iget-object v1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;->this$0:Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-static {v1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->-get0(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;)Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;->this$0:Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-static {v1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->-get0(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;)Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;->onItemSelected(Lcom/android/setupwizardlib/items/IItem;)V

    .line 103
    :cond_0
    return-void
.end method
