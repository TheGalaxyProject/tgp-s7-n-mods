.class Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestrictedArrayItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/RestrictedDropDownPreference;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/settings/notification/RestrictedDropDownPreference;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    .line 200
    const v0, 0x7f0402a1

    const v1, 0x1020014

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 199
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 206
    .local v4, "rootView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 207
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-static {v6, v0}, Lcom/android/settings/notification/RestrictedDropDownPreference;->-wrap1(Lcom/android/settings/notification/RestrictedDropDownPreference;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 208
    .local v1, "isEntryRestricted":Z
    const v6, 0x1020014

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 209
    .local v5, "text":Landroid/widget/CheckedTextView;
    if-eqz v5, :cond_0

    .line 210
    if-eqz v1, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 212
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    iget-object v9, p0, Lcom/android/settings/notification/RestrictedDropDownPreference$RestrictedArrayItemAdapter;->this$0:Lcom/android/settings/notification/RestrictedDropDownPreference;

    invoke-virtual {v9}, Lcom/android/settings/notification/RestrictedDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/settings/notification/RestrictedDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 213
    .local v2, "mSelectedIndex":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 214
    if-ne p1, v2, :cond_4

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 216
    :cond_1
    const v6, 0x7f110456

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 217
    .local v3, "restrictedIcon":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 218
    if-eqz v1, :cond_5

    :goto_2
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_2
    return-object v4

    .end local v2    # "mSelectedIndex":I
    .end local v3    # "restrictedIcon":Landroid/view/View;
    :cond_3
    move v6, v8

    .line 210
    goto :goto_0

    .restart local v2    # "mSelectedIndex":I
    :cond_4
    move v8, v7

    .line 214
    goto :goto_1

    .line 218
    .restart local v3    # "restrictedIcon":Landroid/view/View;
    :cond_5
    const/16 v7, 0x8

    goto :goto_2
.end method
