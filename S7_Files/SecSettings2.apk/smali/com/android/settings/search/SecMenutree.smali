.class public Lcom/android/settings/search/SecMenutree;
.super Ljava/lang/Object;
.source "SecMenutree.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private root:Lcom/android/settings/search/SecMenu;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "SecMenutree"

    iput-object v0, p0, Lcom/android/settings/search/SecMenutree;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/android/settings/search/SecMenu;

    const-string/jumbo v2, "Settings"

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    .line 22
    iget-object v0, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/search/SecMenu;->path:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 77
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    invoke-virtual {v0}, Lcom/android/settings/search/SecMenu;->clear()V

    goto :goto_0

    .line 79
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 80
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iput-object v3, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    .line 74
    .end local v1    # "menu$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "menu$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SecMenu;

    .line 87
    .local v0, "menu":Lcom/android/settings/search/SecMenu;
    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/search/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    :cond_1
    iget-object v2, v0, Lcom/android/settings/search/SecMenu;->key:Ljava/lang/String;

    return-object v2

    .line 92
    .end local v0    # "menu":Lcom/android/settings/search/SecMenu;
    .end local v1    # "menu$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method public initMainMenues(Landroid/content/Context;Ljava/util/List;)V
    .locals 16
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "category$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 29
    .local v8, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    if-ge v11, v2, :cond_0

    .line 30
    invoke-virtual {v8, v11}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v15

    .line 31
    .local v15, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "name":Ljava/lang/String;
    :goto_1
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.tileid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "key":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "com.android.settings.support"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 35
    .local v14, "support":Ljava/lang/String;
    iget-object v10, v15, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 36
    .local v10, "categoryId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 37
    .local v1, "menu":Lcom/android/settings/search/SecMenu;
    const-string/jumbo v2, "quick"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 31
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "categoryId":Ljava/lang/String;
    .end local v14    # "support":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, ""

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 40
    .restart local v1    # "menu":Lcom/android/settings/search/SecMenu;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v10    # "categoryId":Ljava/lang/String;
    .restart local v14    # "support":Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_3

    .line 41
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 43
    :cond_3
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 44
    new-instance v1, Lcom/android/settings/search/SecInnerMenu;

    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v7, v15, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    .line 50
    iput-object v10, v1, Lcom/android/settings/search/SecMenu;->categoryId:Ljava/lang/String;

    .line 51
    iget v2, v15, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    iput v2, v1, Lcom/android/settings/search/SecMenu;->iconResId:I

    .line 52
    const/4 v2, 0x4

    iput v2, v1, Lcom/android/settings/search/SecMenu;->menuType:I

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    invoke-virtual {v2, v1}, Lcom/android/settings/search/SecMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto :goto_2

    .line 45
    .restart local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_5
    iget-object v2, v15, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    .line 46
    new-instance v1, Lcom/android/settings/search/SecLinkedMenu;

    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v7, v15, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .local v1, "menu":Lcom/android/settings/search/SecMenu;
    goto :goto_3

    .line 55
    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_6
    const-string/jumbo v2, "SecMenutree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tile don\'t have any link information: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 60
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v10    # "categoryId":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v14    # "support":Ljava/lang/String;
    .end local v15    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_8

    .line 61
    const-string/jumbo v2, "SecMenutree"

    const-string/jumbo v4, "root.subMenues is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 65
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    iget-object v2, v2, Lcom/android/settings/search/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "menu$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SecMenu;

    .line 66
    .restart local v1    # "menu":Lcom/android/settings/search/SecMenu;
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/settings/search/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_4

    .line 25
    .end local v1    # "menu":Lcom/android/settings/search/SecMenu;
    :cond_9
    return-void
.end method

.method public saveSearchItems(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "localeStr"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/search/SecMenutree;->root:Lcom/android/settings/search/SecMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/search/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 70
    return-void
.end method
