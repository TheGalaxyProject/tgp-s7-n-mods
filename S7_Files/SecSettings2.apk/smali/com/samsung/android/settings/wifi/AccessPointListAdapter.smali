.class public Lcom/samsung/android/settings/wifi/AccessPointListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessPointListAdapter.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mBaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:J

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->DBG:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    .line 42
    const-string/jumbo v0, "layout_inflater"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method


# virtual methods
.method public append(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 4
    .param p1, "preference"    # Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setId(J)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 70
    .local v0, "pref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getId()J

    move-result-wide v2

    return-wide v2

    .line 74
    .end local v0    # "pref":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 85
    .local v0, "apPreference":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 88
    :cond_0
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .param p2, "index"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 115
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setId(J)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setId(J)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 109
    sget-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings.APListAdapter"

    const-string/jumbo v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 108
    return-void
.end method

.method public remove(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "header"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "indexes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 146
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    if-eqz p2, :cond_1

    .line 150
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 158
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 144
    :cond_2
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    return-void
.end method

.method public removeAt(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 130
    const-string/jumbo v2, "WifiSettings.APListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAt - index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 133
    .local v1, "pos":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    if-ne v1, p1, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 128
    :cond_1
    return-void

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAccessPointList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    if-nez p1, :cond_1

    .line 97
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    .line 95
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accessPoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    .line 101
    .local v0, "accessPoint":Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->append(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    goto :goto_0
.end method
