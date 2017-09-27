.class Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;
.super Landroid/os/AsyncTask;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTilesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/systemui/qs/QSTile",
        "<*>;>;",
        "Ljava/lang/Void;",
        "Ljava/util/Collection",
        "<",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileQueryHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;)V

    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$State;
    .locals 4
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/qs/QSTile$State;"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "tile$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSTile;

    .line 248
    .local v1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->newTileState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    .line 250
    .local v0, "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSTile$State;->copyTo(Lcom/android/systemui/qs/QSTile$State;)Z

    .line 251
    return-object v0

    .line 254
    .end local v0    # "state":Lcom/android/systemui/qs/QSTile$State;
    .end local v1    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p1, [Ljava/util/Collection;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->doInBackground([Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/Collection;)Ljava/util/Collection;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "params":[Ljava/util/Collection;, "[Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v14, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 212
    .local v11, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v5, 0x0

    .line 211
    invoke-virtual {v11, v0, v5, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v12

    .line 213
    .local v12, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 214
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 215
    .local v10, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v10, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v6, "componentName":Landroid/content/ComponentName;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 217
    .local v4, "appLabel":Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "spec":Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v13

    .line 219
    .local v13, "state":Lcom/android/systemui/qs/QSTile$State;
    if-eqz v13, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    const/4 v3, 0x0

    invoke-static {v0, v1, v4, v13, v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/qs/QSTile$State;Z)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v0, :cond_2

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v0, :cond_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0, v11, v7}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 232
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v0, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v3, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    if-eqz v2, :cond_0

    .line 238
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x106000b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 240
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0, v11}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 241
    .local v9, "label":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "null"

    goto :goto_1

    .line 243
    .end local v1    # "spec":Ljava/lang/String;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "appLabel":Ljava/lang/CharSequence;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "label":Ljava/lang/CharSequence;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v13    # "state":Lcom/android/systemui/qs/QSTile$State;
    :cond_4
    return-object v14
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->onPostExecute(Ljava/util/Collection;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$QueryTilesTask;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;)V

    .line 258
    return-void
.end method
