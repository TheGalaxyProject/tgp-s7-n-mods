.class Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;
.super Landroid/os/AsyncTask;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/drawer/SettingsDrawerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settingslib/drawer/DashboardCategory;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;-><init>(Lcom/android/settingslib/drawer/SettingsDrawerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 326
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 329
    const-string/jumbo v2, "settings_ui"

    const/4 v3, 0x0

    .line 328
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 329
    const/4 v2, 0x1

    .line 328
    if-ne v1, v2, :cond_1

    .line 329
    const-string/jumbo v0, "true"

    .line 330
    .local v0, "settingsUI":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get1()Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v2}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-set0(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get3()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/drawer/TileUtils;->getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 329
    .end local v0    # "settingsUI":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "false"

    .restart local v0    # "settingsUI":Ljava/lang/String;
    goto :goto_0

    .line 332
    :cond_2
    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get3()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "dashboardCategories"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, Ljava/util/List;

    .end local p1    # "dashboardCategories":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "dashboardCategories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 349
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 350
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 351
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 352
    .local v4, "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get2()Landroid/util/ArraySet;

    move-result-object v5

    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    iget-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    .end local v2    # "j":I
    .local v3, "j":I
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    .line 350
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 348
    .end local v4    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v2    # "j":I
    :cond_2
    invoke-static {p1}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-set1(Ljava/util/List;)Ljava/util/List;

    .line 358
    iget-object v5, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v5}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->onCategoriesChanged()V

    .line 347
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 341
    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get1()Lcom/android/settingslib/applications/InterestingConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->-get3()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/SettingsDrawerActivity$CategoriesUpdater;->this$0:Lcom/android/settingslib/drawer/SettingsDrawerActivity;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/SettingsDrawerActivity;->getDashboardCategories()Ljava/util/List;

    .line 340
    :cond_1
    return-void
.end method
