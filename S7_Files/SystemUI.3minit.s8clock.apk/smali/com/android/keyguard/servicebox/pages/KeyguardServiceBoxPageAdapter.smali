.class public Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "KeyguardServiceBoxPageAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mPageCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "controller"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;",
            ">;",
            "Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    .line 43
    iput-object p3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 97
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7
    .param p1, "pageView"    # Ljava/lang/Object;

    .prologue
    const/4 v6, -0x2

    .line 193
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 194
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 196
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "iIdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 197
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    .line 198
    .local v1, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v5

    .line 199
    return v0

    .line 196
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    :cond_2
    monitor-exit v5

    .line 202
    return v6

    .end local v0    # "iIdx":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    monitor-exit v5

    .line 205
    return v6

    .line 193
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 53
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;

    .line 54
    .local v0, "item":Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;
    const/4 v1, 0x0

    .line 55
    .local v1, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    check-cast v1, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 64
    .local v1, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :goto_0
    if-nez v1, :cond_1

    .line 65
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "page view is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    .local v1, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v3

    invoke-virtual {v0, v2, v5, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZZ)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v1

    .line 59
    .local v1, "pageView":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 68
    :cond_1
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v1, v5}, Lcom/android/internal/widget/ViewPager;->addView(Landroid/view/View;I)V

    .line 70
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshViews()V
    .locals 6

    .prologue
    .line 116
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 117
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 118
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 120
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->refreshViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 115
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parcelable"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 84
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCoverState(Z)V
    .locals 6
    .param p1, "isCovered"    # Z

    .prologue
    .line 128
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 129
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 130
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 132
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setCoverState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 127
    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 6
    .param p1, "isConnected"    # Z

    .prologue
    .line 164
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 166
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 168
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 164
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 163
    return-void
.end method

.method public setPageType(I)V
    .locals 6
    .param p1, "pageType"    # I

    .prologue
    .line 152
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 154
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 156
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 157
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 151
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    return-void
.end method

.method public updateCMAS(Z)V
    .locals 6
    .param p1, "hasCmasNotification"    # Z

    .prologue
    .line 140
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 141
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 142
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 144
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 145
    invoke-virtual {v3, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->updateCMAS(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 139
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 6

    .prologue
    .line 176
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 177
    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 178
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->mPageCacheMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 180
    .local v3, "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    if-eqz v3, :cond_0

    .line 181
    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->updateChildViewsLook()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "page":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v5

    .line 175
    return-void
.end method
