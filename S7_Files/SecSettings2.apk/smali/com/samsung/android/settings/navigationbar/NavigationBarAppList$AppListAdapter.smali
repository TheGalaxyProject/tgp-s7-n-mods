.class public Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavigationBarAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;
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
            "Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;

    .line 146
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 151
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f04016b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 153
    const v3, 0x7f110147

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, "appName":Landroid/widget/TextView;
    const v3, 0x7f110146

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    .local v0, "appIcon":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v3, v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_1
    return-object p2
.end method
