.class Lcom/android/setupwizardlib/items/ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ItemViewHolder.java"

# interfaces
.implements Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;


# instance fields
.field private mIsEnabled:Z

.field private mItem:Lcom/android/setupwizardlib/items/IItem;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getItem()Lcom/android/setupwizardlib/items/IItem;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mItem:Lcom/android/setupwizardlib/items/IItem;

    return-object v0
.end method

.method public isDividerAllowedAbove()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mIsEnabled:Z

    return v0
.end method

.method public isDividerAllowedBelow()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mIsEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mIsEnabled:Z

    .line 46
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    return-void
.end method

.method public setItem(Lcom/android/setupwizardlib/items/IItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/setupwizardlib/items/IItem;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ItemViewHolder;->mItem:Lcom/android/setupwizardlib/items/IItem;

    .line 51
    return-void
.end method
