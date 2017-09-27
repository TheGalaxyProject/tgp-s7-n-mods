.class public Lcom/samsung/android/settings/location/LocationUseInBackground;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LocationUseInBackground.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
    }
.end annotation


# instance fields
.field private final OPTION_MENU_NOTIFICATION:I

.field private TAG:Ljava/lang/String;

.field private mAppListPreference:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOFF:Landroid/view/View;

.field private mON:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 56
    const-class v0, Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->OPTION_MENU_NOTIFICATION:I

    .line 71
    return-void
.end method

.method private getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 364
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 369
    .local v2, "permissionInfo":Landroid/content/pm/PermissionInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    return-object v3

    .line 372
    .end local v2    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_1
    move-exception v1

    .line 375
    .local v1, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    return-object v4
.end method

.method private getLocationPermissionPackage()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 245
    .local v24, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v11, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;>;"
    const-string/jumbo v3, "android.permission-group.LOCATION"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getGroupPermissionInfos(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v16

    .line 248
    .local v16, "groupPermInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-nez v16, :cond_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->finish()V

    .line 252
    :cond_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v23, "launcherPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v27, Landroid/content/Intent;

    const-string/jumbo v28, "android.intent.action.MAIN"

    const/16 v29, 0x0

    invoke-direct/range {v27 .. v29}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v28, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 254
    .local v18, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v18

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    .end local v18    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    const-string/jumbo v10, ""

    .line 258
    .local v10, "appAlreadySeen":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "isEnable":Z
    const/16 v20, 0x0

    .line 259
    .local v20, "isLPermission":Z
    const-string/jumbo v6, ""

    .line 261
    .local v6, "appName":Ljava/lang/CharSequence;
    const/16 v3, 0x1000

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v14

    .line 263
    .local v14, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_12

    .line 264
    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 265
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 263
    :cond_2
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 269
    :cond_3
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    .line 270
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 269
    :cond_4
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 274
    :cond_5
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v25, v3, v21

    .line 275
    .local v25, "requestedPerm":Ljava/lang/String;
    const/16 v26, 0x0

    .line 277
    .local v26, "requestedPermInfo":Landroid/content/pm/PermissionInfo;
    const/16 v20, 0x0

    .line 278
    const/16 v22, 0x0

    .local v22, "k":I
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 279
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 280
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "requestedPermInfo":Landroid/content/pm/PermissionInfo;
    check-cast v26, Landroid/content/pm/PermissionInfo;

    .line 281
    .local v26, "requestedPermInfo":Landroid/content/pm/PermissionInfo;
    const/16 v20, 0x1

    .line 286
    .end local v26    # "requestedPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_6
    if-eqz v20, :cond_4

    .line 290
    const-string/jumbo v3, "android.permission-group.LOCATION"

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-static {v5, v3, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 294
    invoke-static {v5}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystem(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 300
    :cond_7
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isLocationProvider(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 304
    invoke-static {v5}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 309
    :try_start_0
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 312
    .local v4, "mAppInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v26

    iget v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v3, v0, :cond_4

    .line 316
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v27, 0x2710

    move/from16 v0, v27

    if-lt v3, v0, :cond_4

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v27, 0x4e1f

    move/from16 v0, v27

    if-gt v3, v0, :cond_4

    .line 320
    const/4 v8, 0x0

    .line 321
    .local v8, "granted":Z
    const/4 v12, 0x0

    .line 322
    .local v12, "appOp":Ljava/lang/String;
    const/4 v13, 0x0

    .line 324
    .local v13, "appOpAllowed":Z
    iget v3, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v27, 0x16

    move/from16 v0, v27

    if-le v3, v0, :cond_c

    const/4 v9, 0x1

    .line 326
    .local v9, "appSurpportsRuntimePermissions":Z
    :goto_6
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v21

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_d

    const/4 v8, 0x1

    .line 327
    :goto_7
    if-nez v9, :cond_9

    .line 328
    const-string/jumbo v3, "android"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 329
    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 331
    .local v12, "appOp":Ljava/lang/String;
    :goto_8
    if-eqz v12, :cond_10

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    const-class v27, Landroid/app/AppOpsManager;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 333
    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    .line 334
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 332
    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v3, v12, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    const/4 v13, 0x1

    .line 335
    :goto_9
    if-eqz v8, :cond_11

    if-eqz v12, :cond_8

    if-eqz v13, :cond_11

    .line 336
    :cond_8
    const/4 v8, 0x1

    .line 342
    .end local v12    # "appOp":Ljava/lang/String;
    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[package name ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "] [Granted = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 345
    new-instance v2, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Ljava/lang/CharSequence;ZZZ)V

    .line 348
    .local v2, "tempItem":Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v10, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 278
    .end local v2    # "tempItem":Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;
    .end local v4    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "granted":Z
    .end local v9    # "appSurpportsRuntimePermissions":Z
    .end local v13    # "appOpAllowed":Z
    .local v26, "requestedPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 295
    .end local v26    # "requestedPermInfo":Landroid/content/pm/PermissionInfo;
    :cond_b
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    goto/16 :goto_4

    .line 324
    .restart local v4    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "granted":Z
    .local v12, "appOp":Ljava/lang/String;
    .restart local v13    # "appOpAllowed":Z
    :cond_c
    const/4 v9, 0x0

    .restart local v9    # "appSurpportsRuntimePermissions":Z
    goto/16 :goto_6

    .line 326
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 329
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 332
    .local v12, "appOp":Ljava/lang/String;
    :cond_f
    const/4 v13, 0x0

    goto :goto_9

    .line 331
    :cond_10
    const/4 v13, 0x0

    goto :goto_9

    .line 338
    :cond_11
    const/4 v8, 0x0

    goto :goto_a

    .line 357
    .end local v4    # "mAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "granted":Z
    .end local v9    # "appSurpportsRuntimePermissions":Z
    .end local v12    # "appOp":Ljava/lang/String;
    .end local v13    # "appOpAllowed":Z
    .end local v21    # "j":I
    .end local v22    # "k":I
    .end local v25    # "requestedPerm":Ljava/lang/String;
    :cond_12
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 358
    return-object v11

    .line 353
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v21    # "j":I
    .restart local v22    # "k":I
    .restart local v25    # "requestedPerm":Ljava/lang/String;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_4
.end method

.method public static isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 395
    const-string/jumbo v0, "android.permission-group.LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isNetworkLocationProvider(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocationProvider(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 408
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 409
    const-string/jumbo v2, "com.android.location.fused"

    aput-object v2, v0, v3

    const-string/jumbo v2, "com.baidu.map.location"

    aput-object v2, v0, v6

    const-string/jumbo v2, "com.amap.android.location"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 412
    .local v0, "locationProvider":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 413
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 414
    return v6

    .line 412
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "provider":Ljava/lang/String;
    :cond_1
    return v3
.end method

.method private static isNetworkLocationProvider(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string/jumbo v2, "location"

    .line 398
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    .line 401
    .local v1, "locationService":Landroid/location/ILocationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/location/ILocationManager;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    return v2
.end method

.method private static isSystem(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 379
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 380
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSystemFixed(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 384
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setLocationListUp()V
    .locals 17

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ltz v15, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v15}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 182
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getLocationPermissionPackage()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    .line 184
    const-string/jumbo v15, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/LocationManager;

    .line 185
    .local v10, "locationManager":Landroid/location/LocationManager;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v9, "locBlacklist":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Landroid/location/LocationManager;->getLocBlacklist()Ljava/util/HashMap;

    move-result-object v9

    .line 187
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0123

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "entries":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v3, v15, :cond_8

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iget-object v15, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    iget v13, v15, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 193
    .local v13, "pkgVersionCode":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-boolean v11, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mGranted:Z

    .line 195
    .local v11, "permissionGranted":Z
    new-instance v1, Lcom/samsung/android/settings/location/LocationDropDownPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;-><init>(Landroid/content/Context;)V

    .line 196
    .local v1, "appPreference":Lcom/samsung/android/settings/location/LocationDropDownPreference;
    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->clearItems()V

    .line 198
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->addItems([Ljava/lang/String;)V

    .line 199
    invoke-virtual {v1, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageName(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, v11}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setGrantedState(Z)V

    .line 201
    if-eqz v9, :cond_7

    .line 202
    if-eqz v11, :cond_6

    .line 203
    const/4 v6, 0x0

    .line 204
    .local v6, "isBlackListApp":Z
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "key$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 205
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 206
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 207
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    .line 208
    const/4 v6, 0x1

    .line 217
    .end local v7    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v6, :cond_3

    .line 218
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    .line 227
    .end local v6    # "isBlackListApp":Z
    .end local v8    # "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-virtual {v1, v12}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setKey(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppName:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPersistent(Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-boolean v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppSurpportsRuntimePermissions:Z

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIsRuntimePermission(Z)V

    .line 231
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mPackageinfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setPackageInfo(Landroid/content/pm/PackageInfo;)V

    .line 233
    new-instance v5, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v5, v15}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 234
    .local v5, "iconResizer":Lcom/samsung/android/settings/IconResizer;
    const v15, 0x7f0a001a

    invoke-virtual {v5, v15}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 236
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;

    iget-object v15, v15, Lcom/samsung/android/settings/location/LocationUseInBackground$ListItem;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v15, v14}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 237
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 239
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "iconResizer":Lcom/samsung/android/settings/IconResizer;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 209
    .restart local v6    # "isBlackListApp":Z
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "key$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 210
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ge v13, v15, :cond_2

    .line 211
    const/4 v6, 0x1

    .line 212
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto/16 :goto_1

    .line 220
    .end local v6    # "isBlackListApp":Z
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "key$iterator":Ljava/util/Iterator;
    :cond_6
    if-nez v11, :cond_3

    .line 221
    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto/16 :goto_2

    .line 224
    :cond_7
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/samsung/android/settings/location/LocationDropDownPreference;->setSelectedItem(IZ)V

    goto/16 :goto_2

    .line 178
    .end local v1    # "appPreference":Lcom/samsung/android/settings/location/LocationDropDownPreference;
    .end local v11    # "permissionGranted":Z
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "pkgVersionCode":I
    :cond_8
    return-void
.end method

.method public static shouldShowPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "appPackageInfo"    # Landroid/content/pm/PackageInfo;
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 389
    invoke-static {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isSystemFixed(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/location/LocationUseInBackground;->isLocationGroupAndProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 390
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 113
    .local v11, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a0466

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 114
    const v3, 0x7f0a045c

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 113
    add-int/2addr v1, v3

    .line 115
    const v3, 0x7f0a001a

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 113
    add-int v4, v1, v3

    .line 116
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 119
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void

    .line 117
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "saveInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mContext:Landroid/content/Context;

    .line 81
    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->addPreferencesFromResource(I)V

    .line 82
    const-string/jumbo v0, "location_use_in_background_app_list_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mAppListPreference:Landroid/preference/PreferenceCategory;

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 174
    const/4 v0, 0x1

    const v1, 0x7f0b07eb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 175
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 173
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 125
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 169
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 127
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 128
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040166

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v4, 0x7f110454

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    .line 131
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    const v4, 0x7f110455

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "background_location_noti_enable"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "checkedValue":I
    if-ne v1, v5, :cond_1

    .line 135
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 136
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 141
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$1;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    new-instance v4, Lcom/samsung/android/settings/location/LocationUseInBackground$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$2;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 158
    const v3, 0x7f0b07ec

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance v3, Lcom/samsung/android/settings/location/LocationUseInBackground$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/location/LocationUseInBackground$3;-><init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    .line 166
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 167
    return v5

    .line 137
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_1
    if-nez v1, :cond_0

    .line 138
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mON:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 139
    iget-object v3, p0, Lcom/samsung/android/settings/location/LocationUseInBackground;->mOFF:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->setLocationListUp()V

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "isFromNotification":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 95
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 96
    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 99
    .end local v1    # "isFromNotification":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 101
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v2, "notiClearIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.samsung.intent.action.NSFLP_CLEAR_NOTI"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 88
    .end local v2    # "notiClearIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
