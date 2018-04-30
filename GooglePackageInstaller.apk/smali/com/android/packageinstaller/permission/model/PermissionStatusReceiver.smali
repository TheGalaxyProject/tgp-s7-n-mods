.class public Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PermissionStatusReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public getAppsWithPermissionsCount(Landroid/content/Context;[I)Z
    .locals 12

    invoke-static {p1}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v6

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sget-object v9, Lcom/android/packageinstaller/permission/utils/Utils;->MODERN_PERMISSION_GROUPS:[Ljava/lang/String;

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_3

    aget-object v4, v9, v8

    new-instance v7, Lcom/android/packageinstaller/permission/model/PermissionApps;

    const/4 v11, 0x0

    invoke-direct {v7, p1, v4, v11}, Lcom/android/packageinstaller/permission/model/PermissionApps;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/packageinstaller/permission/model/PermissionApps$Callback;)V

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/PermissionApps;->loadNowWithoutUi()V

    invoke-virtual {v7}, Lcom/android/packageinstaller/permission/model/PermissionApps;->getApps()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v6}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;Landroid/util/ArraySet;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/PermissionApps$PermissionApp;->areRuntimePermissionsGranted()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x0

    aput v8, p2, v9

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const/4 v9, 0x1

    aput v8, p2, v9

    const/4 v8, 0x1

    return v8
.end method

.method public getAppsWithRuntimePermissions(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 16
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

    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/permission/utils/Utils;->getAllInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v13

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_4

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v14, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x1000

    invoke-virtual {v2, v14, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v1, Lcom/android/packageinstaller/permission/model/AppPermissions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    const/4 v15, 0x0

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    invoke-static {v10, v14}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v15, 0x1

    :cond_2
    if-eqz v15, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v13}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/AppPermissions;Landroid/util/ArraySet;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v2, 0x0

    return v2

    :cond_4
    const/4 v2, 0x1

    return v2
.end method

.method public getPermissionsCount(Landroid/content/Context;Ljava/lang/String;[ILjava/util/ArrayList;)Z
    .locals 14
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

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v4, 0x1000

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v1, Lcom/android/packageinstaller/permission/model/AppPermissions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v10, v10, 0x1

    const-string/jumbo v2, "android"

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v11}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v2, 0x0

    return v2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/text/Collator;->setStrength(I)V

    move-object/from16 v0, p4

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    aput v10, p3, v2

    const/4 v2, 0x1

    aput v13, p3, v2

    const/4 v2, 0x2

    aput v7, p3, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/high16 v11, 0x10000000

    const-string/jumbo v9, "android.intent.action.GET_PERMISSIONS_COUNT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_RESONSE_INTENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v9, 0x3

    new-array v2, v9, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const-string/jumbo v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v9, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v2, v3}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->getPermissionsCount(Landroid/content/Context;Ljava/lang/String;[ILjava/util/ArrayList;)Z

    move-result v8

    :goto_0
    if-eqz v8, :cond_0

    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_COUNT_RESULT"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    if-eqz v4, :cond_0

    const-string/jumbo v10, "android.intent.extra.GET_PERMISSIONS_GROUP_LIST_RESULT"

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->getAppsWithPermissionsCount(Landroid/content/Context;[I)Z

    move-result v8

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "android.intent.action.GET_PERMISSIONS_PACKAGES"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_PACKAGES_RESONSE_INTENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v1, v0, v5}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->getAppsWithRuntimePermissions(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v10, "android.intent.extra.GET_PERMISSIONS_APP_LIST_RESULT"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.extra.GET_PERMISSIONS_APP_LABEL_LIST_RESULT"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.extra.GET_PERMISSIONS_IS_SYSTEM_APP_LIST_RESULT"

    invoke-direct {p0, v5}, Lcom/android/packageinstaller/permission/model/PermissionStatusReceiver;->toPrimitiveBoolArray(Ljava/util/List;)[Z

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
