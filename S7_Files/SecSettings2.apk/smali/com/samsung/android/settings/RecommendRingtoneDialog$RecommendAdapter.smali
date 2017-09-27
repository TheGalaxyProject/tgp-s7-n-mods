.class public Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendRingtoneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/RecommendRingtoneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecommendAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/RecommendRingtoneDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/RecommendRingtoneDialog;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 176
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 181
    if-eqz p2, :cond_1

    move-object v3, p2

    .line 182
    .local v3, "view":Landroid/view/View;
    :goto_0
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 183
    .local v1, "text1":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 184
    .local v2, "text2":Landroid/widget/TextView;
    const v5, 0x1020019

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 186
    .local v0, "button":Landroid/widget/RadioButton;
    if-nez p1, :cond_2

    .line 187
    const v5, 0x7f0b09f7

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 188
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get5(Lcom/samsung/android/settings/RecommendRingtoneDialog;)I

    move-result v5

    if-ne p1, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 196
    return-object v3

    .line 181
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v1    # "text1":Landroid/widget/TextView;
    .end local v2    # "text2":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/RecommendRingtoneDialog$RecommendAdapter;->this$0:Lcom/samsung/android/settings/RecommendRingtoneDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/RecommendRingtoneDialog;->-get3(Lcom/samsung/android/settings/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040230

    invoke-virtual {v5, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 190
    .restart local v0    # "button":Landroid/widget/RadioButton;
    .restart local v1    # "text1":Landroid/widget/TextView;
    .restart local v2    # "text2":Landroid/widget/TextView;
    .restart local v3    # "view":Landroid/view/View;
    :cond_2
    const v5, 0x7f0b09f8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 191
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    const v5, 0x7f0b09f9

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
