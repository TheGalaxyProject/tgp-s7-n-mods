.class public Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V
    .locals 0
    .param p1, "appItemInfo"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->setSelected(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    .line 220
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 221
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 219
    return-void
.end method

.method private createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 261
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040168

    .line 262
    const/4 v4, 0x0

    .line 261
    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "row":Landroid/view/View;
    const v2, 0x7f110457

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, "header":Landroid/view/View;
    new-instance v2, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter$1;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-object v1
.end method

.method private setSelected(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V
    .locals 1
    .param p1, "appItemInfo"    # Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->savePressActionApp(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f110457

    const/high16 v6, 0x3f800000    # 1.0f

    .line 227
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    .line 229
    .local v1, "appItemInfo":Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 231
    .local v3, "row":Landroid/view/View;
    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    const v4, 0x7f110147

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 234
    .local v2, "appName":Landroid/widget/TextView;
    const v4, 0x7f110146

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mLabel:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    iget-object v4, v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v4}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-get3(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;

    iget-boolean v4, v4, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListItem;->mIsEnabled:Z

    if-eqz v4, :cond_3

    .line 242
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 244
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    :goto_1
    return-object v3

    .line 229
    .end local v0    # "appIcon":Landroid/widget/ImageView;
    .end local v2    # "appName":Landroid/widget/TextView;
    .end local v3    # "row":Landroid/view/View;
    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppListAdapter;->createAppListInfoRow(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    .line 246
    .restart local v0    # "appIcon":Landroid/widget/ImageView;
    .restart local v2    # "appName":Landroid/widget/TextView;
    .restart local v3    # "row":Landroid/view/View;
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 248
    const v4, 0x3ebd70a4    # 0.37f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method
