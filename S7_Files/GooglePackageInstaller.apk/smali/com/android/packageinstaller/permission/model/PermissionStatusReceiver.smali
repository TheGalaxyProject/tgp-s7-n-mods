.class public Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PermissionStatusReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private toPrimitiveBoolArray(Ljava/util/List;)[Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 289
    .local v0, "count":I
    new-array v2, v0, [Z

    .line 290
    .local v2, "result":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 291
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getAppsWithPermissionsCount(Landroid/content/Context;[I)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "counts"    # [I

    .prologue
    .line 262
    invoke-static {p1}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v6

    .line 264
    .local v6, "launcherPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 265
    .local v3, "grantedApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 266
    .local v0, "allApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v9, Lcom/android/packageinstaller/permission/utils/Utils;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v4, v9, v8

    .line 267
    .local v4, "group":Ljava/lang/String;
    new-instance v7, Lcom/android/packageinstaller/permission/model/PermissionApps;

    .line 268
    const/4 v11, 0x0

    .line 267
    invoke-direct {v7, p1, v4, v11}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    .line 269
    .local v7, "permissionApps":Lcom/android/packageinstaller/permission/model/PermissionApps;
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/PermissionApps;->loadNowWithoutUi()V

    .line 270
    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApps()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    .line 271
    .local v1, "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "key":Ljava/lang/String;
    invoke-static {v1, v6}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 277
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 266
    .end local v1    # "app":Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 282
    .end local v2    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "group":Ljava/lang/String;
    .end local v7    # "permissionApps":Lcom/android/packageinstaller/permission/model/PermissionApps;
    :cond_3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    aput v8, p2, v9

    .line 283
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x1

    aput v8, p2, v9

    .line 284
    const/4 v8, 0x1

    return v8
.end method

.method public getAppsWithRuntimePermissions(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "appsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "appLabelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p4, "isSystemAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/permission/utils/Utils;->getAllInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 228
    .local v7, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v7, :cond_0

    .line 229
    const/4 v2, 0x0

    return v2

    .line 231
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 233
    .local v8, "appInfosSize":I
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v13

    .line 234
    .local v13, "launcherPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v8, :cond_4

    .line 235
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 236
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 237
    const/16 v4, 0x1000

    .line 236
    invoke-virtual {v2, v14, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 239
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/android/packageinstaller/permission/model/AppPermissions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 241
    .local v1, "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    const/4 v15, 0x0

    .line 242
    .local v15, "shouldShow":Z
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "group$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 243
    .local v10, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-static {v10, v14}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    const/4 v15, 0x1

    .line 248
    .end local v10    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_2
    if-eqz v15, :cond_3

    .line 249
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {v1, v13}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/AppPermissions;Landroid/util/ArraySet;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "group$iterator":Ljava/util/Iterator;
    .end local v12    # "i":I
    .end local v13    # "launcherPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "shouldShow":Z
    :catch_0
    move-exception v9

    .line 255
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2

    .line 258
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "i":I
    .restart local v13    # "launcherPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public getPermissionsCount(Landroid/content/Context;Ljava/lang/String;[ILjava/util/ArrayList;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "counts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p4, "grantedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x1000

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 189
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/android/packageinstaller/permission/model/AppPermissions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 190
    .local v1, "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    const/4 v10, 0x0

    .line 191
    .local v10, "grantedCount":I
    const/4 v13, 0x0

    .line 192
    .local v13, "totalCount":I
    const/4 v7, 0x0

    .line 194
    .local v7, "additionalCount":I
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "group$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 195
    .local v11, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    add-int/lit8 v13, v13, 0x1

    .line 197
    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    add-int/lit8 v10, v10, 0x1

    .line 200
    const-string/jumbo v2, "android"

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v1    # "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "additionalCount":I
    .end local v10    # "grantedCount":I
    .end local v11    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v12    # "group$iterator":Ljava/util/Iterator;
    .end local v13    # "totalCount":I
    :catch_0
    move-exception v9

    .line 221
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2

    .line 203
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "additionalCount":I
    .restart local v10    # "grantedCount":I
    .restart local v11    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .restart local v12    # "group$iterator":Ljava/util/Iterator;
    .restart local v13    # "totalCount":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 210
    .end local v11    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 211
    .local v8, "coll":Ljava/text/Collator;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/text/Collator;->setStrength(I)V

    .line 212
    move-object/from16 v0, p4

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    const/4 v2, 0x0

    aput v10, p3, v2

    .line 216
    const/4 v2, 0x1

    aput v13, p3, v2

    .line 217
    const/4 v2, 0x2

    aput v7, p3, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    const/4 v2, 0x1

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v11, 0x10000000

    .line 137
    const-string/jumbo v9, "android.intent.action.GET_PERMISSIONS_COUNT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    new-instance v7, Landroid/content/Intent;

    .line 139
    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_RESONSE_INTENT"

    .line 138
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v7, "responseIntent":Landroid/content/Intent;
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    const/4 v9, 0x3

    new-array v2, v9, [I

    .line 143
    .local v2, "counts":[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, "grantedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v8, 0x0

    .line 146
    .local v8, "succeeded":Z
    const-string/jumbo v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    .line 148
    .local v4, "isForPackage":Z
    if-eqz v4, :cond_2

    .line 149
    const-string/jumbo v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v6, v2, v3}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->getPermissionsCount(Landroid/content/Context;Ljava/lang/String;[ILjava/util/ArrayList;)Z

    move-result v8

    .line 154
    .end local v6    # "pkg":Ljava/lang/String;
    .local v8, "succeeded":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 155
    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_COUNT_RESULT"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 157
    if-eqz v4, :cond_0

    .line 158
    const-string/jumbo v10, "android.intent.extra.GET_PERMISSIONS_GROUP_LIST_RESULT"

    .line 159
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 162
    :cond_0
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    .end local v2    # "counts":[I
    .end local v3    # "grantedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "isForPackage":Z
    .end local v7    # "responseIntent":Landroid/content/Intent;
    .end local v8    # "succeeded":Z
    :cond_1
    :goto_1
    return-void

    .line 152
    .restart local v2    # "counts":[I
    .restart local v3    # "grantedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v4    # "isForPackage":Z
    .restart local v7    # "responseIntent":Landroid/content/Intent;
    .local v8, "succeeded":Z
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->getAppsWithPermissionsCount(Landroid/content/Context;[I)Z

    move-result v8

    .local v8, "succeeded":Z
    goto :goto_0

    .line 163
    .end local v2    # "counts":[I
    .end local v3    # "grantedGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "isForPackage":Z
    .end local v7    # "responseIntent":Landroid/content/Intent;
    .end local v8    # "succeeded":Z
    :cond_3
    const-string/jumbo v9, "android.intent.action.GET_PERMISSIONS_PACKAGES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    new-instance v7, Landroid/content/Intent;

    .line 165
    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_PACKAGES_RESONSE_INTENT"

    .line 164
    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v7    # "responseIntent":Landroid/content/Intent;
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v1, "appsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "appLabelsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v5, "isSystemAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1, v1, v0, v5}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->getAppsWithRuntimePermissions(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 172
    const-string/jumbo v10, "android.intent.extra.GET_PERMISSIONS_APP_LIST_RESULT"

    .line 173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 172
    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v10, "android.intent.extra.GET_PERMISSIONS_APP_LABEL_LIST_RESULT"

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 174
    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_IS_SYSTEM_APP_LIST_RESULT"

    .line 177
    invoke-direct {p0, v5}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->toPrimitiveBoolArray(Ljava/util/List;)[Z

    move-result-object v10

    .line 176
    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 179
    :cond_4
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
