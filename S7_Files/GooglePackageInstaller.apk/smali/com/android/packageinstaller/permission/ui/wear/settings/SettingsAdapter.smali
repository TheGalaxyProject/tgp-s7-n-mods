.class public Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;
.super Landroid/support/wearable/view/WearableListView$Adapter;
.source "SettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;,
        Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;,
        Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/wearable/view/WearableListView$Adapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultCircleRadiusPercent:F

.field private final mItemLayoutId:I

.field private final mSelectedCircleRadiusPercent:F

.field protected mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;)F
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mDefaultCircleRadiusPercent:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mItemLayoutId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;)F
    .locals 1

    iget v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSelectedCircleRadiusPercent:F

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutId"    # I

    .prologue
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Landroid/support/wearable/view/WearableListView$Adapter;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    .line 93
    iput p2, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mItemLayoutId:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    const v1, 0x7f0c0043

    .line 94
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mDefaultCircleRadiusPercent:F

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    const v1, 0x7f0c0044

    .line 96
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSelectedCircleRadiusPercent:F

    .line 91
    return-void
.end method


# virtual methods
.method public addSetting(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    .local p1, "setting":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting<TT;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->notifyItemInserted(I)V

    .line 149
    return-void
.end method

.method public get(I)Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    check-cast p1, Landroid/support/wearable/view/WearableListView$ViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->onBindViewHolder(Landroid/support/wearable/view/WearableListView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/wearable/view/WearableListView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/wearable/view/WearableListView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    .line 108
    .local v0, "setting":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting<TT;>;"
    iget v1, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->iconResource:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move-object v1, p1

    .line 109
    check-cast v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;

    iget-object v1, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;->imageView:Landroid/support/wearable/view/CircledImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/wearable/view/CircledImageView;->setVisibility(I)V

    .line 115
    :goto_0
    const-string/jumbo v1, "SettingsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBindViewHolder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->nameResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->name:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    iget v1, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->nameResourceId:I

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->nameResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->name:Ljava/lang/CharSequence;

    .line 120
    :cond_0
    check-cast p1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;

    .end local p1    # "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    iget-object v1, p1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->name:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .restart local p1    # "holder":Landroid/support/wearable/view/WearableListView$ViewHolder;
    :cond_1
    move-object v1, p1

    .line 111
    check-cast v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;

    iget-object v1, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;->imageView:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v1, v3}, Landroid/support/wearable/view/CircledImageView;->setVisibility(I)V

    move-object v1, p1

    .line 112
    check-cast v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;

    iget-object v2, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;->imageView:Landroid/support/wearable/view/CircledImageView;

    .line 113
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    iget v1, v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->iconResource:I

    .line 112
    invoke-virtual {v2, v1}, Landroid/support/wearable/view/CircledImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 101
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/wearable/view/WearableListView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/wearable/view/WearableListView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 102
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    new-instance v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;

    new-instance v1, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItem;-><init>(Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$SettingsItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public updateSetting(ILjava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "iconResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "ITT;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter<TT;>;"
    .local p4, "intent":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;

    .line 200
    .local v0, "setting":Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;, "Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting<TT;>;"
    iput p3, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->iconResource:I

    .line 201
    iput-object p2, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->name:Ljava/lang/CharSequence;

    .line 202
    iput-object p4, v0, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter$Setting;->data:Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/permission/ui/wear/settings/SettingsAdapter;->notifyItemChanged(I)V

    .line 198
    return-void
.end method
