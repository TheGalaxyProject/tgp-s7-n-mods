.class final Lcom/android/systemui/statusbar/car/UserGridView$Adapter;
.super Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;
.source "UserGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/UserGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/UserGridView;
    .param p2, "controller"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    .line 132
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 131
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 137
    if-nez p2, :cond_0

    .line 138
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 139
    const-string/jumbo v5, "layout_inflater"

    .line 138
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 140
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040025

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getItem(I)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v3

    .line 144
    .local v3, "record":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    const v4, 0x7f1300d4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    .local v2, "nameView":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 146
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getName(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    invoke-virtual {p2, v4}, Landroid/view/View;->setActivated(Z)V

    .line 152
    :goto_0
    const v4, 0x7f1300d3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 154
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/car/UserGridView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;->getDrawable(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_1
    return-object p2

    .line 149
    .end local v0    # "iconView":Landroid/widget/ImageView;
    :cond_2
    const-string/jumbo v4, "Unknown"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    .restart local v0    # "iconView":Landroid/widget/ImageView;
    :cond_3
    iget-object v4, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->picture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method
