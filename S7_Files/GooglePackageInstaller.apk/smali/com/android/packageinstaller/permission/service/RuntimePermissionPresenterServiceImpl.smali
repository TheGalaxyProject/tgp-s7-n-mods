.class public final Lcom/android/packageinstaller/permission/service/RuntimePermissionPresenterServiceImpl;
.super Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.source "RuntimePermissionPresenterServiceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/permission/service/RuntimePermissionPresenterServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    const/16 v4, 0x1000

    .line 43
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v11, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    new-instance v0, Lcom/android/packageinstaller/permission/model/AppPermissions;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 53
    .local v0, "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    invoke-virtual {v0}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "group$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 54
    .local v8, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    invoke-static {v8, p1}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->areRuntimePermissionsGranted()Z

    move-result v7

    .line 56
    .local v7, "granted":Z
    const-string/jumbo v1, "android"

    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getDeclaringPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 58
    .local v12, "standard":Z
    new-instance v10, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;

    invoke-virtual {v8}, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v10, v1, v7, v12}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;-><init>(Ljava/lang/CharSequence;ZZ)V

    .line 60
    .local v10, "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0    # "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "granted":Z
    .end local v8    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    .end local v9    # "group$iterator":Ljava/util/Iterator;
    .end local v10    # "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    .end local v11    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    .end local v12    # "standard":Z
    :catch_0
    move-exception v6

    .line 46
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "PermissionPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error getting package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    return-object v3

    .line 64
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "group$iterator":Ljava/util/Iterator;
    .restart local v11    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    :cond_1
    return-object v11
.end method

.method public onGetAppsUsingPermissions(Z)Ljava/util/List;
    .locals 18
    .param p1, "system"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static/range {p0 .. p0}, Lcom/android/packageinstaller/permission/utils/Utils;->getAllInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 70
    .local v8, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 73
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v10, "appsResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/packageinstaller/permission/utils/Utils;->getLauncherPackages(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object v15

    .line 75
    .local v15, "launcherPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 76
    .local v9, "appInfosSize":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v9, :cond_5

    .line 77
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 78
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 81
    .local v16, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/packageinstaller/permission/service/RuntimePermissionPresenterServiceImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    const/16 v4, 0x1000

    .line 81
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 88
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lcom/android/packageinstaller/permission/model/AppPermissions;

    .line 89
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    .line 88
    invoke-direct/range {v1 .. v6}, Lcom/android/packageinstaller/permission/model/AppPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;[Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 90
    .local v1, "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    const/16 v17, 0x0

    .line 93
    .local v17, "shouldShow":Z
    invoke-virtual {v1}, Lcom/android/packageinstaller/permission/model/AppPermissions;->getPermissionGroups()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "group$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/packageinstaller/permission/model/AppPermissionGroup;

    .line 94
    .local v12, "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/android/packageinstaller/permission/utils/Utils;->shouldShowPermission(Lcom/android/packageinstaller/permission/model/AppPermissionGroup;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const/16 v17, 0x1

    .line 99
    .end local v12    # "group":Lcom/android/packageinstaller/permission/model/AppPermissionGroup;
    :cond_3
    if-eqz v17, :cond_4

    .line 100
    invoke-static {v1, v15}, Lcom/android/packageinstaller/permission/utils/Utils;->isSystem(Lcom/android/packageinstaller/permission/model/AppPermissions;Landroid/util/ArraySet;)Z

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_4

    .line 101
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v1    # "appPermissions":Lcom/android/packageinstaller/permission/model/AppPermissions;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "group$iterator":Ljava/util/Iterator;
    .end local v17    # "shouldShow":Z
    :cond_4
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 83
    :catch_0
    move-exception v11

    .line 84
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "PermissionPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error getting package info for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 105
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_5
    return-object v10
.end method
