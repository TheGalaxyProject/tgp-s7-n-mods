.class Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "PermissionsFrameFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->onCreateAdapter(Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/widget/RecyclerView$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

.field final synthetic val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field final synthetic val$emptyView:Landroid/widget/TextView;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;Landroid/widget/TextView;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;
    .param p2, "val$emptyView"    # Landroid/widget/TextView;
    .param p3, "val$recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 152
    .local p4, "val$adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<*>;"
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

    iput-object p2, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->val$emptyView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private checkEmpty()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 169
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

    invoke-static {v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->-wrap0(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;)Z

    move-result v0

    .line 170
    .local v0, "isEmpty":Z
    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->val$emptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->val$adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 173
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

    invoke-static {v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->-get0(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->this$0:Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;

    invoke-static {v1}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;->-get0(Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    .line 168
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 170
    goto :goto_0

    :cond_2
    move v3, v2

    .line 172
    goto :goto_1
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->checkEmpty()V

    .line 154
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->checkEmpty()V

    .line 159
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/packageinstaller/permission/ui/television/PermissionsFrameFragment$2;->checkEmpty()V

    .line 164
    return-void
.end method
