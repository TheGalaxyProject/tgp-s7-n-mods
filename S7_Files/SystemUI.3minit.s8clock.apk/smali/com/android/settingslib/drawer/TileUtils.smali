.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/TileUtils$1;,
        Lcom/android/settingslib/drawer/TileUtils$2;
    }
.end annotation


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSettingsPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    .line 468
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    .line 477
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$2;-><init>()V

    .line 476
    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "categoryKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 296
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 297
    .local v0, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 299
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 300
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 301
    const/4 v5, 0x0

    return-object v5

    .line 303
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolved$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 304
    .local v2, "resolved":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_1

    .line 308
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 309
    const-string/jumbo v5, "com.android.settings"

    .line 310
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 309
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    iget v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 309
    :goto_1
    iput v5, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    goto :goto_0

    :cond_2
    move v5, v6

    .line 310
    goto :goto_1

    .line 314
    .end local v2    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v0
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "cache":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 155
    .local v18, "startTime":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v16, 0x1

    .line 157
    .local v16, "setup":Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v7, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v23

    .line 160
    .local v23, "userManager":Landroid/os/UserManager;
    const-string/jumbo v2, "com.android.settings"

    sput-object v2, Lcom/android/settingslib/drawer/TileUtils;->defaultSettingsPackage:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v15

    .line 164
    .local v15, "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    const/4 v14, 0x0

    .line 165
    .local v14, "mKnoxCustomIsProKioskMode":Z
    if-eqz v15, :cond_0

    .line 166
    invoke-virtual {v15}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v14

    .line 169
    .end local v14    # "mKnoxCustomIsProKioskMode":Z
    :cond_0
    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "user$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 171
    .local v3, "user":Landroid/os/UserHandle;
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 173
    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 174
    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    .line 175
    const-string/jumbo v6, "com.android.settings.category.wireless"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 174
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 176
    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    .line 177
    const-string/jumbo v6, "com.android.settings.category.device"

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 176
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 179
    :cond_2
    if-eqz v16, :cond_1

    .line 180
    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V

    goto :goto_1

    .line 155
    .end local v3    # "user":Landroid/os/UserHandle;
    .end local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v15    # "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    .end local v16    # "setup":Z
    .end local v22    # "user$iterator":Ljava/util/Iterator;
    .end local v23    # "userManager":Landroid/os/UserManager;
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "setup":Z
    goto :goto_0

    .line 183
    .restart local v7    # "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    .restart local v15    # "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    .restart local v22    # "user$iterator":Ljava/util/Iterator;
    .restart local v23    # "userManager":Landroid/os/UserManager;
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v12, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "tile$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/drawer/Tile;

    .line 186
    .local v17, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 187
    .local v10, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    if-nez v10, :cond_7

    .line 188
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v10

    .line 189
    if-nez v10, :cond_6

    .line 190
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 193
    :cond_6
    iget-object v2, v10, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v12, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_7
    invoke-static/range {p0 .. p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 197
    .local v21, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v13

    .line 198
    .local v13, "isFactory":Z
    if-eqz v13, :cond_8

    .line 199
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_2

    .line 201
    :cond_8
    if-eqz v14, :cond_b

    .line 202
    invoke-static {}, Lcom/android/settingslib/drawer/TileUtils;->isGlobalView()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 203
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 204
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KNOXCUSTOM_KIOSK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 203
    if-eqz v2, :cond_5

    .line 205
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 209
    :cond_a
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 210
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KNOXCUSTOM_KIOSK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 209
    if-eqz v2, :cond_5

    .line 211
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 209
    if-eqz v2, :cond_5

    .line 212
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 217
    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isContainerOnlyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 218
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 219
    :cond_c
    invoke-static {}, Lcom/android/settingslib/drawer/TileUtils;->isGlobalView()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 220
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 221
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 222
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 221
    if-nez v2, :cond_d

    .line 223
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 220
    if-eqz v2, :cond_5

    .line 224
    :cond_d
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 225
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KIOSKCONTAINER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 220
    if-eqz v2, :cond_5

    .line 226
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 228
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 229
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 230
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 231
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 230
    if-nez v2, :cond_f

    .line 232
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "BETA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 229
    if-eqz v2, :cond_5

    .line 233
    :cond_f
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KIOSKCONTAINER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 229
    if-eqz v2, :cond_5

    .line 234
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 236
    :cond_10
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isGEDView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 237
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 238
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 239
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 238
    if-nez v2, :cond_11

    .line 240
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Quick"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_5

    .line 241
    :cond_11
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "KIOSKCONTAINER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_5

    .line 242
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 247
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 248
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 249
    :cond_13
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "UPSM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 250
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 253
    :cond_14
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 254
    :cond_15
    invoke-static {}, Lcom/android/settingslib/drawer/TileUtils;->isGlobalView()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 255
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 256
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 257
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 256
    if-nez v2, :cond_16

    .line 258
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 255
    if-eqz v2, :cond_5

    .line 260
    :cond_16
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 262
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 263
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 264
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "GLOBAL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 265
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 264
    if-nez v2, :cond_18

    .line 266
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "BETA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 263
    if-eqz v2, :cond_5

    .line 267
    :cond_18
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGraceUXForVZW add the tile: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 270
    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/drawer/TileUtils;->isGEDView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 272
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "VZW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 273
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Common"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 272
    if-nez v2, :cond_1a

    .line 274
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    const-string/jumbo v4, "Quick"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 271
    if-eqz v2, :cond_5

    .line 276
    :cond_1a
    const-string/jumbo v2, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isGEDView add the tile: title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 280
    :cond_1b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings.action.EXTRA_SETTINGS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 281
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto/16 :goto_2

    .line 285
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v13    # "isFactory":Z
    .end local v17    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v21    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1c
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    .local v9, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "category$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 287
    .restart local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    iget-object v2, v10, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    sget-object v4, Lcom/android/settingslib/drawer/TileUtils;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 289
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    :cond_1d
    sget-object v2, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    return-object v9
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "requireSettings"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/Tile;>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 322
    const-string/jumbo v0, "com.android.settings"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    :cond_0
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 324
    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V

    .line 319
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZ)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p4, "defaultCategory"    # Ljava/lang/String;
    .param p6, "usePriority"    # Z
    .param p7, "checkCategory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p3, "addedCache":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;Lcom/android/settingslib/drawer/Tile;>;"
    .local p5, "outTiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 333
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const/16 v11, 0x80

    .line 332
    invoke-virtual {v5, p2, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 334
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "resolved$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 335
    .local v6, "resolved":Landroid/content/pm/ResolveInfo;
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 337
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-boolean v10, v6, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v10, :cond_1

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v11, Lcom/android/settingslib/drawer/TileUtils;->defaultSettingsPackage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 341
    :cond_1
    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 342
    .local v4, "metaData":Landroid/os/Bundle;
    move-object/from16 v2, p4

    .line 343
    .local v2, "categoryKey":Ljava/lang/String;
    if-eqz p7, :cond_2

    if-eqz v4, :cond_5

    const-string/jumbo v10, "com.android.settings.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 350
    :cond_2
    const-string/jumbo v10, "com.android.settings.category"

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    new-instance v3, Landroid/util/Pair;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 353
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 352
    invoke-direct {v3, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 354
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/drawer/Tile;

    .line 355
    .local v9, "tile":Lcom/android/settingslib/drawer/Tile;
    if-nez v9, :cond_3

    .line 356
    new-instance v9, Lcom/android/settingslib/drawer/Tile;

    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-direct {v9}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 357
    .restart local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    .line 358
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 359
    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 358
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 360
    iput-object v2, v9, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 362
    iget v10, v6, Landroid/content/pm/ResolveInfo;->priority:I

    iput v10, v9, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 364
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v10, v9, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 365
    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v9, v1, v10, v5}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    .line 369
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_3
    iget-object v10, v9, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 372
    iget-object v10, v9, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_4
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 375
    move-object/from16 v0, p5

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 344
    .end local v3    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_5
    if-nez p4, :cond_2

    .line 345
    const-string/jumbo v11, "TileUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, " for intent "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 346
    const-string/jumbo v12, " missing metadata "

    .line 345
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 347
    if-nez v4, :cond_6

    const-string/jumbo v10, ""

    .line 345
    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 347
    :cond_6
    const-string/jumbo v10, "com.android.settings.category"

    goto :goto_1

    .line 330
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "categoryKey":Ljava/lang/String;
    .end local v4    # "metaData":Landroid/os/Bundle;
    .end local v6    # "resolved":Landroid/content/pm/ResolveInfo;
    :cond_7
    return-void
.end method

.method public static isContainerOnlyMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 517
    if-nez p0, :cond_0

    .line 518
    return v3

    .line 520
    :cond_0
    const-string/jumbo v1, "isKioskModeEnabled"

    invoke-static {p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 521
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    const/4 v1, 0x1

    return v1

    .line 524
    :cond_1
    return v3
.end method

.method private static isEnabledUltraPowerSaving(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 505
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 505
    if-nez v1, :cond_0

    .line 507
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 505
    if-eqz v1, :cond_2

    .line 508
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 509
    .local v0, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-nez v0, :cond_1

    return v3

    .line 510
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 512
    .end local v0    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_2
    return v3
.end method

.method private static isGEDView(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 491
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 492
    .local v0, "isHeroView":Z
    :goto_0
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 493
    const/4 v1, 0x1

    return v1

    .line 491
    .end local v0    # "isHeroView":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isHeroView":Z
    goto :goto_0

    .line 494
    :cond_1
    return v3
.end method

.method private static isGlobalView()Z
    .locals 2

    .prologue
    .line 485
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x1

    return v0

    .line 487
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportGraceUXForVZW(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    .line 499
    .local v0, "isGraceUXForVZW":Z
    :goto_0
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 500
    return v4

    .line 498
    .end local v0    # "isGraceUXForVZW":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isGraceUXForVZW":Z
    goto :goto_0

    .line 501
    :cond_1
    return v3
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v9, 0x0

    .line 393
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/android/settingslib/drawer/TileUtils;->defaultSettingsPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 394
    :cond_0
    const/4 v1, 0x0

    .line 395
    .local v1, "icon":I
    const/4 v6, 0x0

    .line 396
    .local v6, "title":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 397
    .local v4, "summary":Ljava/lang/String;
    const/4 v5, 0x0

    .line 402
    .local v5, "support":Ljava/lang/String;
    :try_start_0
    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 401
    invoke-virtual {p4, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 403
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 405
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 406
    const-string/jumbo v7, "com.android.settings.icon"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 407
    const-string/jumbo v7, "com.android.settings.icon"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 409
    :cond_1
    const-string/jumbo v7, "com.android.settings.title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 410
    const-string/jumbo v7, "com.android.settings.title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    .line 411
    const-string/jumbo v7, "com.android.settings.title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 416
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    const-string/jumbo v7, "com.android.settings.summary"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 417
    const-string/jumbo v7, "com.android.settings.summary"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_9

    .line 418
    const-string/jumbo v7, "com.android.settings.summary"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 423
    .end local v4    # "summary":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v7, "com.android.settings.support"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 424
    const-string/jumbo v7, "com.android.settings.support"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_a

    .line 425
    const-string/jumbo v7, "com.android.settings.support"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 431
    .end local v5    # "support":Ljava/lang/String;
    :cond_4
    :goto_2
    const-string/jumbo v7, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 432
    const-string/jumbo v7, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 443
    invoke-virtual {p2, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 445
    :cond_6
    if-nez v1, :cond_7

    .line 446
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 450
    :cond_7
    iput v1, p1, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    .line 454
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 455
    iput-object v6, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 456
    iput-object v4, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 457
    iput-object v5, p1, Lcom/android/settingslib/drawer/Tile;->support:Ljava/lang/String;

    .line 459
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 460
    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 459
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 462
    const/4 v7, 0x1

    return v7

    .line 413
    .restart local v2    # "metaData":Landroid/os/Bundle;
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "summary":Ljava/lang/String;
    .restart local v5    # "support":Ljava/lang/String;
    .restart local v6    # "title":Ljava/lang/CharSequence;
    :cond_8
    :try_start_1
    const-string/jumbo v7, "com.android.settings.title"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 420
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_9
    const-string/jumbo v7, "com.android.settings.summary"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "summary":Ljava/lang/String;
    goto :goto_1

    .line 427
    .end local v4    # "summary":Ljava/lang/String;
    :cond_a
    const-string/jumbo v7, "com.android.settings.support"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .local v5, "support":Ljava/lang/String;
    goto :goto_2

    .line 465
    .end local v1    # "icon":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v5    # "support":Ljava/lang/String;
    :cond_b
    return v9

    .line 436
    .restart local v1    # "icon":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_3
.end method
